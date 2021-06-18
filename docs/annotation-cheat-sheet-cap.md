# Annotation Cheat-Sheet for CAP CDS

How to construct an annotation from a term definition, or re-engineer a term definition from an annotation example?

Here's how.

## Vocabularies

CAP CDS has the [standard OASIS](https://github.com/oasis-tcs/odata-vocabularies#further-description-of-this-repository)
and SAP vocabularies built-in,
their terms can be used without needing to reference the vocabulary,
as long as the standard qualifiers are used, e.g. `@Core` for the [OASIS Core vocabulary](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md),
or `@Common`  for the [SAP Common vocabulary](../vocabularies/Common.md).

## Primitive Terms

If the term has a primitive type

```xml
<Term Name="StringTerm" Type="Edm.String" />
```

A _constant annotation value_ can be provided as a [corresponding JSON value](https://docs.oasis-open.org/odata/odata-csdl-json/v4.01/odata-csdl-json-v4.01.html#sec_ConstantExpression).

```javascript
@Vocab.StringTerm: 'annotation value'
```

See [Constant Annotation Values](#constant-annotation-values) for a list of all primitiv types and example values for them.

A _dynamic annotation value_ can be provided for the same term using a [CDS path expression](https://cap.cloud.sap/docs/cds/cql#path-expressions) that could be used in a SELECT clause.

```javascript
@Vocab.StringTerm: Some.StringProperty
```

The property referenced via the value path expression, here `Some.StringProperty` needs to have the same type as the term. A value path expression can always be used instead of a constant value, also in the more complicated cases below.

## Collections

If the term has a collection type

```xml
<Term Name="CollectionTerm" Type="Collection(Edm.Decimal)" />
```

the annotation value is provided as an array

```javascript
@Vocab.CollectionTerm: [ 2.78, 3.14 ]
```

## Structures

If the term has a structured type

```xml
<Term Name="StructuredTerm" Type="Vocab.Complex" />

<ComplexType Name="Complex">
  <Property Name="IntegerField" Type="Edm.Int32" />
</ComplexType>
```

the annotation value is provided as an object

```javascript
@Vocab.StructuredTerm: {
  IntegerField: 42
}
```

[Constant annotation values](#constant-annotation-values) for primitive properties are provided in the same way as for primitive terms.

## Collection of Structures

Terms can also be typed as a collection of a structured type.

```xml
<Term Name="StructuredCollectionTerm" Type="Collection(Vocab.AnotherComplex)" />

<ComplexType Name="AnotherComplex">
  <Property Name="DateField" Type="Edm.Date" />
  <Property Name="TimeField" Type="Edm.TimeOfDay" DefaultValue="00:00:00" />
</ComplexType>
```

The annotation value is provided as a collection of objects.

```javascript
@Vocab.StructuredCollectionTerm: [
  {
    DateField: '2020-06-30',
    TimeField: '16:55:03'
  },
  {
    DateField: '2020-07-01'
  },
  {
    TimeField: '23:59:59'
  }
]
```

Properties that are nullable or have a default value can be omitted.

## Nested Structures and Collections

Properties of a structured type can themselves be structured or collections.

```xml
<Term Name="NestedTerm" Type="Collection(Vocab.YetAnotherComplex)" />

<ComplexType Name="YetAnotherComplex">
  <Property Name="StructuredField" Type="Vocab.Complex" />
  <Property Name="CollectionField" Type="Collection(Vocab.AnotherComplex)" />
</ComplexType>
```

The property value is provided as an object or array.

```javascript
@Vocab.NestedTerm: {
  StructuredField: {
    IntegerField: 42
  },
  CollectionField: [
    {
      DateField: '2020-06-30',
      TimeField: '16:55:03'
    }
  ]
}
```

## Constant Annotation Values

The name of the attribute to provide a constant annotation value depends on the type of the term or term property.

| Type of Term or Term Property | Example Value |
|:-|:-|
| `Edm.Binary` | `'T0RhdGE'` |
| `Edm.Boolean` | `true` |
| `Edm.Date` | `'2000-01-01'` |
| `Edm.DateTimeOffset` | `'2000-01-01T16:00:00.000Z'` |
| `Edm.Decimal` | `'3.14'` |
| `Edm.Duration` | `'P7D'` |
| Enumeration Type | `#Red` |
| `Edm.Double` or `Edm.Single` | `3.14` |
| `Edm.Guid` | `'21EC2020-3AEA-1069-A2DD-08002B30309D'` |
| `Edm.Int16`, `Edm.Int32`, `Edm.64`, `Edm.Byte`, `Edm.SByte` | `42` |
| `Edm.Int64` | `'42'` |
| `Edm.String` | `'annotation value'` |
| `Edm.TimeOfDay` | `'21:45:00'` |
| `Edm.AnnotationPath` | `'Product/Supplier/@UI.LineItem'` |
| `Edm.NavigationPropertyPath` | `Supplier` |
| `Edm.PropertyPath` | `Details.ChangedAt` |
