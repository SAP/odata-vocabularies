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
Contact|[ContactType](#ContactType)|Address book entry
Address|[AddressType](#AddressType)|Address
IsEmailAddress|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|Property contains an email address
IsPhoneNumber|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|Property contains a phone number
Event|[EventData](#EventData)|Calendar entry
Task|[TaskData](#TaskData)|Task list entry
Message|[MessageData](#MessageData)|Email message

## <a name="ContactType"></a>ContactType


Property|Type|Description
:-------|:---|:----------
fn|String|Full name
n|[NameType](#NameType)|Name
nickname|String|Nickname
photo|URL|Image or photograph
bday|Date|Birthday
anniversary|Date|Date of marriage, or equivalent
gender|[GenderType](#GenderType)|Sex and gender identity
title|String|Position or job title
role|String|Function or part played in a particular situation
org|String|Organization Name defined by X.520
orgunit|String|Organization Unit defined by X.520
kind|[KindType](#KindType)|Kind of contact
note|String|Supplemental information or a comment associated with the contact
adr|\[[AddressType](#AddressType)\]|Addresses
tel|\[[PhoneNumberType](#PhoneNumberType)\]|Phone numbers
email|\[[EmailAddressType](#EmailAddressType)\]|Email addresses
geo|\[[GeoDataType](#GeoDataType)\]|Geographic locations
url|\[[UrlType](#UrlType)\]|URLs

## <a name="NameType"></a>NameType


Property|Type|Description
:-------|:---|:----------
surname|String|Surname or family name
given|String|Given name
additional|String|Additional names
prefix|String|Honorific prefix(es)
suffix|String|Honorific suffix(es)

## <a name="AddressType"></a>AddressType


Property|Type|Description
:-------|:---|:----------
street|String|Street address
locality|String|City or similar
region|String|State, province, or similar
code|String|Postal code
country|String|Country name
pobox|String|Post office box
ext|String|Extended address (e.g., apartment or suite number)
label|String|Delivery address label; plain-text string representing the formatted address, may contain line breaks
type|[ContactInformationType](#ContactInformationType)|Address type

## <a name="PhoneNumberType"></a>PhoneNumberType


Property|Type|Description
:-------|:---|:----------
uri|URL|This SHOULD use the tel: URL schema defined in RFC3966
type|[PhoneType](#PhoneType)|Telephone type

## <a name="EmailAddressType"></a>EmailAddressType


Property|Type|Description
:-------|:---|:----------
address|String|Email address
type|[ContactInformationType](#ContactInformationType)|Address type

## <a name="GeoDataType"></a>GeoDataType


Property|Type|Description
:-------|:---|:----------
uri|URL|This SHOULD use the geo: URL schema defined in RFC5870 which encodes the same information as an Edm.GeographyPoint
type|[ContactInformationType](#ContactInformationType)|Address type

## <a name="UrlType"></a>UrlType


Property|Type|Description
:-------|:---|:----------
uri|URL|This MUST use the URL schema defined in RFC3986
type|[ContactInformationType](#ContactInformationType)|URL type

## <a name="KindType"></a>KindType


Member|Value|Description
:-----|----:|:----------
individual|0|A single person or entity
group|1|A group of persons or entities
org|2|An organization
location|3|A named geographical place

## <a name="ContactInformationType"></a>ContactInformationType


Flag Member|Value|Description
:-----|----:|:----------
work|1|Related to an individual's work place
home|2|Related to an indivdual's personal life
preferred|4|Preferred-use contact information

## <a name="PhoneType"></a>PhoneType


Flag Member|Value|Description
:-----|----:|:----------
work|1|Work telephone number
home|2|Private telephone number
preferred|4|Preferred-use telephone number
voice|8|Voice telephone number
cell|16|Cellular or mobile telephone number
fax|32|Facsimile telephone number
video|64|Video conferencing telephone number

## <a name="GenderType"></a>GenderType


Member|Value|Description
:-----|----:|:----------
M|0|male
F|1|female
O|2|other
N|3|not applicable
U|4|unknown

## <a name="EventData"></a>EventData


Property|Type|Description
:-------|:---|:----------
summary|String|Short description of the event
description|String|More complete description
categories|\[String\]|Categories or subtypes of the event
dtstart|DateTimeOffset|Start date and time of the event
dtend|DateTimeOffset|Date and time by which the event ends, alternative to duration
duration|Duration|Duration of the event, alternative to dtend
class|String|Access classification, e.g. PUBLIC, PRIVATE, CONFIDENTIAL
status|String|Confirmation status, e.g. CONFIRMED, TENTATIVE, CANCELLED
location|String|Intended venue of the event
transp|Boolean|Time transparency for busy time searches, true = free, false = blocked
wholeday|Boolean|Wholeday event
fbtype|String|Free or busy time type, e.g. FREE, BUSY, BUSY-TENTATIVE

## <a name="TaskData"></a>TaskData


Property|Type|Description
:-------|:---|:----------
summary|String|Short description of the task
description|String|More complete description of the task
due|DateTimeOffset|Date and time that a to-do is expected to be completed
completed|DateTimeOffset|Date and time that a to-do was actually completed
percentcomplete|Byte|Percent completion of a to-do, e.g. 50 for half done
priority|Byte|Relative priority, 0 = undefined, 1 = highest, 9 = lowest

## <a name="MessageData"></a>MessageData


Property|Type|Description
:-------|:---|:----------
from|String|Author(s) of the message
sender|String|Agent responsible for the actual transmission of the message, e.g. a secretary
to|\[String\]|List of primary recipients
cc|\[String\]|List of other recipients (carbon copy)
bcc|\[String\]|List of recipients whose addresses are not to be revealed (blind carbon copy)
subject|String|Topic of the message
body|String|Main part of the message
keywords|\[String\]|List of important words and phrases that might be useful for the recipient
received|DateTimeOffset|Date and time the message was received
