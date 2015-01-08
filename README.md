Description
===========

A Package that installs PhpStorm

Requirements
============

 * Chef 0.10+

Platforms
=========

 * Ubuntu

Tested on:

 * Ubuntu 14.04

Attributes
==========

See the `attributes/default.rb` for default values.

 * `node['phpstorm']['version']` - The version of PhpStorm to install

Usage
=====

```json
{ "run_list": ["recipe[phpstorm]"] }
```

This will install PhpStorm on the system
