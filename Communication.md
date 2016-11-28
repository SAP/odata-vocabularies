# Communication Vocabulary
**Namespace: [com.sap.vocabularies.Communication.v1](com.sap.vocabularies.Communication.v1.xml)**

Terms for annotating communication-relevant information

These terms are inspired by
- RFC6350 vCard (http://tools.ietf.org/html/rfc6350)
- RFC5545 iCalendar (http://tools.ietf.org/html/rfc5545)
- RFC5322 Internet Message Format (http://tools.ietf.org/html/rfc5322)
- RFC6351 xCard: vCard XML Representation (https://tools.ietf.org/html/rfc6351)
        

Term|Type|Description
:---|:---|:----------
Contact|[ContactType](#ContactType)|Address book entry
Address|[AddressType](#AddressType)|Street Address
IsEmailAddress|[Tag](Org.OData.Core.V1.md#Tag)|Property contains an email address
IsPhoneNumber|[Tag](Org.OData.Core.V1.md#Tag)|Property contains a phone number
Event|[EventData](#EventData)|Calendar entry
Task|[TaskData](#TaskData)|Task list entry
Message|[MessageData](#MessageData)|Email message

## <a name="ContactType"></a>ContactType


Property|Type|Description
:-------|:---|:----------
fn|String|Full name
n|[NameType](#NameType)|
nickname|String|
photo|URL|
bday|Date|
anniversary|Date|
gender|[GenderType](#GenderType)|
title|String|
role|String|
org|String|Organization Name defined by X.520
orgunit|String|Organization Unit defined by X.520
kind|[KindType](#KindType)|
note|String|
adr|\[[AddressType](#AddressType)\]|
tel|\[[PhoneNumberType](#PhoneNumberType)\]|
email|\[[EmailAddressType](#EmailAddressType)\]|
geo|\[[GeoDataType](#GeoDataType)\]|
url|\[[UrlType](#UrlType)\]|

## <a name="NameType"></a>NameType


Property|Type|Description
:-------|:---|:----------
surname|String|
given|String|
additional|String|
prefix|String|
suffix|String|

## <a name="AddressType"></a>AddressType


Property|Type|Description
:-------|:---|:----------
street|String|
locality|String|City or similar
region|String|State, province, or similar
code|String|
country|String|
pobox|String|
ext|String|
label|String|
type|[ContactInformationType](#ContactInformationType)|

## <a name="PhoneNumberType"></a>PhoneNumberType


Property|Type|Description
:-------|:---|:----------
uri|URL|This SHOULD use the tel: URL schema defined in RFC3966
type|[PhoneType](#PhoneType)|

## <a name="EmailAddressType"></a>EmailAddressType


Property|Type|Description
:-------|:---|:----------
address|String|
type|[ContactInformationType](#ContactInformationType)|

## <a name="GeoDataType"></a>GeoDataType


Property|Type|Description
:-------|:---|:----------
uri|URL|This SHOULD use the geo: URL schema defined in RFC5870 which encodes the same information as an Edm.GeographyPoint
type|[ContactInformationType](#ContactInformationType)|

## <a name="UrlType"></a>UrlType


Property|Type|Description
:-------|:---|:----------
uri|URL|This MUST use the URL schema defined in RFC3986
type|[ContactInformationType](#ContactInformationType)|

## <a name="KindType"></a>KindType


Member|Value|Description
:-----|----:|:----------
individual|0|
group|1|
org|2|
location|3|

## <a name="ContactInformationType"></a>ContactInformationType


Flag Member|Value|Description
:-----|----:|:----------
work|1|
home|2|
preferred|4|

## <a name="PhoneType"></a>PhoneType


Flag Member|Value|Description
:-----|----:|:----------
work|1|
home|2|
preferred|4|
voice|8|
cell|16|
fax|32|
video|64|

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
summary|String|
description|String|
categories|\[String\]|
dtstart|DateTimeOffset|
dtend|DateTimeOffset|
duration|Duration|
class|String|
status|String|
location|String|
transp|Boolean|
wholeday|Boolean|
fbtype|String|

## <a name="TaskData"></a>TaskData


Property|Type|Description
:-------|:---|:----------
summary|String|
description|String|
due|DateTimeOffset|
completed|DateTimeOffset|
percentcomplete|Byte|
priority|Byte|

## <a name="MessageData"></a>MessageData


Property|Type|Description
:-------|:---|:----------
from|String|
sender|String|
to|\[String\]|
cc|\[String\]|
bcc|\[String\]|
subject|String|
body|String|
keywords|\[String\]|
received|DateTimeOffset|
