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
[Contact](Communication.xml#L40)|[ContactType](#ContactType)|<a name="Contact"></a>Address book entry
[Address](Communication.xml#L124)|[AddressType](#AddressType)|<a name="Address"></a>Address
[IsEmailAddress](Communication.xml#L275)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsEmailAddress"></a>Property contains an email address
[IsPhoneNumber](Communication.xml#L279)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsPhoneNumber"></a>Property contains a phone number
[Event](Communication.xml#L283)|[EventData](#EventData)|<a name="Event"></a>Calendar entry
[Task](Communication.xml#L326)|[TaskData](#TaskData)|<a name="Task"></a>Task list entry
[Message](Communication.xml#L351)|[MessageData](#MessageData)|<a name="Message"></a>Email message

## <a name="ContactType"></a>[ContactType](Communication.xml#L43)


Property|Type|Description
:-------|:---|:----------
[fn](Communication.xml#L44)|String|Full name
[n](Communication.xml#L47)|[NameType](#NameType)|Name
[nickname](Communication.xml#L50)|String|Nickname
[photo](Communication.xml#L53)|URL|Image or photograph
[bday](Communication.xml#L57)|Date|Birthday
[anniversary](Communication.xml#L60)|Date|Date of marriage, or equivalent
[gender](Communication.xml#L63)|[GenderType](#GenderType)|Sex and gender identity
[title](Communication.xml#L67)|String|Position or job title
[role](Communication.xml#L70)|String|Function or part played in a particular situation
[org](Communication.xml#L73)|String|Organization Name defined by X.520
[orgunit](Communication.xml#L76)|String|Organization Unit defined by X.520
[kind](Communication.xml#L80)|[KindType](#KindType)|Kind of contact
[note](Communication.xml#L84)|String|Supplemental information or a comment associated with the contact
[adr](Communication.xml#L88)|\[[AddressType](#AddressType)\]|Addresses
[tel](Communication.xml#L91)|\[[PhoneNumberType](#PhoneNumberType)\]|Phone numbers
[email](Communication.xml#L94)|\[[EmailAddressType](#EmailAddressType)\]|Email addresses
[geo](Communication.xml#L97)|\[[GeoDataType](#GeoDataType)\]|Geographic locations
[url](Communication.xml#L100)|\[[UrlType](#UrlType)\]|URLs

## <a name="NameType"></a>[NameType](Communication.xml#L106)


Property|Type|Description
:-------|:---|:----------
[surname](Communication.xml#L107)|String|Surname or family name
[given](Communication.xml#L110)|String|Given name
[additional](Communication.xml#L113)|String|Additional names
[prefix](Communication.xml#L116)|String|Honorific prefix(es)
[suffix](Communication.xml#L119)|String|Honorific suffix(es)

## <a name="AddressType"></a>[AddressType](Communication.xml#L127)


Property|Type|Description
:-------|:---|:----------
[building](Communication.xml#L128)|String|Building identifier
[street](Communication.xml#L131)|String|Street address
[district](Communication.xml#L134)|String|Territorial administrative organization in a large city
[locality](Communication.xml#L137)|String|City or similar
[region](Communication.xml#L140)|String|State, province, or similar
[code](Communication.xml#L143)|String|Postal code
[country](Communication.xml#L146)|String|Country name
[pobox](Communication.xml#L150)|String|Post office box
[ext](Communication.xml#L153)|String|Extended address (e.g., apartment or suite number)
[careof](Communication.xml#L156)|String|An intermediary who is responsible for transferring a piece of mail between the postal system and the final addressee
[label](Communication.xml#L159)|String|Delivery address label; plain-text string representing the formatted address, may contain line breaks
[type](Communication.xml#L162)|[ContactInformationType](#ContactInformationType)|Address type

## <a name="PhoneNumberType"></a>[PhoneNumberType](Communication.xml#L167)


Property|Type|Description
:-------|:---|:----------
[uri](Communication.xml#L168)|URL|This SHOULD use the tel: URL schema defined in RFC3966
[type](Communication.xml#L172)|[PhoneType](#PhoneType)|Telephone type

## <a name="EmailAddressType"></a>[EmailAddressType](Communication.xml#L177)


Property|Type|Description
:-------|:---|:----------
[address](Communication.xml#L178)|String|Email address
[type](Communication.xml#L181)|[ContactInformationType](#ContactInformationType)|Address type

## <a name="GeoDataType"></a>[GeoDataType](Communication.xml#L186)


Property|Type|Description
:-------|:---|:----------
[uri](Communication.xml#L187)|URL|This SHOULD use the geo: URL schema defined in RFC5870 which encodes the same information as an Edm.GeographyPoint
[type](Communication.xml#L191)|[ContactInformationType](#ContactInformationType)|Address type

## <a name="UrlType"></a>[UrlType](Communication.xml#L196)


Property|Type|Description
:-------|:---|:----------
[uri](Communication.xml#L197)|URL|This MUST use the URL schema defined in RFC3986
[type](Communication.xml#L201)|[ContactInformationType](#ContactInformationType)|URL type

## <a name="KindType"></a>[KindType](Communication.xml#L206)


Member|Value|Description
:-----|----:|:----------
[individual](Communication.xml#L207)|0|A single person or entity
[group](Communication.xml#L210)|1|A group of persons or entities
[org](Communication.xml#L213)|2|An organization
[location](Communication.xml#L216)|3|A named geographical place

## <a name="ContactInformationType"></a>[ContactInformationType](Communication.xml#L221)


Flag Member|Value|Description
:-----|----:|:----------
[work](Communication.xml#L222)|1|Related to an individual's work place
[home](Communication.xml#L225)|2|Related to an indivdual's personal life
[preferred](Communication.xml#L228)|4|Preferred-use contact information

## <a name="PhoneType"></a>[PhoneType](Communication.xml#L233)


Flag Member|Value|Description
:-----|----:|:----------
[work](Communication.xml#L234)|1|Work telephone number
[home](Communication.xml#L237)|2|Private telephone number
[preferred](Communication.xml#L240)|4|Preferred-use telephone number
[voice](Communication.xml#L243)|8|Voice telephone number
[cell](Communication.xml#L246)|16|Cellular or mobile telephone number
[fax](Communication.xml#L249)|32|Facsimile telephone number
[video](Communication.xml#L252)|64|Video conferencing telephone number

## <a name="GenderType"></a>[GenderType](Communication.xml#L257)


Member|Value|Description
:-----|----:|:----------
[M](Communication.xml#L258)|0|male
[F](Communication.xml#L261)|1|female
[O](Communication.xml#L264)|2|other
[N](Communication.xml#L267)|3|not applicable
[U](Communication.xml#L270)|4|unknown

## <a name="EventData"></a>[EventData](Communication.xml#L287)


Property|Type|Description
:-------|:---|:----------
[summary](Communication.xml#L288)|String|Short description of the event
[description](Communication.xml#L291)|String|More complete description
[categories](Communication.xml#L294)|\[String\]|Categories or subtypes of the event
[dtstart](Communication.xml#L297)|DateTimeOffset|Start date and time of the event
[dtend](Communication.xml#L300)|DateTimeOffset|Date and time by which the event ends, alternative to duration
[duration](Communication.xml#L303)|Duration|Duration of the event, alternative to dtend
[class](Communication.xml#L306)|String|Access classification, e.g. PUBLIC, PRIVATE, CONFIDENTIAL
[status](Communication.xml#L309)|String|Confirmation status, e.g. CONFIRMED, TENTATIVE, CANCELLED
[location](Communication.xml#L312)|String|Intended venue of the event
[transp](Communication.xml#L315)|Boolean|Time transparency for busy time searches, true = free, false = blocked
[wholeday](Communication.xml#L318)|Boolean|Wholeday event
[fbtype](Communication.xml#L321)|String|Free or busy time type, e.g. FREE, BUSY, BUSY-TENTATIVE

## <a name="TaskData"></a>[TaskData](Communication.xml#L330)


Property|Type|Description
:-------|:---|:----------
[summary](Communication.xml#L331)|String|Short description of the task
[description](Communication.xml#L334)|String|More complete description of the task
[due](Communication.xml#L337)|DateTimeOffset|Date and time that a to-do is expected to be completed
[completed](Communication.xml#L340)|DateTimeOffset|Date and time that a to-do was actually completed
[percentcomplete](Communication.xml#L343)|Byte|Percent completion of a to-do, e.g. 50 for half done
[priority](Communication.xml#L346)|Byte|Relative priority, 0 = undefined, 1 = highest, 9 = lowest

## <a name="MessageData"></a>[MessageData](Communication.xml#L355)


Property|Type|Description
:-------|:---|:----------
[from](Communication.xml#L356)|String|Author(s) of the message
[sender](Communication.xml#L359)|String|Agent responsible for the actual transmission of the message, e.g. a secretary
[to](Communication.xml#L362)|\[String\]|List of primary recipients
[cc](Communication.xml#L365)|\[String\]|List of other recipients (carbon copy)
[bcc](Communication.xml#L368)|\[String\]|List of recipients whose addresses are not to be revealed (blind carbon copy)
[subject](Communication.xml#L371)|String|Topic of the message
[body](Communication.xml#L374)|String|Main part of the message
[keywords](Communication.xml#L377)|\[String\]|List of important words and phrases that might be useful for the recipient
[received](Communication.xml#L380)|DateTimeOffset|Date and time the message was received
