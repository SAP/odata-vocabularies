const assert = require("assert");
const bytype = require("../lib/bytype");

describe("Find by type", function () {
  it("Find by type", function () {
    assert.deepStrictEqual(
      bytype(
        __dirname + "/",
        "com.sap.vocabularies.Common.v1",
        "QualifiedName"
      ),
      [
        "com.sap.vocabularies.test.v1.SimpleTerm",
        "com.sap.vocabularies.test.v1.ComplexTerm/Name",
        "com.sap.vocabularies.test.v1.ComplexType/Name",
        "com.sap.vocabularies.test.v1.DerivedType/Name",
        "com.sap.vocabularies.test.v1.Function/SingleParam",
        "com.sap.vocabularies.test.v1.Function/DoubleParam",
        "com.sap.vocabularies.test.v1.Function/$ReturnType/Name"
      ]
    );
  });
});
