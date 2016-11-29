@echo off 
setlocal

set PROXY=-x proxy:8080

@rem XSLT command-line see https://xml.apache.org/xalan-j/commandline.html

set CLASSPATH=%CLASSPATH%;C:\eclipse-Luna\plugins\org.apache.xml.serializer_2.7.1.v201005080400.jar;C:\eclipse-Luna\plugins\org.apache.xalan_2.7.1.v201005080400.jar
set done=false

for /F "eol=# tokens=1,2,3,4" %%F in (%~n0.txt) do (
	if /I [%1] == [%%~nF] (
	    set done=true
		call :process %%F %%G %%H %%I
	) else if [%1]==[] (
	    set done=true
		call :process %%F %%G %%H %%I
	)
)

if %done%==false echo Don't know how to %~n0 %1

endlocal
exit /b


:process

  echo %~n1

  java.exe org.apache.xalan.xslt.Process -XSL C:\git\odata-vocabularies\tools\Vocab-to-MarkDown.xsl -PARAM use-alias-as-filename YES -PARAM odata-vocabularies-url https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/ -IN %1 -OUT %~n1.md
  git.exe --no-pager diff %~n1.md

  rem curl.exe -k -s %PROXY% --data-binary @%~n1.md -H "Content-Type: text/plain" https://api.github.com/markdown/raw -o %~n1.html
  curl.exe -k -s --data-binary @%~n1.md -H "Content-Type: text/plain" https://github.wdf.sap.corp/api/v3/markdown/raw -o %~n1.html

  sed.exe -e "s/<a name=\"user-content-/^<a name=\"/g" ^
          -e "s/<span aria-hidden=\"true\" class=\"octicon octicon-link\"><\/span>//g" ^
          -e "s/<a href=\"Org\.OData\./^<a href=\"https:\/\/github.com\/oasis-tcs\/odata-vocabularies\/blob\/master\/vocabularies\/Org\.OData\./g" ^
          -e "s/<a id=\"user-content-[[:alpha:]-]\+\" class=\"anchor\" href=\"#[[:alpha:]-]\+\" aria-hidden=\"true\"><\/a>//g" ^
          -e "s/\"Common\.xml\"/\"https:\/\/wiki.scn.sap.com\/wiki\/download\/attachments\/448470974\/Common.xml?api=v2\"/g" ^
          -e "s/\"Communication\.xml\"/\"https:\/\/wiki.scn.sap.com\/wiki\/download\/attachments\/448470971\/Communication.xml?api=v2\"/g" ^
          -e "s/\"UI\.xml\"/\"https:\/\/wiki.scn.sap.com\/wiki\/download\/attachments\/448470968\/UI.xml?api=v2\"/g" ^
          -e "s/com\.sap\.vocabularies\.\([^.]\+\)\.v1\.md#/https:\/\/wiki.scn.sap.com\/wiki\/display\/EmTech\/OData+4.0+Vocabularies+-+SAP+\1#/g" ^
          -e "s/\"Common\.md#/\"https:\/\/wiki.scn.sap.com\/wiki\/display\/EmTech\/OData+4.0+Vocabularies+-+SAP+Common#/g" ^
          -e "s/\"Communication\.md#/\"https:\/\/wiki.scn.sap.com\/wiki\/display\/EmTech\/OData+4.0+Vocabularies+-+SAP+Communication#/g" ^
          %~n1.html > %~n1.scn 
  rem del %~n1.html

exit /b