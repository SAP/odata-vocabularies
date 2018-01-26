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
[Contact](Communication.xml#L36)|[ContactType](#ContactType)|<a name="Contact"></a>Address book entry
[Address](Communication.xml#L120)|[AddressType](#AddressType)|<a name="Address"></a>Address
[IsEmailAddress](Communication.xml#L264)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsEmailAddress"></a>Property contains an email address
[IsPhoneNumber](Communication.xml#L268)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsPhoneNumber"></a>Property contains a phone number
[Event](Communication.xml#L272)|[EventData](#EventData)|<a name="Event"></a>Calendar entry
[Task](Communication.xml#L315)|[TaskData](#TaskData)|<a name="Task"></a>Task list entry
[Message](Communication.xml#L340)|[MessageData](#MessageData)|<a name="Message"></a>Email message

## <a name="ContactType"></a>[ContactType](Communication.xml#L39)


Property|Type|Description
:-------|:---|:----------
[fn](Communication.xml#L40)|String|Full name
[n](Communication.xml#L43)|[NameType](#NameType)|Name
[nickname](Communication.xml#L46)|String|Nickname
[photo](Communication.xml#L49)|URL|Image or photograph
[bday](Communication.xml#L53)|Date|Birthday
[anniversary](Communication.xml#L56)|Date|Date of marriage, or equivalent
[gender](Communication.xml#L59)|[GenderType](#GenderType)|Sex and gender identity
[title](Communication.xml#L63)|String|Position or job title
[role](Communication.xml#L66)|String|Function or part played in a particular situation
[org](Communication.xml#L69)|String|Organization Name defined by X.520
[orgunit](Communication.xml#L72)|String|Organization Unit defined by X.520
[kind](Communication.xml#L76)|[KindType](#KindType)|Kind of contact
[note](Communication.xml#L80)|String|Supplemental information or a comment associated with the contact
[adr](Communication.xml#L84)|\[[AddressType](#AddressType)\]|Addresses
[tel](Communication.xml#L87)|\[[PhoneNumberType](#PhoneNumberType)\]|Phone numbers
[email](Communication.xml#L90)|\[[EmailAddressType](#EmailAddressType)\]|Email addresses
[geo](Communication.xml#L93)|\[[GeoDataType](#GeoDataType)\]|Geographic locations
[url](Communication.xml#L96)|\[[UrlType](#UrlType)\]|URLs

## <a name="NameType"></a>[NameType](Communication.xml#L102)


Property|Type|Description
:-------|:---|:----------
[surname](Communication.xml#L103)|String|Surname or family name
[given](Communication.xml#L106)|String|Given name
[additional](Communication.xml#L109)|String|Additional names
[prefix](Communication.xml#L112)|String|Honorific prefix(es)
[suffix](Communication.xml#L115)|String|Honorific suffix(es)

## <a name="AddressType"></a>[AddressType](Communication.xml#L123)


Property|Type|Description
:-------|:---|:----------
[street](Communication.xml#L124)|String|Street address
[locality](Communication.xml#L127)|String|City or similar
[region](Communication.xml#L130)|String|State, province, or similar
[code](Communication.xml#L133)|String|Postal code
[country](Communication.xml#L136)|String|Country name
[pobox](Communication.xml#L140)|String|Post office box
[ext](Communication.xml#L143)|String|Extended address (e.g., apartment or suite number)
[label](Communication.xml#L146)|String|Delivery address label; plain-text string representing the formatted address, may contain line breaks
[type](Communication.xml#L150)|[ContactInformationType](#ContactInformationType)|Address type

## <a name="PhoneNumberType"></a>[PhoneNumberType](Communication.xml#L155)


Property|Type|Description
:-------|:---|:----------
[uri](Communication.xml#L156)|URL|This SHOULD use the tel: URL schema defined in RFC3966
[type](Communication.xml#L160)|[PhoneType](#PhoneType)|Telephone type

## <a name="EmailAddressType"></a>[EmailAddressType](Communication.xml#L165)


Property|Type|Description
:-------|:---|:----------
[address](Communication.xml#L166)|String|Email address
[type](Communication.xml#L169)|[ContactInformationType](#ContactInformationType)|Address type

## <a name="GeoDataType"></a>[GeoDataType](Communication.xml#L174)


Property|Type|Description
:-------|:---|:----------
[uri](Communication.xml#L175)|URL|This SHOULD use the geo: URL schema defined in RFC5870 which encodes the same information as an Edm.GeographyPoint
[type](Communication.xml#L180)|[ContactInformationType](#ContactInformationType)|Address type

## <a name="UrlType"></a>[UrlType](Communication.xml#L185)


Property|Type|Description
:-------|:---|:----------
[uri](Communication.xml#L186)|URL|This MUST use the URL schema defined in RFC3986
[type](Communication.xml#L190)|[ContactInformationType](#ContactInformationType)|URL type

## <a name="KindType"></a>[KindType](Communication.xml#L195)


Member|Value|Description
:-----|----:|:----------
[individual](Communication.xml#L196)|0|A single person or entity
[group](Communication.xml#L199)|1|A group of persons or entities
[org](Communication.xml#L202)|2|An organization
[location](Communication.xml#L205)|3|A named geographical place

## <a name="ContactInformationType"></a>[ContactInformationType](Communication.xml#L210)


Flag Member|Value|Description
:-----|----:|:----------
[work](Communication.xml#L211)|1|Related to an individual's work place
[home](Communication.xml#L214)|2|Related to an indivdual's personal life
[preferred](Communication.xml#L217)|4|Preferred-use contact information

## <a name="PhoneType"></a>[PhoneType](Communication.xml#L222)


Flag Member|Value|Description
:-----|----:|:----------
[work](Communication.xml#L223)|1|Work telephone number
[home](Communication.xml#L226)|2|Private telephone number
[preferred](Communication.xml#L229)|4|Preferred-use telephone number
[voice](Communication.xml#L232)|8|Voice telephone number
[cell](Communication.xml#L235)|16|Cellular or mobile telephone number
[fax](Communication.xml#L238)|32|Facsimile telephone number
[video](Communication.xml#L241)|64|Video conferencing telephone number

## <a name="GenderType"></a>[GenderType](Communication.xml#L246)


Member|Value|Description
:-----|----:|:----------
[M](Communication.xml#L247)|0|male
[F](Communication.xml#L250)|1|female
[O](Communication.xml#L253)|2|other
[N](Communication.xml#L256)|3|not applicable
[U](Communication.xml#L259)|4|unknown

## <a name="EventData"></a>[EventData](Communication.xml#L276)


Property|Type|Description
:-------|:---|:----------
[summary](Communication.xml#L277)|String|Short description of the event
[description](Communication.xml#L280)|String|More complete description
[categories](Communication.xml#L283)|\[String\]|Categories or subtypes of the event
[dtstart](Communication.xml#L286)|DateTimeOffset|Start date and time of the event
[dtend](Communication.xml#L289)|DateTimeOffset|Date and time by which the event ends, alternative to duration
[duration](Communication.xml#L292)|Duration|Duration of the event, alternative to dtend
[class](Communication.xml#L295)|String|Access classification, e.g. PUBLIC, PRIVATE, CONFIDENTIAL
[status](Communication.xml#L298)|String|Confirmation status, e.g. CONFIRMED, TENTATIVE, CANCELLED
[location](Communication.xml#L301)|String|Intended venue of the event
[transp](Communication.xml#L304)|Boolean|Time transparency for busy time searches, true = free, false = blocked
[wholeday](Communication.xml#L307)|Boolean|Wholeday event
[fbtype](Communication.xml#L310)|String|Free or busy time type, e.g. FREE, BUSY, BUSY-TENTATIVE

## <a name="TaskData"></a>[TaskData](Communication.xml#L319)


Property|Type|Description
:-------|:---|:----------
[summary](Communication.xml#L320)|String|Short description of the task
[description](Communication.xml#L323)|String|More complete description of the task
[due](Communication.xml#L326)|DateTimeOffset|Date and time that a to-do is expected to be completed
[completed](Communication.xml#L329)|DateTimeOffset|Date and time that a to-do was actually completed
[percentcomplete](Communication.xml#L332)|Byte|Percent completion of a to-do, e.g. 50 for half done
[priority](Communication.xml#L335)|Byte|Relative priority, 0 = undefined, 1 = highest, 9 = lowest

## <a name="MessageData"></a>[MessageData](Communication.xml#L344)


Property|Type|Description
:-------|:---|:----------
[from](Communication.xml#L345)|String|Author(s) of the message
[sender](Communication.xml#L348)|String|Agent responsible for the actual transmission of the message, e.g. a secretary
[to](Communication.xml#L351)|\[String\]|List of primary recipients
[cc](Communication.xml#L354)|\[String\]|List of other recipients (carbon copy)
[bcc](Communication.xml#L357)|\[String\]|List of recipients whose addresses are not to be revealed (blind carbon copy)
[subject](Communication.xml#L360)|String|Topic of the message
[body](Communication.xml#L363)|String|Main part of the message
[keywords](Communication.xml#L366)|\[String\]|List of important words and phrases that might be useful for the recipient
[received](Communication.xml#L369)|DateTimeOffset|Date and time the message was received
