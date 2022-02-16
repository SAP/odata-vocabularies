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
[Contact](./Communication.xml#L40:~:text=<Term%20Name="-,Contact,-")|[ContactType?](#ContactType)|<a name="Contact"></a>Address book entry
[Address](./Communication.xml#L124:~:text=<Term%20Name="-,Address,-")|[AddressType?](#AddressType)|<a name="Address"></a>Address
[IsEmailAddress](./Communication.xml#L275:~:text=<Term%20Name="-,IsEmailAddress,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsEmailAddress"></a>Property contains an email address
[IsPhoneNumber](./Communication.xml#L279:~:text=<Term%20Name="-,IsPhoneNumber,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsPhoneNumber"></a>Property contains a phone number
[Event](./Communication.xml#L283:~:text=<Term%20Name="-,Event,-")|[EventData?](#EventData)|<a name="Event"></a>Calendar entry
[Task](./Communication.xml#L326:~:text=<Term%20Name="-,Task,-")|[TaskData?](#TaskData)|<a name="Task"></a>Task list entry
[Message](./Communication.xml#L351:~:text=<Term%20Name="-,Message,-")|[MessageData?](#MessageData)|<a name="Message"></a>Email message

## <a name="ContactType"></a>[ContactType](./Communication.xml#L43:~:text=<ComplexType%20Name="-,ContactType,-")


Property|Type|Description
:-------|:---|:----------
[fn](./Communication.xml#L44:~:text=<ComplexType%20Name="-,ContactType,-")|String?|Full name
[n](./Communication.xml#L47:~:text=<ComplexType%20Name="-,ContactType,-")|[NameType?](#NameType)|Name
[nickname](./Communication.xml#L50:~:text=<ComplexType%20Name="-,ContactType,-")|String?|Nickname
[photo](./Communication.xml#L53:~:text=<ComplexType%20Name="-,ContactType,-")|URL?|Image or photograph
[bday](./Communication.xml#L57:~:text=<ComplexType%20Name="-,ContactType,-")|Date?|Birthday
[anniversary](./Communication.xml#L60:~:text=<ComplexType%20Name="-,ContactType,-")|Date?|Date of marriage, or equivalent
[gender](./Communication.xml#L63:~:text=<ComplexType%20Name="-,ContactType,-")|[GenderType?](#GenderType)|Sex and gender identity
[title](./Communication.xml#L67:~:text=<ComplexType%20Name="-,ContactType,-")|String?|Position or job title
[role](./Communication.xml#L70:~:text=<ComplexType%20Name="-,ContactType,-")|String?|Function or part played in a particular situation
[org](./Communication.xml#L73:~:text=<ComplexType%20Name="-,ContactType,-")|String?|Organization Name defined by X.520
[orgunit](./Communication.xml#L76:~:text=<ComplexType%20Name="-,ContactType,-")|String?|Organization Unit defined by X.520
[kind](./Communication.xml#L80:~:text=<ComplexType%20Name="-,ContactType,-")|[KindType?](#KindType)|Kind of contact
[note](./Communication.xml#L84:~:text=<ComplexType%20Name="-,ContactType,-")|String?|Supplemental information or a comment associated with the contact
[adr](./Communication.xml#L88:~:text=<ComplexType%20Name="-,ContactType,-")|\[[AddressType](#AddressType)\]|Addresses
[tel](./Communication.xml#L91:~:text=<ComplexType%20Name="-,ContactType,-")|\[[PhoneNumberType](#PhoneNumberType)\]|Phone numbers
[email](./Communication.xml#L94:~:text=<ComplexType%20Name="-,ContactType,-")|\[[EmailAddressType](#EmailAddressType)\]|Email addresses
[geo](./Communication.xml#L97:~:text=<ComplexType%20Name="-,ContactType,-")|\[[GeoDataType](#GeoDataType)\]|Geographic locations
[url](./Communication.xml#L100:~:text=<ComplexType%20Name="-,ContactType,-")|\[[UrlType](#UrlType)\]|URLs

## <a name="NameType"></a>[NameType](./Communication.xml#L106:~:text=<ComplexType%20Name="-,NameType,-")


Property|Type|Description
:-------|:---|:----------
[surname](./Communication.xml#L107:~:text=<ComplexType%20Name="-,NameType,-")|String?|Surname or family name
[given](./Communication.xml#L110:~:text=<ComplexType%20Name="-,NameType,-")|String?|Given name
[additional](./Communication.xml#L113:~:text=<ComplexType%20Name="-,NameType,-")|String?|Additional names
[prefix](./Communication.xml#L116:~:text=<ComplexType%20Name="-,NameType,-")|String?|Honorific prefix(es)
[suffix](./Communication.xml#L119:~:text=<ComplexType%20Name="-,NameType,-")|String?|Honorific suffix(es)

## <a name="AddressType"></a>[AddressType](./Communication.xml#L127:~:text=<ComplexType%20Name="-,AddressType,-")


Property|Type|Description
:-------|:---|:----------
[building](./Communication.xml#L128:~:text=<ComplexType%20Name="-,AddressType,-")|String?|Building identifier
[street](./Communication.xml#L131:~:text=<ComplexType%20Name="-,AddressType,-")|String?|Street address
[district](./Communication.xml#L134:~:text=<ComplexType%20Name="-,AddressType,-")|String?|Territorial administrative organization in a large city
[locality](./Communication.xml#L137:~:text=<ComplexType%20Name="-,AddressType,-")|String?|City or similar
[region](./Communication.xml#L140:~:text=<ComplexType%20Name="-,AddressType,-")|String?|State, province, or similar
[code](./Communication.xml#L143:~:text=<ComplexType%20Name="-,AddressType,-")|String?|Postal code
[country](./Communication.xml#L146:~:text=<ComplexType%20Name="-,AddressType,-")|String?|Country name
[pobox](./Communication.xml#L150:~:text=<ComplexType%20Name="-,AddressType,-")|String?|Post office box
[ext](./Communication.xml#L153:~:text=<ComplexType%20Name="-,AddressType,-")|String?|Extended address (e.g., apartment or suite number)
[careof](./Communication.xml#L156:~:text=<ComplexType%20Name="-,AddressType,-")|String?|An intermediary who is responsible for transferring a piece of mail between the postal system and the final addressee
[label](./Communication.xml#L159:~:text=<ComplexType%20Name="-,AddressType,-")|String?|Delivery address label; plain-text string representing the formatted address, may contain line breaks
[type](./Communication.xml#L162:~:text=<ComplexType%20Name="-,AddressType,-")|[ContactInformationType?](#ContactInformationType)|Address type

## <a name="PhoneNumberType"></a>[PhoneNumberType](./Communication.xml#L167:~:text=<ComplexType%20Name="-,PhoneNumberType,-")


Property|Type|Description
:-------|:---|:----------
[uri](./Communication.xml#L168:~:text=<ComplexType%20Name="-,PhoneNumberType,-")|URL?|This SHOULD use the tel: URL schema defined in RFC3966
[type](./Communication.xml#L172:~:text=<ComplexType%20Name="-,PhoneNumberType,-")|[PhoneType?](#PhoneType)|Telephone type

## <a name="EmailAddressType"></a>[EmailAddressType](./Communication.xml#L177:~:text=<ComplexType%20Name="-,EmailAddressType,-")


Property|Type|Description
:-------|:---|:----------
[address](./Communication.xml#L178:~:text=<ComplexType%20Name="-,EmailAddressType,-")|String?|Email address
[type](./Communication.xml#L181:~:text=<ComplexType%20Name="-,EmailAddressType,-")|[ContactInformationType?](#ContactInformationType)|Address type

## <a name="GeoDataType"></a>[GeoDataType](./Communication.xml#L186:~:text=<ComplexType%20Name="-,GeoDataType,-")


Property|Type|Description
:-------|:---|:----------
[uri](./Communication.xml#L187:~:text=<ComplexType%20Name="-,GeoDataType,-")|URL?|This SHOULD use the geo: URL schema defined in RFC5870 which encodes the same information as an Edm.GeographyPoint
[type](./Communication.xml#L191:~:text=<ComplexType%20Name="-,GeoDataType,-")|[ContactInformationType?](#ContactInformationType)|Address type

## <a name="UrlType"></a>[UrlType](./Communication.xml#L196:~:text=<ComplexType%20Name="-,UrlType,-")


Property|Type|Description
:-------|:---|:----------
[uri](./Communication.xml#L197:~:text=<ComplexType%20Name="-,UrlType,-")|URL?|This MUST use the URL schema defined in RFC3986
[type](./Communication.xml#L201:~:text=<ComplexType%20Name="-,UrlType,-")|[ContactInformationType?](#ContactInformationType)|URL type

## <a name="KindType"></a>[KindType](./Communication.xml#L206:~:text=<EnumType%20Name="-,KindType,-")


Member|Value|Description
:-----|----:|:----------
[individual](./Communication.xml#L207:~:text=<EnumType%20Name="-,KindType,-")|0|A single person or entity
[group](./Communication.xml#L210:~:text=<EnumType%20Name="-,KindType,-")|1|A group of persons or entities
[org](./Communication.xml#L213:~:text=<EnumType%20Name="-,KindType,-")|2|An organization
[location](./Communication.xml#L216:~:text=<EnumType%20Name="-,KindType,-")|3|A named geographical place

## <a name="ContactInformationType"></a>[ContactInformationType](./Communication.xml#L221:~:text=<EnumType%20Name="-,ContactInformationType,-")


Flag Member|Value|Description
:-----|----:|:----------
[work](./Communication.xml#L222:~:text=<EnumType%20Name="-,ContactInformationType,-")|1|Related to an individual's work place
[home](./Communication.xml#L225:~:text=<EnumType%20Name="-,ContactInformationType,-")|2|Related to an indivdual's personal life
[preferred](./Communication.xml#L228:~:text=<EnumType%20Name="-,ContactInformationType,-")|4|Preferred-use contact information

## <a name="PhoneType"></a>[PhoneType](./Communication.xml#L233:~:text=<EnumType%20Name="-,PhoneType,-")


Flag Member|Value|Description
:-----|----:|:----------
[work](./Communication.xml#L234:~:text=<EnumType%20Name="-,PhoneType,-")|1|Work telephone number
[home](./Communication.xml#L237:~:text=<EnumType%20Name="-,PhoneType,-")|2|Private telephone number
[preferred](./Communication.xml#L240:~:text=<EnumType%20Name="-,PhoneType,-")|4|Preferred-use telephone number
[voice](./Communication.xml#L243:~:text=<EnumType%20Name="-,PhoneType,-")|8|Voice telephone number
[cell](./Communication.xml#L246:~:text=<EnumType%20Name="-,PhoneType,-")|16|Cellular or mobile telephone number
[fax](./Communication.xml#L249:~:text=<EnumType%20Name="-,PhoneType,-")|32|Facsimile telephone number
[video](./Communication.xml#L252:~:text=<EnumType%20Name="-,PhoneType,-")|64|Video conferencing telephone number

## <a name="GenderType"></a>[GenderType](./Communication.xml#L257:~:text=<EnumType%20Name="-,GenderType,-")


Member|Value|Description
:-----|----:|:----------
[M](./Communication.xml#L258:~:text=<EnumType%20Name="-,GenderType,-")|0|male
[F](./Communication.xml#L261:~:text=<EnumType%20Name="-,GenderType,-")|1|female
[O](./Communication.xml#L264:~:text=<EnumType%20Name="-,GenderType,-")|2|other
[N](./Communication.xml#L267:~:text=<EnumType%20Name="-,GenderType,-")|3|not applicable
[U](./Communication.xml#L270:~:text=<EnumType%20Name="-,GenderType,-")|4|unknown

## <a name="EventData"></a>[EventData](./Communication.xml#L287:~:text=<ComplexType%20Name="-,EventData,-")


Property|Type|Description
:-------|:---|:----------
[summary](./Communication.xml#L288:~:text=<ComplexType%20Name="-,EventData,-")|String?|Short description of the event
[description](./Communication.xml#L291:~:text=<ComplexType%20Name="-,EventData,-")|String?|More complete description
[categories](./Communication.xml#L294:~:text=<ComplexType%20Name="-,EventData,-")|\[String\]|Categories or subtypes of the event
[dtstart](./Communication.xml#L297:~:text=<ComplexType%20Name="-,EventData,-")|DateTimeOffset?|Start date and time of the event
[dtend](./Communication.xml#L300:~:text=<ComplexType%20Name="-,EventData,-")|DateTimeOffset?|Date and time by which the event ends, alternative to duration
[duration](./Communication.xml#L303:~:text=<ComplexType%20Name="-,EventData,-")|Duration?|Duration of the event, alternative to dtend
[class](./Communication.xml#L306:~:text=<ComplexType%20Name="-,EventData,-")|String?|Access classification, e.g. PUBLIC, PRIVATE, CONFIDENTIAL
[status](./Communication.xml#L309:~:text=<ComplexType%20Name="-,EventData,-")|String?|Confirmation status, e.g. CONFIRMED, TENTATIVE, CANCELLED
[location](./Communication.xml#L312:~:text=<ComplexType%20Name="-,EventData,-")|String?|Intended venue of the event
[transp](./Communication.xml#L315:~:text=<ComplexType%20Name="-,EventData,-")|Boolean?|Time transparency for busy time searches, true = free, false = blocked
[wholeday](./Communication.xml#L318:~:text=<ComplexType%20Name="-,EventData,-")|Boolean?|Wholeday event
[fbtype](./Communication.xml#L321:~:text=<ComplexType%20Name="-,EventData,-")|String?|Free or busy time type, e.g. FREE, BUSY, BUSY-TENTATIVE

## <a name="TaskData"></a>[TaskData](./Communication.xml#L330:~:text=<ComplexType%20Name="-,TaskData,-")


Property|Type|Description
:-------|:---|:----------
[summary](./Communication.xml#L331:~:text=<ComplexType%20Name="-,TaskData,-")|String?|Short description of the task
[description](./Communication.xml#L334:~:text=<ComplexType%20Name="-,TaskData,-")|String?|More complete description of the task
[due](./Communication.xml#L337:~:text=<ComplexType%20Name="-,TaskData,-")|DateTimeOffset?|Date and time that a to-do is expected to be completed
[completed](./Communication.xml#L340:~:text=<ComplexType%20Name="-,TaskData,-")|DateTimeOffset?|Date and time that a to-do was actually completed
[percentcomplete](./Communication.xml#L343:~:text=<ComplexType%20Name="-,TaskData,-")|Byte?|Percent completion of a to-do, e.g. 50 for half done
[priority](./Communication.xml#L346:~:text=<ComplexType%20Name="-,TaskData,-")|Byte?|Relative priority, 0 = undefined, 1 = highest, 9 = lowest

## <a name="MessageData"></a>[MessageData](./Communication.xml#L355:~:text=<ComplexType%20Name="-,MessageData,-")


Property|Type|Description
:-------|:---|:----------
[from](./Communication.xml#L356:~:text=<ComplexType%20Name="-,MessageData,-")|String?|Author(s) of the message
[sender](./Communication.xml#L359:~:text=<ComplexType%20Name="-,MessageData,-")|String?|Agent responsible for the actual transmission of the message, e.g. a secretary
[to](./Communication.xml#L362:~:text=<ComplexType%20Name="-,MessageData,-")|\[String\]|List of primary recipients
[cc](./Communication.xml#L365:~:text=<ComplexType%20Name="-,MessageData,-")|\[String\]|List of other recipients (carbon copy)
[bcc](./Communication.xml#L368:~:text=<ComplexType%20Name="-,MessageData,-")|\[String\]|List of recipients whose addresses are not to be revealed (blind carbon copy)
[subject](./Communication.xml#L371:~:text=<ComplexType%20Name="-,MessageData,-")|String?|Topic of the message
[body](./Communication.xml#L374:~:text=<ComplexType%20Name="-,MessageData,-")|String?|Main part of the message
[keywords](./Communication.xml#L377:~:text=<ComplexType%20Name="-,MessageData,-")|\[String\]|List of important words and phrases that might be useful for the recipient
[received](./Communication.xml#L380:~:text=<ComplexType%20Name="-,MessageData,-")|DateTimeOffset?|Date and time the message was received
