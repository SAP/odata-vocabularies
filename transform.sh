#! /bin/bash

# This script tranforms all *.xml files in the vocabularies folder into *.md and .json files
#
# Prerequisites
# - Java           sudo apt-get install default-jre
# - Git            sudo apt-get install git
# - Xalan 2.7.1    sudo apt-get install libxalan2-java
# - json_reformat  sudo apt-get install yajl-tools

process() {
  local name=$( basename $1 '.xml')
  local gen_file_basename="$THIS_DIR/${name}"
  local voc_file="${gen_file_basename}.xml"

  # generate markdown
  java  org.apache.xalan.xslt.Process -XSL "$TOOLS_PATH/Vocab-to-MarkDown.xsl" \
    -PARAM use-alias-as-filename YES \
    -PARAM odata-vocabularies-url https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/ \
    -L -IN $voc_file -OUT ${gen_file_basename}.md
  git --no-pager diff --color-words="[^[:space:]]|^(#L[0-9]+)" ${gen_file_basename}.md

  # generate json
  java org.apache.xalan.xslt.Process -XSL "$TOOLS_PATH/V4-CSDL-normalize-Target.xsl" \
    -L -IN $voc_file -OUT ${gen_file_basename}.normalized.xml
  java org.apache.xalan.xslt.Process -XSL "$TOOLS_PATH/V4-CSDL-to-JSON.xsl" \
    -L -IN ${gen_file_basename}.normalized.xml -OUT ${gen_file_basename}.tmp.json
  json_reformat < ${gen_file_basename}.tmp.json > ${gen_file_basename}.json
  if [ $? -eq 0 ] ; then
    rm -f ${gen_file_basename}.tmp.json
    git --no-pager diff --ignore-space-at-eol ${gen_file_basename}.json 2>/dev/null
  fi

  # generate adapted versions for SCN
  # tbd - use the Windows script in the meantime...
}

###
### MAIN
###

# prereq's

[ ! -d "../odata-vocabularies" ] && echo "Please clone https://github.com/oasis-tcs/odata-vocabularies next to this folder" && exit 1

for command in java git json_reformat ; do
  which "$command" >/dev/null 2>&1  || { echo "Missing $command command" && exit 1; }
done

# start

THIS_DIR="$( dirname $( realpath $0 ) )"
TOOLS_PATH="$THIS_DIR/../odata-vocabularies/tools"
export CLASSPATH="$CLASSPATH:$THIS_DIR/tools/xalan.jar"

# for file in transform.txt or provided as command arguments
args=$( [ $# -gt 0 ] && echo "$*" \
                     || cat $( realpath $0 | sed s/\.sh/\.txt/g ) | dos2unix )
for file in $args
do
  [ -a "$file" -a -r "$file" ] && process "$file"
done
