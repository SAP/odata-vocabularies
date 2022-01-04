# Modelling a user interaction with annotations

Certain user interactions cannot be handled by one request, because they follow the pattern "user triggers, server offers, user chooses". For example, the action "exchange product in a sales order item" is triggered by the user on a sales order item, the server returns the item with an inlined collection of alternative products, from which the user must then choose, and the request must be repeated with the chosen key.

But in certain cases the server may return only one "upgrade" product and let the user confirm rather than choose. Both cases are supported by a service with [these metadata](UI.UserInteraction-sample.xml), let's look at an example of the case where the user chooses.

## User clicks

The "exchange product" action is triggered by the user on a sales order item without specifying a parameter.

```
POST ~/SalesOrderItems(...)/userinteraction.sample.ExchangeProduct HTTP/1.1

{}
```

## Server offers

The server returns the item with an inlined collection of alternative products, from which the user must then choose.

```
HTTP/1.1 409 Conflict

{"Order": "A",
 "Item": "010",
 "Product": "Wheat flour",
 "_AlternativeProducts": [
  {"Product": "Rice", "UpsellNote": "Healthier"},
  {"Product": "Noodles", "UpsellNote": "Tastes better"}
 ]}
```

Servers that cannot send a structured payload in a 4xx response may instead return an error message with a [`callback`](../vocabularies/Common.md#callback) instance annotation.

```
HTTP/1.1 400 Bad Request

{"error": {
  "code": "UF0",
  "message": {
   "lang": "en",
   "value": "Missing parameter 'NewProduct'"
  },
  "@Common.callback": {
   "Order": "A",
   "Item": "010",
   "Product": "Wheat flour",
   "_AlternativeProducts": [
    {"Product": "Rice", "UpsellNote": "Healthier"},
    {"Product": "Noodles", "UpsellNote": "Tastes better"}
   ]}
}}
```

The client constructs a choice dialog based on (a) the `UI.UserInteraction` annotation and (b) the UI annotations of the `AlternativeProduct` entity type, for example:

> ### Please choose a product<sup>a</sup>
>
> |Alternative Product<sup>b</sup>|Why it's better to buy this<sup>b</sup>|
> |-------------------------------|---------------------------------------|
> |Rice                           |Healthier                              |
> |Noodles                        |Tastes better                          |
>
> <kbd>OK</kbd> <kbd>Cancel</kbd>

## User chooses

After the user has chosen, the request is repeated with the chosen key.

```
POST ~/SalesOrderItems(...)/userinteraction.sample.ExchangeProduct HTTP/1.1

{"NewProduct": "Rice"}
```
