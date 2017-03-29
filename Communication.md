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
[Contact](Communication.xml#L33)|[ContactType](#ContactType)|<a name="Contact"></a>Address book entry
[Address](Communication.xml#L117)|[AddressType](#AddressType)|<a name="Address"></a>Address
[IsEmailAddress](Communication.xml#L261)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsEmailAddress"></a>Property contains an email address
[IsPhoneNumber](Communication.xml#L265)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsPhoneNumber"></a>Property contains a phone number
[Event](Communication.xml#L269)|[EventData](#EventData)|<a name="Event"></a>Calendar entry
[Task](Communication.xml#L312)|[TaskData](#TaskData)|<a name="Task"></a>Task list entry
[Message](Communication.xml#L337)|[MessageData](#MessageData)|<a name="Message"></a>Email message

## <a name="ContactType"></a>[ContactType](Communication.xml#L36)


Property|Type|Description
:-------|:---|:----------
[fn](Communication.xml#L37)|String|Full name
[n](Communication.xml#L40)|[NameType](#NameType)|Name
[nickname](Communication.xml#L43)|String|Nickname
[photo](Communication.xml#L46)|URL|Image or photograph
[bday](Communication.xml#L50)|Date|Birthday
[anniversary](Communication.xml#L53)|Date|Date of marriage, or equivalent
[gender](Communication.xml#L56)|[GenderType](#GenderType)|Sex and gender identity
[title](Communication.xml#L60)|String|Position or job title
[role](Communication.xml#L63)|String|Function or part played in a particular situation
[org](Communication.xml#L66)|String|Organization Name defined by X.520
[orgunit](Communication.xml#L69)|String|Organization Unit defined by X.520
[kind](Communication.xml#L73)|[KindType](#KindType)|Kind of contact
[note](Communication.xml#L77)|String|Supplemental information or a comment associated with the contact
[adr](Communication.xml#L81)|\[[AddressType](#AddressType)\]|Addresses
[tel](Communication.xml#L84)|\[[PhoneNumberType](#PhoneNumberType)\]|Phone numbers
[email](Communication.xml#L87)|\[[EmailAddressType](#EmailAddressType)\]|Email addresses
[geo](Communication.xml#L90)|\[[GeoDataType](#GeoDataType)\]|Geographic locations
[url](Communication.xml#L93)|\[[UrlType](#UrlType)\]|URLs

## <a name="NameType"></a>[NameType](Communication.xml#L99)


Property|Type|Description
:-------|:---|:----------
[surname](Communication.xml#L100)|String|Surname or family name
[given](Communication.xml#L103)|String|Given name
[additional](Communication.xml#L106)|String|Additional names
[prefix](Communication.xml#L109)|String|Honorific prefix(es)
[suffix](Communication.xml#L112)|String|Honorific suffix(es)

## <a name="AddressType"></a>[AddressType](Communication.xml#L120)


Property|Type|Description
:-------|:---|:----------
[street](Communication.xml#L121)|String|Street address
[locality](Communication.xml#L124)|String|City or similar
[region](Communication.xml#L127)|String|State, province, or similar
[code](Communication.xml#L130)|String|Postal code
[country](Communication.xml#L133)|String|Country name
[pobox](Communication.xml#L137)|String|Post office box
[ext](Communication.xml#L140)|String|Extended address (e.g., apartment or suite number)
[label](Communication.xml#L143)|String|Delivery address label; plain-text string representing the formatted address, may contain line breaks
[type](Communication.xml#L147)|[ContactInformationType](#ContactInformationType)|Address type

## <a name="PhoneNumberType"></a>[PhoneNumberType](Communication.xml#L152)


Property|Type|Description
:-------|:---|:----------
[uri](Communication.xml#L153)|URL|This SHOULD use the tel: URL schema defined in RFC3966
[type](Communication.xml#L157)|[PhoneType](#PhoneType)|Telephone type

## <a name="EmailAddressType"></a>[EmailAddressType](Communication.xml#L162)


Property|Type|Description
:-------|:---|:----------
[address](Communication.xml#L163)|String|Email address
[type](Communication.xml#L166)|[ContactInformationType](#ContactInformationType)|Address type

## <a name="GeoDataType"></a>[GeoDataType](Communication.xml#L171)


Property|Type|Description
:-------|:---|:----------
[uri](Communication.xml#L172)|URL|This SHOULD use the geo: URL schema defined in RFC5870 which encodes the same information as an Edm.GeographyPoint
[type](Communication.xml#L177)|[ContactInformationType](#ContactInformationType)|Address type

## <a name="UrlType"></a>[UrlType](Communication.xml#L182)


Property|Type|Description
:-------|:---|:----------
[uri](Communication.xml#L183)|URL|This MUST use the URL schema defined in RFC3986
[type](Communication.xml#L187)|[ContactInformationType](#ContactInformationType)|URL type

## <a name="KindType"></a>[KindType](Communication.xml#L192)


Member|Value|Description
:-----|----:|:----------
[individual](Communication.xml#L193)|0|A single person or entity
[group](Communication.xml#L196)|1|A group of persons or entities
[org](Communication.xml#L199)|2|An organization
[location](Communication.xml#L202)|3|A named geographical place

## <a name="ContactInformationType"></a>[ContactInformationType](Communication.xml#L207)


Flag Member|Value|Description
:-----|----:|:----------
[work](Communication.xml#L208)|1|Related to an individual's work place
[home](Communication.xml#L211)|2|Related to an indivdual's personal life
[preferred](Communication.xml#L214)|4|Preferred-use contact information

## <a name="PhoneType"></a>[PhoneType](Communication.xml#L219)


Flag Member|Value|Description
:-----|----:|:----------
[work](Communication.xml#L220)|1|Work telephone number
[home](Communication.xml#L223)|2|Private telephone number
[preferred](Communication.xml#L226)|4|Preferred-use telephone number
[voice](Communication.xml#L229)|8|Voice telephone number
[cell](Communication.xml#L232)|16|Cellular or mobile telephone number
[fax](Communication.xml#L235)|32|Facsimile telephone number
[video](Communication.xml#L238)|64|Video conferencing telephone number

## <a name="GenderType"></a>[GenderType](Communication.xml#L243)


Member|Value|Description
:-----|----:|:----------
[M](Communication.xml#L244)|0|male
[F](Communication.xml#L247)|1|female
[O](Communication.xml#L250)|2|other
[N](Communication.xml#L253)|3|not applicable
[U](Communication.xml#L256)|4|unknown

## <a name="EventData"></a>[EventData](Communication.xml#L273)


Property|Type|Description
:-------|:---|:----------
[summary](Communication.xml#L274)|String|Short description of the event
[description](Communication.xml#L277)|String|More complete description
[categories](Communication.xml#L280)|\[String\]|Categories or subtypes of the event
[dtstart](Communication.xml#L283)|DateTimeOffset|Start date and time of the event
[dtend](Communication.xml#L286)|DateTimeOffset|Date and time by which the event ends, alternative to duration
[duration](Communication.xml#L289)|Duration|Duration of the event, alternative to dtend
[class](Communication.xml#L292)|String|Access classification, e.g. PUBLIC, PRIVATE, CONFIDENTIAL
[status](Communication.xml#L295)|String|Confirmation status, e.g. CONFIRMED, TENTATIVE, CANCELLED
[location](Communication.xml#L298)|String|Intended venue of the event
[transp](Communication.xml#L301)|Boolean|Time transparency for busy time searches, true = free, false = blocked
[wholeday](Communication.xml#L304)|Boolean|Wholeday event
[fbtype](Communication.xml#L307)|String|Free or busy time type, e.g. FREE, BUSY, BUSY-TENTATIVE

## <a name="TaskData"></a>[TaskData](Communication.xml#L316)


Property|Type|Description
:-------|:---|:----------
[summary](Communication.xml#L317)|String|Short description of the task
[description](Communication.xml#L320)|String|More complete description of the task
[due](Communication.xml#L323)|DateTimeOffset|Date and time that a to-do is expected to be completed
[completed](Communication.xml#L326)|DateTimeOffset|Date and time that a to-do was actually completed
[percentcomplete](Communication.xml#L329)|Byte|Percent completion of a to-do, e.g. 50 for half done
[priority](Communication.xml#L332)|Byte|Relative priority, 0 = undefined, 1 = highest, 9 = lowest

## <a name="MessageData"></a>[MessageData](Communication.xml#L341)


Property|Type|Description
:-------|:---|:----------
[from](Communication.xml#L342)|String|Author(s) of the message
[sender](Communication.xml#L345)|String|Agent responsible for the actual transmission of the message, e.g. a secretary
[to](Communication.xml#L348)|\[String\]|List of primary recipients
[cc](Communication.xml#L351)|\[String\]|List of other recipients (carbon copy)
[bcc](Communication.xml#L354)|\[String\]|List of recipients whose addresses are not to be revealed (blind carbon copy)
[subject](Communication.xml#L357)|String|Topic of the message
[body](Communication.xml#L360)|String|Main part of the message
[keywords](Communication.xml#L363)|\[String\]|List of important words and phrases that might be useful for the recipient
[received](Communication.xml#L366)|DateTimeOffset|Date and time the message was received
