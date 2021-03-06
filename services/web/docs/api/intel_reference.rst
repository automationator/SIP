IntelReference
**************

.. contents::
  :backlinks: none

Summary
-------

.. qrefflask:: project:create_app()
  :endpoints: api.create_intel_reference, api.read_intel_reference, api.read_intel_references, api.read_intel_reference_indicators, api.update_intel_reference, api.delete_intel_reference
  :order: path

Create
------

**JSON Schema**

Required parameters are in **bold**.

*NOTE*: While only **reference** and **source** are listed as required parameters,
there is a requirement not listed in the schema. You must either supply the **username**
parameter OR your API key in the Authorization header. This is what is used to link
the intel reference to the user who created it.

.. jsonschema:: ../../project/api/schemas/intel_reference_create.json

|

.. autoflask:: project:create_app()
  :endpoints: api.create_intel_reference

Read Single
-----------

.. autoflask:: project:create_app()
  :endpoints: api.read_intel_reference

Read Multiple
-------------

.. autoflask:: project:create_app()
  :endpoints: api.read_intel_references

Read Indicators
---------------

.. autoflask:: project:create_app()
  :endpoints: api.read_intel_reference_indicators

Update
------

**JSON Schema**

Required parameters are in **bold**.

.. jsonschema:: ../../project/api/schemas/intel_reference_update.json

|

.. autoflask:: project:create_app()
  :endpoints: api.update_intel_reference

Delete
------

.. autoflask:: project:create_app()
  :endpoints: api.delete_intel_reference