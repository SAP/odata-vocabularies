# SAP Annotations for OData Version 2.0

## Introduction

OData services provide a uniform interface for interacting with their resources, and in addition are self-describing:

- The <em>service document</em> (located at the service root) lists the available top-level resources, and
- The <em>service metadata document</em> (located at the address <code>$metadata</code> relative to the service root) describes the structure of all resources in the service.

This structural metadata makes it easy to understand a service, and human-readable documentation can be directly embedded into the metadata document, helping developers consume an OData service.

This alone is a huge benefit, yet metadata can be taken one step further by embedding <em>machine-readable</em> additional metadata that can be leveraged by development tools, client libraries, and generic clients to better interact with the service.

One area are <em>semantic annotations</em> that tell which of the OData properties contain e.g. a phone number, a part of a name or address, or something related to a calendar event or an analytic query. This is important for apps running on mobile devices that want to seamlessly integrate into contacts, calendar, and telephony.

The next area are <em>capability annotations</em> that describe which of the possible interactions defined by OData's uniform interface are supported by which parts of a concrete service. These annotations will e.g. tell whether an entity set allows inserts, updates, or deletes, whether it requires a filter, and which properties can be used in filter expressions. They also advertise capabilities that go beyond the base set defined by OData, e.g. whether an entity set allows [free-text search via an SAP-defined query option](#query-option-codesearchcode).

## Contents

