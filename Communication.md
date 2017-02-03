# Communication Vocabulary
**Namespace: [com.sap.vocabularies.Communication.v1](Communication.xml)**

Terms for annotating communication-relevant information

These terms are inspired by
- RFC6350 vCard (http://tools.ietf.org/html/rfc6350)
- RFC5545 iCalendar (http://tools.ietf.org/html/rfc5545)
- RFC5322 Internet Message Format (http://tools.ietf.org/html/rfc5322)
- RFC6351 xCard: vCard XML Representation (https://tools.ietf.org/html/rfc6351)
        

Term|Type|Description
:---|:---|:----------
[Contact](Communication.xml#L24)|[ContactType](#ContactType)|<a name="Contact"></a>Address book entry
[Address](Communication.xml#L108)|[AddressType](#AddressType)|<a name="Address"></a>Address
[IsEmailAddress](Communication.xml#L252)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsEmailAddress"></a>Property contains an email address
[IsPhoneNumber](Communication.xml#L256)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsPhoneNumber"></a>Property contains a phone number
[Event](Communication.xml#L260)|[EventData](#EventData)|<a name="Event"></a>Calendar entry
[Task](Communication.xml#L303)|[TaskData](#TaskData)|<a name="Task"></a>Task list entry
[Message](Communication.xml#L328)|[MessageData](#MessageData)|<a name="Message"></a>Email message

## <a name="ContactType"></a>[ContactType](Communication.xml#L27)


Property|Type|Description
:-------|:---|:----------
[fn](Communication.xml#L28)|String|Full name
[n](Communication.xml#L31)|[NameType](#NameType)|Name
[nickname](Communication.xml#L34)|String|Nickname
[photo](Communication.xml#L37)|URL|Image or photograph
[bday](Communication.xml#L41)|Date|Birthday
[anniversary](Communication.xml#L44)|Date|Date of marriage, or equivalent
[gender](Communication.xml#L47)|[GenderType](#GenderType)|Sex and gender identity
[title](Communication.xml#L51)|String|Position or job title
[role](Communication.xml#L54)|String|Function or part played in a particular situation
[org](Communication.xml#L57)|String|Organization Name defined by X.520
[orgunit](Communication.xml#L60)|String|Organization Unit defined by X.520
[kind](Communication.xml#L64)|[KindType](#KindType)|Kind of contact
[note](Communication.xml#L68)|String|Supplemental information or a comment associated with the contact
[adr](Communication.xml#L72)|\[[AddressType](#AddressType)\]|Addresses
[tel](Communication.xml#L75)|\[[PhoneNumberType](#PhoneNumberType)\]|Phone numbers
[email](Communication.xml#L78)|\[[EmailAddressType](#EmailAddressType)\]|Email addresses
[geo](Communication.xml#L81)|\[[GeoDataType](#GeoDataType)\]|Geographic locations
[url](Communication.xml#L84)|\[[UrlType](#UrlType)\]|URLs

## <a name="NameType"></a>[NameType](Communication.xml#L90)


Property|Type|Description
:-------|:---|:----------
[surname](Communication.xml#L91)|String|Surname or family name
[given](Communication.xml#L94)|String|Given name
[additional](Communication.xml#L97)|String|Additional names
[prefix](Communication.xml#L100)|String|Honorific prefix(es)
[suffix](Communication.xml#L103)|String|Honorific suffix(es)

## <a name="AddressType"></a>[AddressType](Communication.xml#L111)


Property|Type|Description
:-------|:---|:----------
[street](Communication.xml#L112)|String|Street address
[locality](Communication.xml#L115)|String|City or similar
[region](Communication.xml#L118)|String|State, province, or similar
[code](Communication.xml#L121)|String|Postal code
[country](Communication.xml#L124)|String|Country name
[pobox](Communication.xml#L128)|String|Post office box
[ext](Communication.xml#L131)|String|Extended address (e.g., apartment or suite number)
[label](Communication.xml#L134)|String|Delivery address label; plain-text string representing the formatted address, may contain line breaks
[type](Communication.xml#L138)|[ContactInformationType](#ContactInformationType)|Address type

## <a name="PhoneNumberType"></a>[PhoneNumberType](Communication.xml#L143)


Property|Type|Description
:-------|:---|:----------
[uri](Communication.xml#L144)|URL|This SHOULD use the tel: URL schema defined in RFC3966
[type](Communication.xml#L148)|[PhoneType](#PhoneType)|Telephone type

## <a name="EmailAddressType"></a>[EmailAddressType](Communication.xml#L153)


Property|Type|Description
:-------|:---|:----------
[address](Communication.xml#L154)|String|Email address
[type](Communication.xml#L157)|[ContactInformationType](#ContactInformationType)|Address type

## <a name="GeoDataType"></a>[GeoDataType](Communication.xml#L162)


Property|Type|Description
:-------|:---|:----------
[uri](Communication.xml#L163)|URL|This SHOULD use the geo: URL schema defined in RFC5870 which encodes the same information as an Edm.GeographyPoint
[type](Communication.xml#L168)|[ContactInformationType](#ContactInformationType)|Address type

## <a name="UrlType"></a>[UrlType](Communication.xml#L173)


Property|Type|Description
:-------|:---|:----------
[uri](Communication.xml#L174)|URL|This MUST use the URL schema defined in RFC3986
[type](Communication.xml#L178)|[ContactInformationType](#ContactInformationType)|URL type

## <a name="KindType"></a>[KindType](Communication.xml#L183)


Member|Value|Description
:-----|----:|:----------
[individual](Communication.xml#L184)|0|A single person or entity
[group](Communication.xml#L187)|1|A group of persons or entities
[org](Communication.xml#L190)|2|An organization
[location](Communication.xml#L193)|3|A named geographical place

## <a name="ContactInformationType"></a>[ContactInformationType](Communication.xml#L198)


Flag Member|Value|Description
:-----|----:|:----------
[work](Communication.xml#L199)|1|Related to an individual's work place
[home](Communication.xml#L202)|2|Related to an indivdual's personal life
[preferred](Communication.xml#L205)|4|Preferred-use contact information

## <a name="PhoneType"></a>[PhoneType](Communication.xml#L210)


Flag Member|Value|Description
:-----|----:|:----------
[work](Communication.xml#L211)|1|Work telephone number
[home](Communication.xml#L214)|2|Private telephone number
[preferred](Communication.xml#L217)|4|Preferred-use telephone number
[voice](Communication.xml#L220)|8|Voice telephone number
[cell](Communication.xml#L223)|16|Cellular or mobile telephone number
[fax](Communication.xml#L226)|32|Facsimile telephone number
[video](Communication.xml#L229)|64|Video conferencing telephone number

## <a name="GenderType"></a>[GenderType](Communication.xml#L234)


Member|Value|Description
:-----|----:|:----------
[M](Communication.xml#L235)|0|male
[F](Communication.xml#L238)|1|female
[O](Communication.xml#L241)|2|other
[N](Communication.xml#L244)|3|not applicable
[U](Communication.xml#L247)|4|unknown

## <a name="EventData"></a>[EventData](Communication.xml#L264)


Property|Type|Description
:-------|:---|:----------
[summary](Communication.xml#L265)|String|Short description of the event
[description](Communication.xml#L268)|String|More complete description
[categories](Communication.xml#L271)|\[String\]|Categories or subtypes of the event
[dtstart](Communication.xml#L274)|DateTimeOffset|Start date and time of the event
[dtend](Communication.xml#L277)|DateTimeOffset|Date and time by which the event ends, alternative to duration
[duration](Communication.xml#L280)|Duration|Duration of the event, alternative to dtend
[class](Communication.xml#L283)|String|Access classification, e.g. PUBLIC, PRIVATE, CONFIDENTIAL
[status](Communication.xml#L286)|String|Confirmation status, e.g. CONFIRMED, TENTATIVE, CANCELLED
[location](Communication.xml#L289)|String|Intended venue of the event
[transp](Communication.xml#L292)|Boolean|Time transparency for busy time searches, true = free, false = blocked
[wholeday](Communication.xml#L295)|Boolean|Wholeday event
[fbtype](Communication.xml#L298)|String|Free or busy time type, e.g. FREE, BUSY, BUSY-TENTATIVE

## <a name="TaskData"></a>[TaskData](Communication.xml#L307)


Property|Type|Description
:-------|:---|:----------
[summary](Communication.xml#L308)|String|Short description of the task
[description](Communication.xml#L311)|String|More complete description of the task
[due](Communication.xml#L314)|DateTimeOffset|Date and time that a to-do is expected to be completed
[completed](Communication.xml#L317)|DateTimeOffset|Date and time that a to-do was actually completed
[percentcomplete](Communication.xml#L320)|Byte|Percent completion of a to-do, e.g. 50 for half done
[priority](Communication.xml#L323)|Byte|Relative priority, 0 = undefined, 1 = highest, 9 = lowest

## <a name="MessageData"></a>[MessageData](Communication.xml#L332)


Property|Type|Description
:-------|:---|:----------
[from](Communication.xml#L333)|String|Author(s) of the message
[sender](Communication.xml#L336)|String|Agent responsible for the actual transmission of the message, e.g. a secretary
[to](Communication.xml#L339)|\[String\]|List of primary recipients
[cc](Communication.xml#L342)|\[String\]|List of other recipients (carbon copy)
[bcc](Communication.xml#L345)|\[String\]|List of recipients whose addresses are not to be revealed (blind carbon copy)
[subject](Communication.xml#L348)|String|Topic of the message
[body](Communication.xml#L351)|String|Main part of the message
[keywords](Communication.xml#L354)|\[String\]|List of important words and phrases that might be useful for the recipient
[received](Communication.xml#L357)|DateTimeOffset|Date and time the message was received
