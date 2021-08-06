# Communication Vocabulary
**Namespace: [com.sap.vocabularies.Communication.v1](Communication.xml)**

Terms for annotating communication-relevant information


These terms are inspired by
- RFC6350 vCard (http://tools.ietf.org/html/rfc6350)
- RFC5545 iCalendar (http://tools.ietf.org/html/rfc5545)
- RFC5322 Internet Message Format (http://tools.ietf.org/html/rfc5322)
- RFC6351 xCard: vCard XML Representation (https://tools.ietf.org/html/rfc6351)
        


## Terms

Term|Type|Description
:---|:---|:----------
[Contact](./Communication.xml#L40:~:text=Name="-,Contact,-")|[ContactType?](#ContactType)|<a name="Contact"></a>Address book entry
[Address](./Communication.xml#L124:~:text=Name="-,Address,-")|[AddressType?](#AddressType)|<a name="Address"></a>Address
[IsEmailAddress](./Communication.xml#L275:~:text=Name="-,IsEmailAddress,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsEmailAddress"></a>Property contains an email address
[IsPhoneNumber](./Communication.xml#L279:~:text=Name="-,IsPhoneNumber,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsPhoneNumber"></a>Property contains a phone number
[Event](./Communication.xml#L283:~:text=Name="-,Event,-")|[EventData?](#EventData)|<a name="Event"></a>Calendar entry
[Task](./Communication.xml#L326:~:text=Name="-,Task,-")|[TaskData?](#TaskData)|<a name="Task"></a>Task list entry
[Message](./Communication.xml#L351:~:text=Name="-,Message,-")|[MessageData?](#MessageData)|<a name="Message"></a>Email message

## <a name="ContactType"></a>[ContactType](./Communication.xml#L43:~:text=Name="-,ContactType,-")


Property|Type|Description
:-------|:---|:----------
[fn](./Communication.xml#L44:~:text=Name="-,fn,-")|String?|Full name
[n](./Communication.xml#L47:~:text=Name="-,n,-")|[NameType?](#NameType)|Name
[nickname](./Communication.xml#L50:~:text=Name="-,nickname,-")|String?|Nickname
[photo](./Communication.xml#L53:~:text=Name="-,photo,-")|URL?|Image or photograph
[bday](./Communication.xml#L57:~:text=Name="-,bday,-")|Date?|Birthday
[anniversary](./Communication.xml#L60:~:text=Name="-,anniversary,-")|Date?|Date of marriage, or equivalent
[gender](./Communication.xml#L63:~:text=Name="-,gender,-")|[GenderType?](#GenderType)|Sex and gender identity
[title](./Communication.xml#L67:~:text=Name="-,title,-")|String?|Position or job title
[role](./Communication.xml#L70:~:text=Name="-,role,-")|String?|Function or part played in a particular situation
[org](./Communication.xml#L73:~:text=Name="-,org,-")|String?|Organization Name defined by X.520
[orgunit](./Communication.xml#L76:~:text=Name="-,orgunit,-")|String?|Organization Unit defined by X.520
[kind](./Communication.xml#L80:~:text=Name="-,kind,-")|[KindType?](#KindType)|Kind of contact
[note](./Communication.xml#L84:~:text=Name="-,note,-")|String?|Supplemental information or a comment associated with the contact
[adr](./Communication.xml#L88:~:text=Name="-,adr,-")|\[[AddressType](#AddressType)\]|Addresses
[tel](./Communication.xml#L91:~:text=Name="-,tel,-")|\[[PhoneNumberType](#PhoneNumberType)\]|Phone numbers
[email](./Communication.xml#L94:~:text=Name="-,email,-")|\[[EmailAddressType](#EmailAddressType)\]|Email addresses
[geo](./Communication.xml#L97:~:text=Name="-,geo,-")|\[[GeoDataType](#GeoDataType)\]|Geographic locations
[url](./Communication.xml#L100:~:text=Name="-,url,-")|\[[UrlType](#UrlType)\]|URLs

## <a name="NameType"></a>[NameType](./Communication.xml#L106:~:text=Name="-,NameType,-")


Property|Type|Description
:-------|:---|:----------
[surname](./Communication.xml#L107:~:text=Name="-,surname,-")|String?|Surname or family name
[given](./Communication.xml#L110:~:text=Name="-,given,-")|String?|Given name
[additional](./Communication.xml#L113:~:text=Name="-,additional,-")|String?|Additional names
[prefix](./Communication.xml#L116:~:text=Name="-,prefix,-")|String?|Honorific prefix(es)
[suffix](./Communication.xml#L119:~:text=Name="-,suffix,-")|String?|Honorific suffix(es)

## <a name="AddressType"></a>[AddressType](./Communication.xml#L127:~:text=Name="-,AddressType,-")


Property|Type|Description
:-------|:---|:----------
[building](./Communication.xml#L128:~:text=Name="-,building,-")|String?|Building identifier
[street](./Communication.xml#L131:~:text=Name="-,street,-")|String?|Street address
[district](./Communication.xml#L134:~:text=Name="-,district,-")|String?|Territorial administrative organization in a large city
[locality](./Communication.xml#L137:~:text=Name="-,locality,-")|String?|City or similar
[region](./Communication.xml#L140:~:text=Name="-,region,-")|String?|State, province, or similar
[code](./Communication.xml#L143:~:text=Name="-,code,-")|String?|Postal code
[country](./Communication.xml#L146:~:text=Name="-,country,-")|String?|Country name
[pobox](./Communication.xml#L150:~:text=Name="-,pobox,-")|String?|Post office box
[ext](./Communication.xml#L153:~:text=Name="-,ext,-")|String?|Extended address (e.g., apartment or suite number)
[careof](./Communication.xml#L156:~:text=Name="-,careof,-")|String?|An intermediary who is responsible for transferring a piece of mail between the postal system and the final addressee
[label](./Communication.xml#L159:~:text=Name="-,label,-")|String?|Delivery address label; plain-text string representing the formatted address, may contain line breaks
[type](./Communication.xml#L162:~:text=Name="-,type,-")|[ContactInformationType?](#ContactInformationType)|Address type

## <a name="PhoneNumberType"></a>[PhoneNumberType](./Communication.xml#L167:~:text=Name="-,PhoneNumberType,-")


Property|Type|Description
:-------|:---|:----------
[uri](./Communication.xml#L168:~:text=Name="-,uri,-")|URL?|This SHOULD use the tel: URL schema defined in RFC3966
[type](./Communication.xml#L172:~:text=Name="-,type,-")|[PhoneType?](#PhoneType)|Telephone type

## <a name="EmailAddressType"></a>[EmailAddressType](./Communication.xml#L177:~:text=Name="-,EmailAddressType,-")


Property|Type|Description
:-------|:---|:----------
[address](./Communication.xml#L178:~:text=Name="-,address,-")|String?|Email address
[type](./Communication.xml#L181:~:text=Name="-,type,-")|[ContactInformationType?](#ContactInformationType)|Address type

## <a name="GeoDataType"></a>[GeoDataType](./Communication.xml#L186:~:text=Name="-,GeoDataType,-")


Property|Type|Description
:-------|:---|:----------
[uri](./Communication.xml#L187:~:text=Name="-,uri,-")|URL?|This SHOULD use the geo: URL schema defined in RFC5870 which encodes the same information as an Edm.GeographyPoint
[type](./Communication.xml#L191:~:text=Name="-,type,-")|[ContactInformationType?](#ContactInformationType)|Address type

## <a name="UrlType"></a>[UrlType](./Communication.xml#L196:~:text=Name="-,UrlType,-")


Property|Type|Description
:-------|:---|:----------
[uri](./Communication.xml#L197:~:text=Name="-,uri,-")|URL?|This MUST use the URL schema defined in RFC3986
[type](./Communication.xml#L201:~:text=Name="-,type,-")|[ContactInformationType?](#ContactInformationType)|URL type

## <a name="KindType"></a>[KindType](./Communication.xml#L206:~:text=Name="-,KindType,-")


Member|Value|Description
:-----|----:|:----------
[individual](./Communication.xml#L207:~:text=Name="-,individual,-")|0|A single person or entity
[group](./Communication.xml#L210:~:text=Name="-,group,-")|1|A group of persons or entities
[org](./Communication.xml#L213:~:text=Name="-,org,-")|2|An organization
[location](./Communication.xml#L216:~:text=Name="-,location,-")|3|A named geographical place

## <a name="ContactInformationType"></a>[ContactInformationType](./Communication.xml#L221:~:text=Name="-,ContactInformationType,-")


Flag Member|Value|Description
:-----|----:|:----------
[work](./Communication.xml#L222:~:text=Name="-,work,-")|1|Related to an individual's work place
[home](./Communication.xml#L225:~:text=Name="-,home,-")|2|Related to an indivdual's personal life
[preferred](./Communication.xml#L228:~:text=Name="-,preferred,-")|4|Preferred-use contact information

## <a name="PhoneType"></a>[PhoneType](./Communication.xml#L233:~:text=Name="-,PhoneType,-")


Flag Member|Value|Description
:-----|----:|:----------
[work](./Communication.xml#L234:~:text=Name="-,work,-")|1|Work telephone number
[home](./Communication.xml#L237:~:text=Name="-,home,-")|2|Private telephone number
[preferred](./Communication.xml#L240:~:text=Name="-,preferred,-")|4|Preferred-use telephone number
[voice](./Communication.xml#L243:~:text=Name="-,voice,-")|8|Voice telephone number
[cell](./Communication.xml#L246:~:text=Name="-,cell,-")|16|Cellular or mobile telephone number
[fax](./Communication.xml#L249:~:text=Name="-,fax,-")|32|Facsimile telephone number
[video](./Communication.xml#L252:~:text=Name="-,video,-")|64|Video conferencing telephone number

## <a name="GenderType"></a>[GenderType](./Communication.xml#L257:~:text=Name="-,GenderType,-")


Member|Value|Description
:-----|----:|:----------
[M](./Communication.xml#L258:~:text=Name="-,M,-")|0|male
[F](./Communication.xml#L261:~:text=Name="-,F,-")|1|female
[O](./Communication.xml#L264:~:text=Name="-,O,-")|2|other
[N](./Communication.xml#L267:~:text=Name="-,N,-")|3|not applicable
[U](./Communication.xml#L270:~:text=Name="-,U,-")|4|unknown

## <a name="EventData"></a>[EventData](./Communication.xml#L287:~:text=Name="-,EventData,-")


Property|Type|Description
:-------|:---|:----------
[summary](./Communication.xml#L288:~:text=Name="-,summary,-")|String?|Short description of the event
[description](./Communication.xml#L291:~:text=Name="-,description,-")|String?|More complete description
[categories](./Communication.xml#L294:~:text=Name="-,categories,-")|\[String\]|Categories or subtypes of the event
[dtstart](./Communication.xml#L297:~:text=Name="-,dtstart,-")|DateTimeOffset?|Start date and time of the event
[dtend](./Communication.xml#L300:~:text=Name="-,dtend,-")|DateTimeOffset?|Date and time by which the event ends, alternative to duration
[duration](./Communication.xml#L303:~:text=Name="-,duration,-")|Duration?|Duration of the event, alternative to dtend
[class](./Communication.xml#L306:~:text=Name="-,class,-")|String?|Access classification, e.g. PUBLIC, PRIVATE, CONFIDENTIAL
[status](./Communication.xml#L309:~:text=Name="-,status,-")|String?|Confirmation status, e.g. CONFIRMED, TENTATIVE, CANCELLED
[location](./Communication.xml#L312:~:text=Name="-,location,-")|String?|Intended venue of the event
[transp](./Communication.xml#L315:~:text=Name="-,transp,-")|Boolean?|Time transparency for busy time searches, true = free, false = blocked
[wholeday](./Communication.xml#L318:~:text=Name="-,wholeday,-")|Boolean?|Wholeday event
[fbtype](./Communication.xml#L321:~:text=Name="-,fbtype,-")|String?|Free or busy time type, e.g. FREE, BUSY, BUSY-TENTATIVE

## <a name="TaskData"></a>[TaskData](./Communication.xml#L330:~:text=Name="-,TaskData,-")


Property|Type|Description
:-------|:---|:----------
[summary](./Communication.xml#L331:~:text=Name="-,summary,-")|String?|Short description of the task
[description](./Communication.xml#L334:~:text=Name="-,description,-")|String?|More complete description of the task
[due](./Communication.xml#L337:~:text=Name="-,due,-")|DateTimeOffset?|Date and time that a to-do is expected to be completed
[completed](./Communication.xml#L340:~:text=Name="-,completed,-")|DateTimeOffset?|Date and time that a to-do was actually completed
[percentcomplete](./Communication.xml#L343:~:text=Name="-,percentcomplete,-")|Byte?|Percent completion of a to-do, e.g. 50 for half done
[priority](./Communication.xml#L346:~:text=Name="-,priority,-")|Byte?|Relative priority, 0 = undefined, 1 = highest, 9 = lowest

## <a name="MessageData"></a>[MessageData](./Communication.xml#L355:~:text=Name="-,MessageData,-")


Property|Type|Description
:-------|:---|:----------
[from](./Communication.xml#L356:~:text=Name="-,from,-")|String?|Author(s) of the message
[sender](./Communication.xml#L359:~:text=Name="-,sender,-")|String?|Agent responsible for the actual transmission of the message, e.g. a secretary
[to](./Communication.xml#L362:~:text=Name="-,to,-")|\[String\]|List of primary recipients
[cc](./Communication.xml#L365:~:text=Name="-,cc,-")|\[String\]|List of other recipients (carbon copy)
[bcc](./Communication.xml#L368:~:text=Name="-,bcc,-")|\[String\]|List of recipients whose addresses are not to be revealed (blind carbon copy)
[subject](./Communication.xml#L371:~:text=Name="-,subject,-")|String?|Topic of the message
[body](./Communication.xml#L374:~:text=Name="-,body,-")|String?|Main part of the message
[keywords](./Communication.xml#L377:~:text=Name="-,keywords,-")|\[String\]|List of important words and phrases that might be useful for the recipient
[received](./Communication.xml#L380:~:text=Name="-,received,-")|DateTimeOffset?|Date and time the message was received