- [Introduction](#introduction)
- [Contents](#contents)
- [AtomPub Service Document](#atompub-service-document)
  - [Element app:service](#element-appservice)
  - [Element app:collection](#element-appcollection)
- [Metadata Document](#metadata-document)
  - [Element edm:Schema](#element-edmschema)
  - [Element edm:EntityContainer](#element-edmentitycontainer)
  - [Element edm:EntitySet](#element-edmentityset)
    - [Attribute sap:semantics](#EntitySet-sapsemantics)
  - [Element edm:EntityType](#element-edmentitytype)
    - [Attribute sap:semantics](#EntityType-sapsemantics)
  - [Element edm:Property](#element-edmproperty)
    - [Attributes sap:unit and sap:precision](#attributes-sapunit-and-sapprecision)
    - [Attribute sap:field-control](#attribute-sapfield-control)
    - [Attribute sap:semantics](#Property-sapsemantics)
    - [Attribute sap:filter-restriction](#attribute-sapfilter-restriction)
    - [Attribute sap:aggregation-role](#attribute-sapaggregation-role)
    - [Attribute sap:parameter](#attribute-sapparameter)
    - [Attribute sap:preserve-flag-for](#attribute-sappreserve-flag-for)
  - [Element edm:NavigationProperty](#element-edmnavigationproperty)
  - [Element edm:FunctionImport](#element-edmfunctionimport)
    - [Element sap:value-constraint](#element-sapvalue-constraint)
  - [Element edm:Parameter](#element-edmparameter)
  - [Element edm:AssociationSet](#element-edmassociationset)
- [Instance Annotations](#instance-annotations)
- [Query Option search](#query-option-search)
- [Entity Set with Hierarchy](#entity-set-with-hierarchy)

## AtomPub Service Document

<a href="http://tools.ietf.org/html/rfc5023">AtomPub</a> allows extending the service document with elements and attributes from XML namespaces other than AtomPub. The following sections describe which elements of the service document (namespace prefix <code>app</code>) can be annotated with attributes and elements from the namespace `http://www.sap.com/Protocols/SAPData` (namespace prefix <code>sap</code>) and from the namespace <a href="http://www.w3.org/2005/Atom">http://www.w3.org/2005/Atom</a> (namespace prefix <code>atom</code>), and what these annotations mean.

### Element `app:service`

The <code>app:service</code> element can be annotated with two elements from the <code>atom</code> namespace:

<ul>
  <li>
    <p>
      <code>&lt;atom:link rel="self" href="..."/&gt;</code> contains the link to this service document, and</p>
  </li>
  <li>
    <p>
      <code>&lt;atom:link rel="latest-version" href="..."/&gt;</code> contains the link to latest version of this service.</p>
  </li>
</ul>

If the latest-version link deviates from the self link, a client may inspect the newer version of the service and decide (probably after asking its user) to switch over to the newer service version.

### Element `app:collection`

The <code>app:collection</code> element can be annotated with three elements:

<ul>
  <li>
    <p>
      <code>&lt;sap:member-title&gt;</code> contains the human-readable name or caption for a single member of the collection. This typically is the singular form of the content of the <code>&lt;atom:title&gt;</code> element of this collection.</p>
  </li>
  <li>
    <p>
      <code>&lt;atom:link rel="search" href="..."/&gt;</code> contains the link to an <a href="http://www.opensearch.org/Specifications/OpenSearch/1.1#OpenSearch_description_document">OpenSearch description document</a> that describes how to use free-text search for this collection. For those not familiar with OpenSearch: just append the <a href="#search">SAP-specific query option <code>search</code> </a>to the URL of the collection.</p>
  </li>
  <li>
    <p>
      <code>&lt;atom:link rel="http://www.sap.com/Protocols/SAPData/rel#subscribe" href="..."/&gt;</code> contains the link to the collection of the same service that allows subscribing to content changes of the annotated collection. For more information see the <a class="jive_macro jive_macro_blogpost">HowTo Guides - Subscription &amp; Notification with SAP NetWeaver Gateway - Series</a>.</p>
  </li>
</ul>

It can also contain the attribute <code>sap:addressable</code> with the same value as for the corresponding entity set in the metadata document.

## Metadata Document

OData's <a href="http://msdn.microsoft.com/en-us/library/dd541474.aspx">Conceptual Schema Definition Language (CSDL)</a> allows annotating most model elements with XML attributes or elements from foreign XML namespaces. The following sections describe which elements of the metadata document (namespace prefix <code>edm</code>) can be annotated with attributes and elements from the namespace <code>http://www.sap.com/Protocols/SAPData</code> (namespace prefix <code>sap</code>), and what these annotations mean. For binary attributes the meaning is described for the value "true".

### Element `edm:Schema`

Schemas can be annotated with the following attributes. If not stated explicitly, consumers can assume them to have the default value listed in the second column. This default value reflects the "normal" behavior.

<table border="1" class="jiveBorder wrapped" style="width: 100.0%;">

<colgroup> <col/> <col/> <col/> <col/> </colgroup>
<tbody>
<tr>
<th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
<strong>Attribute Name</strong>
</th>
<th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
<strong>Default Value</strong>
</th>
<th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
<strong>Meaning</strong>
</th>
<th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
<strong>Replaced by</strong>
</th>
</tr>
<tr>
<td colspan="1">
<p>schema-version</p>
</td>
<td colspan="1">
<p>0000</p>
</td>
<td colspan="1">A non-negative number indicating the version of the schema. This can be considered a sub/minor version of the service version. It should be incremented whenever additive changes are made in a subsequent shipment of the same service version, and it can be used by clients to detect whether the service meets their minimal data provisioning needs.</td>
<td colspan="1">
<a href="https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SchemaVersion">Core.SchemaVersion</a>
</td>
</tr>
</tbody>
</table>

### Element `edm:EntityContainer`

Entity containers can be annotated with the following attributes. If not stated explicitly, consumers can assume them to have the default value listed in the second column. This default value reflects the "normal" behavior.

<table border="1" class="jiveBorder wrapped" style="width: 100.0%;">
  <colgroup> <col/> <col/> <col/> </colgroup>
  <tbody>
    <tr>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <strong>Attribute Name</strong>
      </th>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <strong>Default Value</strong>
      </th>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <strong>Meaning</strong>
      </th>
    </tr>
    <tr>
      <td colspan="1">message-scope-supported</td>
      <td colspan="1">false</td>
      <td colspan="1">Service supports the request header <code>sap-message-scope</code>
      </td>
    </tr>
    <tr>
      <td colspan="1">supported-formats</td>
      <td colspan="1">atom json</td>
      <td colspan="1">A white-space separated list of format shortnames. Possible list items:<ul>
          <li>atom</li>
          <li>json</li>
          <li>xlsx</li>
        </ul>The default is <code>sap:supported-formats="atom json"</code>.</td>
    </tr>
    <tr>
      <td>
        <span>use-batch</span>
      </td>
      <td>false</td>
      <td>
        <span>Wrap all requests to resources of this service in batch requests; only the service document and the metadata document can be accessed unwrapped.This av</span> <span>oids exposing sensitive data in URLs (even with HTTPS URLs can be visible in log files)</span>
      </td>
    </tr>
  </tbody>
</table>

### Element `edm:EntitySet`

Entity sets can be annotated with the following attributes. If not stated explicitly, consumers can assume them to have the default value listed in the second column. This default value reflects the "normal" behavior that can be expected from any OData service.

<table border="1" class="jiveBorder wrapped" style="width: 100.0%;">
  <colgroup> <col/> <col/> <col/> </colgroup>
  <tbody>
    <tr>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <strong>Attribute Name</strong>
      </th>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <strong>Default Value</strong>
      </th>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <strong>Meaning</strong>
      </th>
    </tr>
    <tr>
      <td>label</td>
      <td>
        <span>-</span>
      </td>
      <td>
        <p>
          <span>Description, will also be used as atom:title in the service document</span>
        </p>
      </td>
    </tr>
    <tr>
      <td>
        <span>creatable</span>
      </td>
      <td>
        <span>true</span>
      </td>
      <td>
        <span>New entities can be created in this set</span>
      </td>
    </tr>
    <tr>
      <td>
        <span>updatable</span>
      </td>
      <td>
        <span>true</span>
      </td>
      <td>
        <span>Entities in this set can be updated. Must not be present if updatable-path is present.</span>
      </td>
    </tr>
    <tr>
      <td>
        <span>updatable-path</span>
      </td>
      <td>
        <span>-</span>
      </td>
      <td>Entities in this set can be updated or not depending on their state. The value of this attribute is a <a href="http://docs.oasis-open.org/odata/odata/v4.0/errata02/os/complete/part3-csdl/odata-v4.0-errata02-os-part3-csdl-complete.html#_The_edm:Path_Expression_3">path expression</a> that identifies a Boolean property in the context of the entity type of the entity set. The value of this property indicates whether the entity can be updated or not. Must not be present if updatable is present.<br/>The combined meaning of the annotations updatable and updatable-path is<ul style="list-style-type: disc;">
          <li>If an entity set is neither annotated with updatable nor updatable-path, its entities can be updated</li>
          <li>If an entity set is annotated both with updatable and updatable-path, the service is broken and the client should assume that entities in this set cannot be updated</li>
          <li>If an entity set is annotated with updatable=true, its entities can be updated</li>
          <li>If an entity set is annotated with updatable=false, its entities cannot be updated</li>
          <li>If an entity set is annotated with updatable-path, its entities can be updated depending on the value of the Boolean property identified with this path expression:</li>
          <ul style="list-style-type: circle;">
            <li>If updatable-path points to a property that does not exist, the service is broken and the client should assume that the entity cannot be updated</li>
            <li>If updatable-path points to a property that does not have the type Edm.Boolean, the service is broken and the client should assume that the entity cannot be updated</li>
            <li>If updatable-path points to a property of type Edm.Boolean that exists, and this property has the value true, the entity can be updated</li>
            <li>If updatable-path points to a property of type Edm.Boolean that exists, and this property has the value false, the entity cannot be updated</li>
            <li>If updatable-path points to a property of type Edm.Boolean that exists, and this property has the value null, the service does not know whether the property can be updated. Semantically such a service is broken and the client should assume that the entity cannot be updated</li>
          </ul>
        </ul>
        <br/>The same rules apply to the combination of deletable and deletable-path on entity sets and the combination of creatable and creatable-path on navigation properties.</td>
    </tr>
    <tr>
      <td>
        <span>deletable</span>
      </td>
      <td>
        <span>true</span>
      </td>
      <td>
        <span>Entities can be deleted from this set. Must not be present if deletable-path is present.</span>
      </td>
    </tr>
    <tr>
      <td>
        <span>deletable-path</span>
      </td>
      <td>
        <span>-</span>
      </td>
      <td>Entities in this set can be deleted or not depending on their state. The value of this attribute is a <a href="http://docs.oasis-open.org/odata/odata/v4.0/errata02/os/complete/part3-csdl/odata-v4.0-errata02-os-part3-csdl-complete.html#_The_edm:Path_Expression_3">path expression</a> that identifies a Boolean property in the context of the entity type of the entity set. The value of this property indicates whether the entity can be deleted or not. Must not be present if deletable is present.<br/>See notes in updatable-path for combined meaning of deletable and deletable-path.</td>
    </tr>
    <tr>
      <td>
        <span>searchable</span>
      </td>
      <td>
        <span>false</span>
      </td>
      <td>
        <span>Supports custom query option <code>search</code> </span>
      </td>
    </tr>
    <tr>
      <td>
        <span>pageable</span>
      </td>
      <td>
        <span>true</span>
      </td>
      <td>
        <span>Supports system query options <code>$top</code> and <code>$skip</code> </span>
      </td>
    </tr>
    <tr>
      <td>
        <span>topable</span>
      </td>
      <td>
        <span>true</span>
      </td>
      <td>
        <span>Supports system query option <code>$top</code> </span>
      </td>
    </tr>
    <tr>
      <td>
        <span>countable</span>
      </td>
      <td>
        <span>true</span>
      </td>
      <td>
        <span>Supports system query option <code>$inlinecount=allpages</code> and path suffix <code>/$count</code> </span>
      </td>
    </tr>
    <tr>
      <td>
        <span>addressable</span>
      </td>
      <td>
        <span>true</span>
      </td>
      <td>
        <span>Use “false” if this entity set can only be accessed within its containing entity, e.g. Conditions within SalesOrders through SalesOrders(4711)/Conditions. Direct access to non-addressable entity collections will result in a 4xx response code. The set may however allow access to single entities identified by their key properties values, e.g. SalesOrderConditions(OrderID=4711,ConditionID=3)</span>
      </td>
    </tr>
    <tr>
      <td>
        <span>requires-filter</span>
      </td>
      <td>
        <span>false</span>
      </td>
      <td>
        <span>Use “true” if this set cannot be queried without providing a <code>$filter</code> expression. If accessed without a filter expression, it will respond with a human-readable error message explaining which kinds of filter expressions are required as a minimum</span>
      </td>
    </tr>
    <tr>
      <td>change-tracking</td>
      <td>false</td>
      <td>Changes to entities of this set can be tracked. Consumers can subscribe by adding an HTTP Prefer header odata.track-changes to the request. The response will then include a delta link for requesting information about changes in the future.</td>
    </tr>
    <tr>
      <td>maxpagesize</td>
      <td>-</td>
      <td>Maximum number of entities returned in an OData response. If more entities are included in the result of an OData request, the service applies server-driven paging.</td>
    </tr>
    <tr>
      <td>delta-link-validity</td>
      <td>-</td>
      <td>The maximum duration in seconds a delta link in an OData response remains valid. Afterwards, resources associated with the change tracking subscription may be cleaned up and will be no longer available.</td>
    </tr>
    <tr>
      <td>
        <span>semantics</span>
      </td>
      <td>
        <span>-</span>
      </td>
      <td>
        <span>See table below</span>
      </td>
    </tr>
  </tbody>
</table>

#### <a name="EntitySet-sapsemantics"></a>Attribute `sap:semantics`

This attribute can take the following values in the context of an entity type:

<table border="1" class="jiveBorder wrapped" style="width: 100.0%;">
  <colgroup> <col/> <col/> </colgroup>
  <tbody>
    <tr>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <span> <strong>Value</strong> </span>
      </th>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <span> <strong>Meaning</strong> </span>
      </th>
    </tr>
    <tr>
      <td>
        <span>aggregate</span>
      </td>
      <td>
        <span>The entities of this set are automatically aggregated if the query option <code>$select</code> is specified. Each property listed in <code>$select</code> is treated according to its aggregation role. See description of attribute </span> <code>sap:semantics="aggregate"</code> for <code>Edm:EntityType</code> <span>below.</span>
      </td>
    </tr>
    <tr>
      <td colspan="1">timeseries</td>
      <td colspan="1">The entities of this set are snapshots of data that changes over time. One of the key properties represents the temporal dimension.</td>
    </tr>
  </tbody>
</table>

### Element `edm:EntityType`

Entity types can be annotated with the following attributes:

<table border="1" class="jiveBorder wrapped">
  <colgroup> <col/> <col/> </colgroup>
  <tbody>
    <tr>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <strong>Attribute Name</strong>
      </th>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <strong>Meaning</strong>
      </th>
    </tr>
    <tr>
      <td>
        <span>label</span>
      </td>
      <td>
        <p>
          <span>Description, will also be used as sap:member-title in the service document</span>
        </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>
          <span>semantics</span>
        </p>
      </td>
      <td>
        <span>See table below</span>
      </td>
    </tr>
  </tbody>
</table>

#### <a name="EntityType-sapsemantics"></a>Attribute `sap:semantics`

This attribute can take the following values in the context of an entity type:

<div>
  <table border="1" class="jiveBorder wrapped" style="width: 100.0%;">
    <colgroup> <col/> <col/> </colgroup>
    <tbody>
      <tr>
        <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
          <strong>Value</strong>
        </th>
        <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
          <strong>Meaning</strong>
        </th>
      </tr>
      <tr>
        <td>vcard</td>
        <td>
          <span>Entities of this type contain contact information following the vCard standard, see values for <a href="#Property-sapsemantics"><code>sap:semantics</code> on property level</a></span>
        </td>
      </tr>
      <tr>
        <td>vevent</td>
        <td>
          <span>Entities of this type contain event/appointment information following the <span> <a href="http://tools.ietf.org/html/rfc5545#section-3.2.9">iCalendar standard</a></span>, see values for <a href="#Property-sapsemantics"><code>sap:semantics</code> on property level</a> </span>
        </td>
      </tr>
      <tr>
        <td>
          <p>
            <span>vtodo</span>
          </p>
        </td>
        <td>
          <span>Entities of this type contain todo/task information following the <span> <a href="http://tools.ietf.org/html/rfc5545#section-3.2.9">iCalendar standard</a> </span>, see values for <a href="#Property-sapsemantics"><code>sap:semantics</code> on property level</a> </span>
        </td>
      </tr>
      <tr>
        <td>parameters</td>
        <td>
          <span>This entity type represents parameters for another entity type to which it has a collection-valued association</span>
        </td>
      </tr>
      <tr>
        <td>aggregate</td>
        <td>
          Entity sets of a type with this semantics return result feeds with aggregated values for properties annotated with <code>sap:aggregation-role="measure"</code> mentioned in the $select system query option. The result consists of entities for all combinations of distinct values of all dimension properties annotated with <code>sap:aggregation-role="dimension"</code> mentioned in the $select system query option of the request matching the <code>$filter</code> expression. See also description of annotation <code>sap:aggregation-role</code>.
        </td>
      </tr>
      <tr>
        <td>variant</td>
        <td>
          <span>This entity type represents query selection variants bundling parameter selections and filter expressions for obtaining specific query results</span>
        </td>
      </tr>
    </tbody>
  </table>

### Element `edm:Property`

  <div>
  
  The annotation <code>sap:label</code> is required for properties. All other annotations are optional.

  <table border="1" class="jiveBorder wrapped" style="width: 100.0%;">
      <colgroup> <col/> <col/> <col/> </colgroup>
      <tbody>
        <tr>
          <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
            <strong>Attribute Name</strong>
          </th>
          <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
            <strong>Default Value</strong>
          </th>
          <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
            <strong>Meaning</strong>
          </th>
        </tr>
        <tr>
          <td>label</td>
          <td>-</td>
          <td>A short, human-readable text suitable for labels and captions in UIs</td>
        </tr>
        <tr>
          <td>heading</td>
          <td>-</td>
          <td>A short, human-readable text suitable for column headings in UIs</td>
        </tr>
        <tr>
          <td>quickinfo</td>
          <td>-</td>
          <td>A human-readable text suitable for tool tips in UIs</td>
        </tr>
        <tr>
          <td>semantics</td>
          <td>-</td>
          <td>See table below</td>
        </tr>
        <tr>
          <td>creatable</td>
          <td>true</td>
          <td>Values for this property can be chosen by client when creating an instance. “False” if value is always set by the server, e.g. document number from number range.</td>
        </tr>
        <tr>
          <td>updatable</td>
          <td>true</td>
          <td>Values of this property can be changed. Must be “false” if it is “false” at entity set level. If updatability can change per entity or based on the entities' state, do not use this static annotation and use <code>sap:field-control</code> instead.</td>
        </tr>
        <tr>
          <td>sortable</td>
          <td>true</td>
          <td>
            <span>Can be used in $orderby system query option.</span>
          </td>
        </tr>
        <tr>
          <td>filterable</td>
          <td>true</td>
          <td>Can be used in $filter system query option.</td>
        </tr>
        <tr>
          <td>required-in-filter</td>
          <td>false</td>
          <td>
            <span>Must be used in $filter system query option.</span>
          </td>
        </tr>
        <tr>
          <td>filter-restriction</td>
          <td>-</td>
          <td>See table below</td>
        </tr>
        <tr>
          <td>text</td>
          <td>-</td>
          <td>
            <span>A </span> <a href="http://docs.oasis-open.org/odata/odata/v4.0/errata02/os/complete/part3-csdl/odata-v4.0-errata02-os-part3-csdl-complete.html#_The_edm:Path_Expression_3">path expression</a> <span> that identifies a property in the context of the entity type </span>containing a human-readable text for the value of this property.</td>
        </tr>
        <tr>
          <td>unit</td>
          <td>-</td>
          <td>
            <span>A </span> <a href="http://docs.oasis-open.org/odata/odata/v4.0/errata02/os/complete/part3-csdl/odata-v4.0-errata02-os-part3-csdl-complete.html#_The_edm:Path_Expression_3">path expression</a> <span> that identifies a property in the context of the entity type</span> containing the currency code or unit of measure for a numeric value.</td>
        </tr>
        <tr>
          <td>precision</td>
          <td>-</td>
          <td>
            <span>A </span> <a href="http://docs.oasis-open.org/odata/odata/v4.0/errata02/os/complete/part3-csdl/odata-v4.0-errata02-os-part3-csdl-complete.html#_The_edm:Path_Expression_3">path expression</a> <span> that identifies a property in the context of the entity type</span> containing the number of significant decimal places for a numeric value.</td>
        </tr>
        <tr>
          <td colspan="1">visible</td>
          <td colspan="1">true</td>
          <td colspan="1">Values of this property are typically visible to end users. If visibility can change per entity or based on the entities' state, do not use this static annotation and use <code>sap:field-control</code> instead.</td>
        </tr>
        <tr>
          <td>field-control</td>
          <td>3</td>
          <td>
            <p>A <a href="http://docs.oasis-open.org/odata/odata/v4.0/errata02/os/complete/part3-csdl/odata-v4.0-errata02-os-part3-csdl-complete.html#_The_edm:Path_Expression_3">path expression</a> <span> that identifies a </span>property containing a numeric value that controls visibility:</p>
            <ul>
              <li>
                <span>0 = hidden, </span>
              </li>
              <li>
                <span>1 = read-only, </span>
              </li>
              <li>
                <span>3 = optional, </span>
              </li>
              <li>
                <span>7 = mandatory</span>
              </li>
            </ul>
            <p>
              <span>See section below for details</span>
            </p>
          </td>
        </tr>
        <tr>
          <td>validation-regexp</td>
          <td>-</td>
          <td>Values for this property have to match the specified regular expression. The regular expression is a <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions" title="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions">JavaScript Regular Expression</a>.</td>
        </tr>
        <tr>
          <td>display-format</td>
          <td>-</td>
          <td>
            <p>There are currently three possible values:</p>
            <ul>
              <li>“Date” indicates that only the date part of an Edm.DateTime value is relevant</li>
              <li>"NonNegative" indicates that only non-negative numeric values are provided and persisted, other input will lead to errors. Intended for Edm.String fields that are internally stored as NUMC</li>
              <li>"UpperCase" indicates that uppercase values are provided and persisted, lowercase input will be converted</li>
            </ul>
          </td>
        </tr>
        <tr>
          <td colspan="1">value-list</td>
          <td colspan="1">-</td>
          <td colspan="1">
            <p>A string indicating whether this property has a value list attached:</p>
            <ul>
              <li>fixed-values - there is a short list of allowed field values that rarely changes over time</li>
              <li>standard - no restriction on number and volatility of allowed field values</li>
            </ul>
            <p>The list of allowed values is provided as a separate entity set that can be found by interpreting the V4-style annotation <a href="https://wiki.scn.sap.com/wiki/display/EmTech/OData+4.0+Vocabularies+-+SAP+Common#ValueList"> <code>Common.ValueList</code> </a> on the same property.</p>
          </td>
        </tr>
        <tr>
          <td>lower-boundary</td>
          <td>-</td>
          <td>
            <div>A property holding the upper boundary of a value range includes this attribute. The value of this attribute is always the name of another property in the same type. It points to the property holding the related lower boundary.</div>
          </td>
        </tr>
        <tr>
          <td>upper-boundary</td>
          <td>-</td>
          <td>
            <div>A property holding the lower boundary of a value range includes this attribute. The value of this attribute is always the name of another property in the same type. It points to the property holding the related upper boundary.</div>
          </td>
        </tr>
        <tr>
          <td>aggregation-role</td>
          <td>-</td>
          <td>See table below</td>
        </tr>
        <tr>
          <td>super-ordinate</td>
          <td>-</td>
          <td>
            <div>If values of this property are meaningful (unique) only in the context provided by the value of another property, then this attribute holds the name of the context-providing property. The value of this attribute is always the name of another property in the same type.</div>
          </td>
        </tr>
        <tr>
          <td>attribute-for</td>
          <td>-</td>
          <td>
            <div>A property representing an attribute of another property includes this attribute. The value of this attribute is always the name of another property in the same type. It points to the property for which this property is an attribute.</div>
          </td>
        </tr>
        <tr>
          <td>hierarchy-node-for</td>
          <td>-</td>
          <td>A non-key property holding node IDs for a hierarchy structure of values of some other property includes this attribute. The value of this attribute is always the name of another property in the same type. It points to the property for whose values the hierarchy is defined. An OData request with a $filter condition testing equality of a property holding hierarchy node IDs with a specific node ID selects all entities in the sub-hierarchy with the root node identified by the given node ID.</td>
        </tr>
        <tr>
          <td colspan="1">hierarchy-node-external-key-for</td>
          <td colspan="1">-</td>
          <td colspan="1">A property holding the external key of a hierarchy node includes this attribute. The external key is a human-readable identification of a node. The value of this attribute is always the name of another property in the same type. It points to the related property holding the hierarchy node ID.</td>
        </tr>
        <tr>
          <td>hierarchy-level-for</td>
          <td>-</td>
          <td>A property holding level numbers for a hierarchy structure of values of some other property includes this attribute. The value of this attribute is always the name of another property in the same type. It points to the related property holding the hierarchy node ID. A property holding level numbers has an integer data type. The root node of the hierarchy is at level 0.</td>
        </tr>
        <tr>
          <td>hierarchy-parent-node-for</td>
          <td>-</td>
          <td>A property holding parent node IDs for a hierarchy structure of values of some other property includes this attribute. The value of this attribute is always the name of another property in the same type. It points to the related property holding the hierarchy node ID. For the root node of the hierarchy the parent node ID is null.</td>
        </tr>
        <tr>
          <td colspan="1">hierarchy-parent-navigation-for</td>
          <td colspan="1">-</td>
          <td colspan="1">A navigation property for accessing the parent entity of a node. It offers an alternative method for accessing the parent node ID, if the entity type does not have a dedicated property for that.</td>
        </tr>
        <tr>
          <td>hierarchy-drill-state-for</td>
          <td>-</td>
          <td>A property holding the drill state of a hierarchy node includes this attribute. The drill state is indicated by one of the following values: collapsed, expanded, leaf. The value of this attribute is always the name of another property in the same type. It points to the related property holding the hierarchy node ID. For an expanded node, its children are included in the result collection. For a collapsed node, the children are included in the entity set, but they are not part of the result collection. Retrieving them requires a relaxed filter expression or a separate request filtering on the parent node ID with the ID of the collapsed node. A leaf does not have any child in the entity set.</td>
        </tr>
        <tr>
          <td colspan="1">hierarchy-node-descendant-count-for</td>
          <td colspan="1">-</td>
          <td colspan="1">A property holding the descendant count for a hierarchy node includes this attribute. The descendant count of a node is the number of its descendants in the hierarchy structure of the result considering only those nodes matching any specified $filter and $search. The value of this attribute is always the name of another property in the same type. It points to the related property holding the hierarchy node ID. A property holding descendant counts has an integer data type.</td>
        </tr>
        <tr>
          <td colspan="1">hierarchy-preorder-rank-for</td>
          <td colspan="1">-</td>
          <td colspan="1">
            <p>A property holding the preorder rank for a hierarchy node includes this attribute. The preorder rank of a node expresses its position in the sequence of nodes created from preorder traversal of the hierarchy structure after evaluating the $filter expression in the request excluding any conditions on key properties. The value of this attribute is always the name of another property in the same type. It points to the related property holding the hierarchy node ID. A property holding preorder ranks has an integer data type. The first node in preorder traversal has rank 0.</p>
          </td>
        </tr>
        <tr>
          <td colspan="1">hierarchy-sibling-rank-for</td>
          <td colspan="1">-</td>
          <td colspan="1">
            <p>A property holding the sibling rank for a hierarchy node includes this attribute. The sibling rank of a node is the index of the node in the sequence of all nodes with the same parent created by preorder traversal of the hierarchy structure after evaluating the $filter expression in the request excluding any conditions on key properties. The value of this attribute is always the name of another property in the same type. It points to the related property holding the hierarchy node ID. A property holding sibling positions has an integer data type. The first sibling is at position 0.</p>
          </td>
        </tr>
        <tr>
          <td>parameter</td>
          <td>-</td>
          <td>See table below</td>
        </tr>
        <tr>
          <td>is-annotation</td>
          <td>false</td>
          <td>
            <span>Represents an instance annotation.</span>
          </td>
        </tr>
        <tr>
          <td>
            <a name="updatable-path"></a>updatable-path
          </td>
          <td>-</td>
          <td>
            <p>If a property can be updated or not depending on the state of its entity, it can be annotated with this attribute. The value of this attribute is always <span>a </span> <a href="http://docs.oasis-open.org/odata/odata/v4.0/errata02/os/complete/part3-csdl/odata-v4.0-errata02-os-part3-csdl-complete.html#_The_edm:Path_Expression_3">path expression</a> <span> that identifies a Boolean property in the context of the entity type</span>. This related property indicates whether the annotated property can be updated for the containing entity or not.</p>
            <p>Note: if used in addition to the more expressive <a href="#attribute-sapfield-control">field-control</a> annotation, the values of the two must be in sync.</p>
          </td>
        </tr>
        <tr>
          <td>preserve-flag-for</td>
          <td>-</td>
          <td>See below</td>
        </tr>
        <tr>
          <td>filter-for</td>
          <td>-</td>
          <td>A property whose value is a <code>$filter</code> expression includes this attribute. The <code>$filter</code> expression must be valid for the entity type specified in this attribute.</td>
        </tr>
        <tr>
          <td colspan="1">variable-scale</td>
          <td colspan="1">false</td>
          <td colspan="1">
            <p>A property of type <code>Edm.Decimal</code> that does not have a <code>Scale</code> facet and is annotated with <code>true</code> will contain floating-point values.</p>
            <p>This indicates that the underlying data store field uses a <a href="https://en.wikipedia.org/wiki/Decimal_data_type">data type with decimal mantissa and variable or floating scale</a> which cannot be expressed in the OData V2 type system.</p>
            <p>Note: omitted <code>Scale</code> <span> for type <code>Edm.Decimal</code> usually means <code>Scale="0"</code>, restricting the value range to integers.</span>
            </p>
          </td>
        </tr>
        <tr>
          <td colspan="1">text-for</td>
          <td colspan="1">-</td>
          <td colspan="1">
            <span>A </span> <a class="external-link" href="http://docs.oasis-open.org/odata/odata/v4.0/errata02/os/complete/part3-csdl/odata-v4.0-errata02-os-part3-csdl-complete.html#_The_edm:Path_Expression_3" rel="nofollow">path expression</a> <span> </span>that identifies a property in the context of the entity type for which this property provides an additional human-readable text.</td>
        </tr>
      </tbody>
    </table>
    
#### Attributes `sap:unit` and `sap:precision`
    
Amounts in a currency or absolute measures MUST be represented as simple properties with an appropriate numeric Edm type, preferably <code>Edm.Decimal</code>. These numeric properties SHOULD refer to a string property containing the ISO currency or unit of measure with the <code>sap:unit</code> attribute. They MAY refer to a numeric property containing the (non-negative) number of decimal places to be used for displaying the amount or measure with the <code>sap:precision</code> attribute.</div>
  <div>
    <p>Example in metadata document:</p>
  </div>
  <pre>&lt;Property Name="OrderedQuantity" Type="Edm.Int16 " sap:unit="OrderedUnit" /&gt;<br/>&lt;Property Name="OrderedUnit" Type="Edm.String " sap:semantics="unit-of-measure" /&gt;<br/>&lt;Property Name ="Price" Type ="Edm.Decimal" Precision="10" Scale ="3" sap:unit ="Currency" sap:precision="DisplayScale" /&gt;  </pre>
  <pre>&lt;Property Name="DisplayScale" Type ="Edm.Byte" /&gt;<br/>&lt;Property Name="Currency" Type ="Edm.String" sap:semantics="currency-code" sap:text="CurrencyText" /&gt;<br/>&lt;Property Name="CurrencyText" Type="Edm.String" /&gt;</pre>
  <p>Example in Atom entry:</p>
  <pre>&lt;d:OrderedQuantity&gt;50&lt;/d:OrderedQuantity&gt;<br/>&lt;d:OrderedUnit&gt;KGM&lt;/d:OrderedUnit&gt;<br/>&lt;d:Price&gt;86.9&lt;/d:Price&gt;</pre>
  <pre>&lt;d:DisplayScale&gt;2&lt;/d:DisplayScale&gt;<br/>&lt;d:Currency&gt;EUR&lt;/d:Currency&gt;<br/>&lt;d:CurrencyText&gt;Euro&lt;/d:CurrencyText&gt;</pre>
  <p>Using a reference attribute instead of predefined complex types like Measure or Money with amount and unit properties allows several amounts to share the same unit. Transporting the amounts as “raw” numeric values instead of preformatted strings allows clients to format them according to device-specific settings (that may well differ from the server-side user settings) or process them on the client (if e.g. the client is Excel).</p>

#### Attribute `sap:field-control`

<div>
  <p>Whether a property can or must contain a value may depend on the state of its entity, so it is impossible to express this up-front via metadata annotations. In these cases the "edit state" of the property can be expressed via a separate "field control" property, and the link between data properties and their field-control properties is expressed with the <code>sap:field-control</code> attribute.</p>
  <p>Example in metadata document:</p>
  <pre>&lt;Property Name="Street" Type="Edm.String" sap:field-control="Address_fc" /&gt;<br/>&lt;Property Name="City" Type="Edm.String" sap:field-control="Address_fc" /&gt;<br/>&lt;Property Name="Address_fc" Type="Edm.Byte" /&gt;</pre>
  <p>
    <span>The field-control property can be in the same type as shown above, or it can be in a nested complex type, or in an entity type that is associated 1:1. This allows separating field-control data from "real" data. If for example the field-control property is contained in a complex property or navigation property named <code>fc</code>, the attribute value is a path relative to the parent of the annotated property, e.g. <code>sap:field-control="fc/Address"</code>. </span>
  </p>

The possible values for a field-control property are:

<table border="1" class="jiveBorder wrapped" style="width: 100.0%;">
  <tbody>
    <tr>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <strong>Value</strong>
      </th>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <strong>Meaning</strong>
      </th>
    </tr>
    <tr>
      <td>7</td>
      <td>Mandatory - property must contain a value</td>
    </tr>
    <tr>
      <td>3</td>
      <td>Optional - property may contain a null value</td>
    </tr>
    <tr>
      <td>1</td>
      <td>Read-only - property cannot be changed</td>
    </tr>
    <tr>
      <td>0</td>
      <td>Hidden - property should not be visible on user interfaces</td>
    </tr>
  </tbody>
</table>

#### <a name="Property-sapsemantics"></a>Attribute `sap:semantics`

The possible values in the context of a property are:

  <div>
    <table border="1" class="jiveBorder wrapped" style="width: 100.0%;">
      <colgroup> <col/> <col/> </colgroup>
      <tbody>
        <tr>
          <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
            <strong>Value</strong>
          </th>
          <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
            <strong>Meaning</strong>
          </th>
        </tr>
        <tr>
          <td>tel</td>
          <td>Telephone number</td>
        </tr>
        <tr>
          <td>tel;type=cell,work</td>
          <td>Work cellphone number; see explanation below table for more values</td>
        </tr>
        <tr>
          <td>tel;type=fax</td>
          <td>Fax number</td>
        </tr>
        <tr>
          <td>email</td>
          <td>Email address</td>
        </tr>
        <tr>
          <td>email;type=pref</td>
          <td>Preferred email address</td>
        </tr>
        <tr>
          <td>url</td>
          <td>Web URL</td>
        </tr>
        <tr>
          <td>name</td>
          <td>Formatted text of the full name</td>
        </tr>
        <tr>
          <td>givenname</td>
          <td>First name or given name of a person</td>
        </tr>
        <tr>
          <td>middlename</td>
          <td>Middle name of a person</td>
        </tr>
        <tr>
          <td>familyname</td>
          <td>Last name or family name of a person</td>
        </tr>
        <tr>
          <td>nickname</td>
          <td>Descriptive name given instead of or in addtion to the one marked as "name"</td>
        </tr>
        <tr>
          <td>honorific</td>
          <td>Title of a person (Ph.D., Dr., ...)</td>
        </tr>
        <tr>
          <td>suffix</td>
          <td>Suffix to the name of a person</td>
        </tr>
        <tr>
          <td>note</td>
          <td>Supplemental information or a comment that is associated with the vCard</td>
        </tr>
        <tr>
          <td>photo</td>
          <td>URL of a photo of a person</td>
        </tr>
        <tr>
          <td>city</td>
          <td>Address: city</td>
        </tr>
        <tr>
          <td>street</td>
          <td>Address: street</td>
        </tr>
        <tr>
          <td>country</td>
          <td>Address: country</td>
        </tr>
        <tr>
          <td>region</td>
          <td>Address: state or province</td>
        </tr>
        <tr>
          <td>
            <div>zip</div>
          </td>
          <td>Address: postal code</td>
        </tr>
        <tr>
          <td>pobox</td>
          <td>Address: post office box</td>
        </tr>
        <tr>
          <td>org</td>
          <td>Organization name</td>
        </tr>
        <tr>
          <td>org-unit</td>
          <td>Organizational unit</td>
        </tr>
        <tr>
          <td>org-role</td>
          <td>Organizational role</td>
        </tr>
        <tr>
          <td>title</td>
          <td>Job title</td>
        </tr>
        <tr>
          <td>bday</td>
          <td>Birth date</td>
        </tr>
        <tr>
          <td>summary</td>
          <td>Calendar: summary of a calendar component</td>
        </tr>
        <tr>
          <td>description</td>
          <td>Calendar: description of a calendar component, detailing the summary</td>
        </tr>
        <tr>
          <td>categories</td>
          <td>Calendar: comma-separated list of categories for a calendar component</td>
        </tr>
        <tr>
          <td>dtstart</td>
          <td>Calendar: the date and time that a calendar component starts</td>
        </tr>
        <tr>
          <td>dtend</td>
          <td>Calendar: the date and time that a calendar component ends</td>
        </tr>
        <tr>
          <td>duration</td>
          <td>Calendar: duration as an alternative to dtend, see <a href="http://www.w3.org/TR/xmlschema11-2/#duration">xs:duration</a>
          </td>
        </tr>
        <tr>
          <td>due</td>
          <td>Calendar: the date and time that a to-do is expected to be completed</td>
        </tr>
        <tr>
          <td>completed</td>
          <td>Calendar: <span>the date and time that a to-do was actually completed</span>
          </td>
        </tr>
        <tr>
          <td>priority</td>
          <td>Calendar: the relative priority for a calendar component, 0 for undefined, 1 for highest, ... 9 for lowest</td>
        </tr>
        <tr>
          <td>class</td>
          <td>Calendar: access classification for a calendar component</td>
        </tr>
        <tr>
          <td>status</td>
          <td>Calendar: overall status or confirmation for the calendar component</td>
        </tr>
        <tr>
          <td>percent-complete</td>
          <td>Calendar: percent completion of a to-do., ranging from 0 to 100 (integer)</td>
        </tr>
        <tr>
          <td>contact</td>
          <td>Calendar: contact information or alternatively a reference to contact information associated with the calendar component</td>
        </tr>
        <tr>
          <td>location</td>
          <td>Calendar: the intended venue for the activity defined by a calendar component</td>
        </tr>
        <tr>
          <td>transp</td>
          <td>Calendar: defines whether or not an event is transparaent to busy time searches</td>
        </tr>
        <tr>
          <td>fbtype</td>
          <td>Calendar: free/busy time type, see [<span> <a href="http://tools.ietf.org/html/rfc5545#section-3.2.9">iCalendar, Section 3.2.9</a> </span>]</td>
        </tr>
        <tr>
          <td>wholeday</td>
          <td>Calendar: "true" or "false, depending on whether an event is scheduled for an entire day</td>
        </tr>
        <tr>
          <td>year</td>
          <td>Calendar: year as string following the regex pattern (-?)YYYY(Y*) consisting of an optional minus sign for years B.C. followed by at least four digits</td>
        </tr>
        <tr>
          <td>yearmonth</td>
          <td>Calendar: year and month as string following the regex pattern (-?)YYYY(Y*)MM consisting of an optional minus sign for years B.C. followed by at least six digits, the last two digits are a number between 01 and 12 representing the months January to December</td>
        </tr>
        <tr>
          <td colspan="1">yearmonthday</td>
          <td colspan="1">Calendar: year, month and day as string following the logical pattern (-?)YYYY(Y*)MMDD consisting of an optional minus sign for years B.C. followed by at least eight digits, where the last four digits represent the months January to December (MM) and the day of the month (DD). The string matches the regex pattern -?([1-9][0-9]{3,}|0[0-9]{3})(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01]) The regex pattern does not reflect the additional constraint for "Day-of-month Values": The day value must be no more than 30 if month is one of 04, 06, 09, or 11, no more than 28 if month is 02 and year is not divisible by 4, or is divisible by 100 but not by 400, and no more than 29 if month is 02 and year is divisible by 400, or by 4 but not by 100</td>
        </tr>
        <tr>
          <td>from</td>
          <td>Mail: author of message, see [<span> <a href="http://tools.ietf.org/html/rfc5322#section-3.6.2">RFC5322, section 3.6.2</a> </span>]</td>
        </tr>
        <tr>
          <td>sender</td>
          <td>Mail: mailbox of agent responsible for actual transmission</td>
        </tr>
        <tr>
          <td>to</td>
          <td>Mai: comma-separated list of primary recipients, see [<span> <a href="http://tools.ietf.org/html/rfc5322#section-3.6.3">RFC5322, section 3.6.3</a> </span>]</td>
        </tr>
        <tr>
          <td>cc</td>
          <td>Mail: carbon copy, comma-separated</td>
        </tr>
        <tr>
          <td>bcc</td>
          <td>Mail: blind carbon copy, comma-separated</td>
        </tr>
        <tr>
          <td>subject</td>
          <td>Mail: topic of the message</td>
        </tr>
        <tr>
          <td>body</td>
          <td>Mail: message body</td>
        </tr>
        <tr>
          <td>keywords</td>
          <td>Mail: comma-separated list of important words and phrases that might be useful for the recipient</td>
        </tr>
        <tr>
          <td>received</td>
          <td>Mail: DateTime the message was received</td>
        </tr>
        <tr>
          <td>geo-lon</td>
          <td>Geolocation: longitude</td>
        </tr>
        <tr>
          <td>geo-lat</td>
          <td>Geolocation: latitude</td>
        </tr>
        <tr>
          <td>currency-code</td>
          <td>Currency code, preferably ISO</td>
        </tr>
        <tr>
          <td>unit-of-measure</td>
          <td>Unit of measure, preferably ISO</td>
        </tr>
        <tr>
          <td>count</td>
          <td>Aggregation: <span>the number of unaggregated entities that have been aggregated into the response entity (<code>count(*)</code> in SQL). Only valid for one property of an entity type that is annotated with <code>sap:semantics="aggregate"</code>.</span>
          </td>
        </tr>
      </tbody>
    </table>
    <p>
      <span>For “tel” the type values are (see [</span> <a href="http://tools.ietf.org/html/rfc6350#section-6.4.1" style="line-height: 13.0pt;font-family: arial , helvetica , sans-serif;">vCard, section 6.4.1</a> <span>]):</span>
    </p>
  </div>
  <div>
    <ul style="list-style-type: disc;">
      <li>
        <span>"home" to indicate a telephone number associated with a residence</span>
      </li>
      <li>
        <span>"work" to indicate a telephone number associated with a place of work</span>
      </li>
      <li>
        <span>“pref" to indicate a preferred-use telephone number </span>
      </li>
      <li>
        <span>"text" to indicate a telephone number supporting text messages (SMS)</span>
      </li>
      <li>
        <span>"voice" to indicate a voice telephone number </span>
      </li>
      <li>
        <span>"fax" to indicate a facsimile telephone number </span>
      </li>
      <li>
        <span>"cell" to indicate a cellular telephone number</span>
      </li>
      <li>
        <span>"video" to indicate a video conferencing telephone number </span>
      </li>
      <li>
        <span>"pager" to indicate a paging device telephone number </span>
      </li>
      <li>
        <span>"textphone" to indicate a telecommunication device for people with hearing or speech difficulties</span>
      </li>
    </ul>
    <div>
      <span> <br/>
      </span>
    </div>
    <div>
      <span>For “email” the type values are:</span>
    </div>
    <ul style="list-style-type: disc;">
      <li>
        <span>"home" to indicate an email address associated with a residence</span>
      </li>
      <li>
        <span>"work" to indicate an email address associated with a place of work </span>
      </li>
      <li>
        <span>“pref" to indicate a preferred-use email address</span>
      </li>
    </ul>
    <div>For “url” and constituents of an address the type values are:</div>
    <ul style="list-style-type: disc;">
      <li>
        <span>"home" to indicate an address associated with a residence</span>
      </li>
      <li>
        <span>"work" to indicate an address associated with a place of work </span>
      </li>
      <li>
        <span>“org" to indicate an address associated with the organization</span>
      </li>
      <li>
        <span> <span>“pref” to indicate a preferred address </span> <span>“other” to indicate some other address</span> </span>
      </li>
    </ul>
  </div>
  <div>These type values can be specified as a value list (like "type=work,pref").</div>

#### Attribute `sap:filter-restriction`

  <div>
    <div>A property can be annotated with this attribute, if filter restrictions exist. The attribute can take the following values:</div>
    <div>
      <p>
        <br/>
      </p>
      <table border="1" class="jiveBorder wrapped" style="width: 100.0%;">
        <colgroup> <col/> <col/> </colgroup>
        <tbody>
          <tr>
            <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
              <strong>Value</strong>
            </th>
            <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
              <strong>Meaning</strong>
            </th>
          </tr>
          <tr>
            <td>
              <span>single-value</span>
            </td>
            <td>
              <span>Only a single “<code>eq</code>”clause is possible.</span>
            </td>
          </tr>
          <tr>
            <td>multi-value</td>
            <td>
              <span>Several “<code>eq</code>” clauses, separated by <code>or</code>, are possible.</span>
            </td>
          </tr>
          <tr>
            <td>interval</td>
            <td>
              <span>At most one “<code>ge</code>” and one “<code>le</code>” clause, separated by “<code>and</code>”, alternatively a single “<code>eq</code>” clause</span>.</td>
          </tr>
        </tbody>
      </table>
    </div>

#### Attribute `sap:aggregation-role`

<div>A property can be annotated with this attribute, if it has an aggregation role. The attribute can take the following values:</div>
<div>
  <p>
    <br/>
  </p>
  <table border="1" class="jiveBorder wrapped" style="width: 100.0%;">
    <colgroup> <col/> <col/> </colgroup>
    <tbody>
      <tr>
        <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
          <strong>Value</strong>
        </th>
        <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
          <strong>Meaning</strong>
        </th>
      </tr>
      <tr>
        <td>dimension</td>
        <td>The property represents the key of a dimension and is used to control the aggregating behavior. Only valid for properties of an entity type that is annotated with sap:semantics="aggregate".</td>
      </tr>
      <tr>
        <td>measure</td>
        <td>The property represents a measure whose values will be aggregated according to the aggregating behavior of the containing entity type. Only valid for properties of an entity type that is annotated with sap:semantics="aggregate".</td>
      </tr>
      <tr>
        <td>
          <span>totaled-properties-list</span>
        </td>
        <td>
          <span>The property value is a comma-separated list of totaled dimension property names.</span>
        </td>
      </tr>
    </tbody>
  </table>
</div>

#### Attribute `sap:parameter`

<div>A property can be annotated with this attribute, if it represents a parameter. The attribute can take the following values:</div>
<div>
  <p>
    <br/>
  </p>
  <table border="1" class="jiveBorder wrapped" style="width: 100.0%;">
    <colgroup> <col/> <col/> </colgroup>
    <tbody>
      <tr>
        <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
          <strong>Value</strong>
        </th>
        <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
          <strong>Meaning</strong>
        </th>
      </tr>
      <tr>
        <td>mandatory</td>
        <td>
          <span>A value must be supplied for this parameter</span>.</td>
      </tr>
      <tr>
        <td>optional</td>
        <td>
          <div>A value for this parameter can be left out by specifying an empty string (applicable only for parameter properties of type Edm.String). For parameters of other types, the default value conveyed in the metadata should be assigned, if the parameter shall be omitted.</div>
        </td>
      </tr>
    </tbody>
  </table>
</div>

#### Attribute `sap:preserve-flag-for`

<div>A property holding the preservation state for another property includes this attribute.</div>
<div>The preservation state is a Boolean flag indicating whether or not the value of a named entity property is protected against updates causedby side-effects of updates to the entity set.</div>
<div>Example:</div>
<div>Consider an entity set holding order items with unit price, quantity, and total amount. All three properties supports preservation, as shown here for the unit price:</div>
<pre>     &lt;Property Name="UnitPrice" Type="Edm.Decimal" /&gt;<br/>     &lt;Property Name="UnitPricePreserveFlag" Type="Edm.Boolean" sap:preserve-flag-for="UnitPrice" /&gt;</pre>
<div>For a given order item, a consumer can set the preservation flag for the total amount and update the unit price. This would instruct the provider to recalculate the quantity instead of the total amount.</div>
</div>
</div>
</div>

### Element `edm:NavigationProperty`

<table border="1" class="jiveBorder wrapped" style="width: 100.0%;">
  <colgroup>
    <col/>
    <col/>
    <col/>
  </colgroup>
  <tbody>
    <tr>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <strong>Attribute Name</strong>
      </th>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <strong>Default Value</strong>
      </th>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <strong>Meaning</strong>
      </th>
    </tr>
    <tr>
      <td colspan="1">creatable</td>
      <td colspan="1">true</td>
      <td colspan="1">New related entities can be created</td>
    </tr>
    <tr>
      <td>creatable-path</td>
      <td>-</td>
      <td>
        <p>Related entities can be created or not depending on the state of the source entity. The value of this attribute is a <a href="http://docs.oasis-open.org/odata/odata/v4.0/errata02/os/complete/part3-csdl/odata-v4.0-errata02-os-part3-csdl-complete.html#_The_edm:Path_Expression_3">path expression</a> that identifies a Boolean property in the context of the source entity type. The value of this property indicates whether related entities can be created or not.</p>
        <p>See notes in <a href="#updatable-path">updatable-path</a> for entity sets for combined meaning of creatable and creatable-path.</p>
      </td>
    </tr>
    <tr>
      <td>filterable</td>
      <td>true</td>
      <td>Can be used as a path segment for properties in <code>$filter</code> system query option</td>
    </tr>
  </tbody>
</table>

### Element `edm:FunctionImport`

<table border="1" class="jiveBorder wrapped" style="width: 100.0%;">
  <colgroup>
    <col/>
    <col/>
  </colgroup>
  <tbody>
    <tr>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <strong>Attribute Name</strong>
      </th>
      <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
        <strong>Meaning</strong>
      </th>
    </tr>
    <tr>
      <td>action-for</td>
      <td>Value is the qualified name of an entity type in scope. Indicates that the function or action operates on instances of that entity type. The function import MUST have a required parameter for each key property of that entity type. Parameter name and type must be identical to the name and type of the corresponding key property.</td>
    </tr>
    <tr>
      <td>applicable-path</td>
      <td>Value is a path to a Boolean property in the entity type named in the action-for attribute. The property indicates whether the function import can be invoked for the entity. The path can be the name of a Boolean property, or the name of a complex property followed by a forward slash and the path to a Boolean property in the complex type.</td>
    </tr>
    <tr>
      <td>label</td>
      <td>Description</td>
    </tr>
    <tr>
      <td>planning-function</td>
      <td>This function processes or generates plan data that may be exposed by entity sets of aggregate entity types in the same service. Its logic may have side-effects on these entity sets.</td>
    </tr>
  </tbody>
</table>

Example: a function import that allows approving a leave request. The <code>LeaveRequest</code> entity type has a single key property <code>ID</code> and a complex property <code>ControlData</code> with a Boolean property <code>NeedsApproval</code> that controls the applicability of two alternative actions, approval and rejection:

<div>
  <pre>&lt;FunctionImport Name="LeaveRequestApproval"<br/>                ReturnType="ThisModel.ApprovalResult"<br/>                m:HttpMethod="POST"<br/>                sap:label="Approve" <br/>                sap:action-for="ThisModel.LeaveRequest"<br/>                sap:applicable-path="ControlData/NeedsApproval"&gt;<br/>    &lt;Parameter Name="ID" Type="Edm.Guid" Mode="In" /&gt;<br/>&lt;/FunctionImport&gt;</pre>
</div>

<div>
  <pre>&lt;FunctionImport Name="LeaveRequestRejection"<br/>                ReturnType="ThisModel.ApprovalResult"<br/>                m:HttpMethod="POST"<br/>                sap:label="Reject"<br/>                sap:action-for="ThisModel.LeaveRequest"<br/>                sap:applicable-path="ControlData/NeedsApproval"&gt;<br/>   &lt;Parameter Name="ID" Type="Edm.Guid" Mode="In" /&gt;<br/>   &lt;Parameter Name="Reason" Type="Edm.String" Mode="In" /&gt;<br/>&lt;/FunctionImport&gt;</pre>
</div>
<div>A function import can optionally include an annotation with an <code>sap:value-constraint</code> element.</div>

#### Element `sap:value-constraint`

<div>This element describes a dependency of function import parameters to key properties of an entity set, comparable to a referential constraint.</div>
<div>Example: For a function import with two parameters for country and region, the possible arguments can be determined via some Regions entity set.</div>
<div>
  <pre>&lt;sap:value-constraint set="Regions"&gt;<br/>     &lt;sap: parameter-ref name="Country" /&gt;<br/>     &lt;sap:parameter-ref name="Region" /&gt;<br/>&lt;/sap:value-constraint&gt;</pre>
</div>
<div>
  <p>It has a <code>set</code> attribute that identifies the entity set containing the list of allowed parameter value combinations.</p>
  <p>Nested <code>sap:parameter-ref</code> elements link the function import parameters specified with the <code>name</code> attribute to a key property of the entity type of the specified entity set. The sequence of <code>sap:parameter-ref</code> elements matches the sequence of the <code>edm:PropertyRef</code> elements of the <code>Key</code> element.</p>
</div>

### Element `edm:Parameter`

<div>
  <table border="1" class="jiveBorder wrapped" style="width: 100.0%;">
    <colgroup> <col/> <col/> </colgroup>
    <tbody>
      <tr>
        <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
          <strong>Attribute Name</strong>
        </th>
        <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
          <strong>Meaning</strong>
        </th>
      </tr>
      <tr>
        <td>label</td>
        <td>Description</td>
      </tr>
      <tr>
        <td colspan="1">variable-scale</td>
        <td colspan="1">
          <p>A parameter of type <code>Edm.Decimal</code> that does not have a <code>Scale</code> facet and is annotated with <code>true</code> will accept floating-point values.</p>
          <p>This indicates that the underlying data store field has type DECFLOAT, which cannot be expressed in the OData V2 type system.</p>
          <p>Note: omitted <code>Scale</code> for type <code>Edm.Decimal</code> usually means <code>Scale="0"</code>, restricting the value range to integers.</p>
        </td>
      </tr>
    </tbody>
  </table>
</div>

### Element `edm:AssociationSet`

<div>
  <div>
    <table border="1" class="jiveBorder wrapped" style="width: 100.0%;">
      <colgroup> <col/> <col/> <col/> </colgroup>
      <tbody>
        <tr>
          <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
            <strong>Attribute Name</strong>
          </th>
          <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
            <strong>Default Value</strong>
          </th>
          <th style="text-align: center;color: rgb(255,255,255);background-color: rgb(102,144,188);" valign="middle">
            <strong>Meaning</strong>
          </th>
        </tr>
        <tr>
          <td>creatable</td>
          <td>true</td>
          <td>Relations can be created</td>
        </tr>
        <tr>
          <td>updatable</td>
          <td>true</td>
          <td>Relations can be changed</td>
        </tr>
        <tr>
          <td>deletable</td>
          <td>true</td>
          <td>Relations can be deleted</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>

## Instance Annotations

<div>An annotation of an element in the OData metadata document adds information at the structural level of the service. Sometimes extra pieces of information are needed in the OData response for individual entities and their properties. To distinguish these two cases the former are called metadata annotations, while annotations of the entities in the OData response are called instance annotations.</div>
<div>Metadata annotations add information to the model structure. They are fully described by adding the appropriate AnnotationElement or AnnotationAttribute to a model element.</div>
<div>For instance annotations, this is different, because it must be possible to add different annotation values for every entity or every entity property, respectively. Therefore, if instance annotations are relevant for instances of some entity type, the structure of the entity type gets extended by properties specifically added for the purpose of holding annotation values in the result entities. These extra properties are also annotated with sap:is-annotation=”true” to identify them as<br/>annotation holders and separate them from the other properties of the entity type.</div>
<div>A single entity can have multiple instance annotations, for each of which an extra property gets added to the underlying type:</div>
<ul style="list-style-type: disc;">
  <li>
    <span>Zero or more for the entity itself.</span>
  </li>
  <li>
    <span>Zero or more for every property contained in the entity.</span>
  </li>
</ul>
<div>Properties representing instance annotations are always introduced by AnnotationAttributes in the metadata document. The following sections describe the possible occurrences.</div>
<div>Example:</div>
<pre>&lt;Property Name="Street" Type="Edm.String" Nullable="true" sap:field-control="Address_FC" /&gt;<br/>&lt;Property Name="City" Type="Edm.String" Nullable="true" sap:field-control="Address_FC" /&gt;<br/>&lt;Property Name="Address_FC" Type="Edm.Byte" Nullable="true" sap:is-annotation="true" /&gt;</pre>

## Query Option `search`

<div>Modern user interfaces typically feature a search box for entering a free-text search term, and how exactly this search term is used to find "matching" things is up to the application. The custom query option <code>search</code> is intended exactly for passing such a free-text search term to the backend and let the backend decide against which properties of each entity in the entity set the term is matched, and how. It may also be matched against properties of related entities, e.g.</div>
<div>
  <code>GET ~/Orders?search=blue</code>
</div>
<div>to find all orders with items that refer to a blue product. Service implementations using SAP NetWeaver Gateway OData Channel will receive the search term in the parameter <code>IV_SEARCH_STRING</code> of method <code>GET_ENTITYSET</code>, see <a href="https://help.sap.com/viewer/68bf513362174d54b58cddec28794093/201909.002/en-US/05fb2651c294256ee10000000a445394.html">SAP Gateway Foundation Developer Guide</a> for details.</div>
<div>Note that <code>search</code> works similar to <code>$filter</code>: it will return a subset of the entities that are returned when no search term is specified. And it combines with <code>$filter</code>, returning only entities that fulfill both conditions.</div>

## Entity Set with Hierarchy

Entities can be organized in a tree if the underlying type contains additional properties allowing to determine the position of each entity in that tree. These are:

<ul>
  <li>A non-key property containing the node ID of the entity within the tree; this “node ID property” is annotated with <code>hierarchy-node-for</code>
  </li>
  <li>Either another non-key property containing the node ID of the parent entity within the tree; this property is annotated with <code>hierarchy-parent-node-for</code>
  </li>
  <li>Or a single-valued navigation property leading to the parent entity within the tree; this navigation property is annotated with <code>hierarchy-parent-navigation-for</code>
  </li>
</ul>

In addition, further useful hierarchy information can be added via properties annotated with <code>hierarchy-level-for</code>, <code>hierarchy-external-key-for</code>, <code>hierarchy-drill-state-for</code>, <code>hierarchy-node-descendant-count</code>, <code>hierarchy-preorder-rank-for</code>, and <code>hierarchy-sibling-rank-for</code>.

If a request against an entity set with annotated hierarchy addresses the node ID property of a hierarchy in <code>$select</code>, the provider should ensure that the query result is a well-formed partial tree of that hierarchy. This means that for every entity in the result its ancestors in the hierarchy are also part of the result; the result should not contain any dangling hierarchy nodes.

If the request includes a <code>$filter</code> expression with a condition testing equality of the node ID property with a specific node ID, the result is a sub-hierarchy whose root node is identified by the given node ID. The result can contain multiple sub-hierarchies if the <code>$filter</code> expression has multiple equality conditions for specific node IDs, combined with “or”. For a <code>$filter</code> expression with a parent filter condition testing the parent node ID property or the node ID property reached via the parent navigation property against a literal node ID, the result is the set of child nodes matching the condition.

A <code>$filter</code> expression is processed first to determine the set of matching entities, which is then enriched with additional node entities needed to complete all hierarchy paths as appropriate: from the matching entities up to the root node entity of a selected sub-hierarchy, or up to the root of the entire hierarchy, or in case of parent filter condition or an equality condition on the hierarchy level no further nodes are added to the result.

A result should contain the entities in pre-order for the selected sub-hierarchies, or for the entire hierarchy if not filtered to sub-hierarchies. The sort order of sibling node entities in the result can be controlled with <code>$orderby</code>.
