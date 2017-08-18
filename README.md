# Code-Catalog-Generator
Tools and processes for generating the Department of Commerce code catalog.

The included `generate.rb` script currently leverages GSA's CodeInventory tool to generate a code catalog from one or more organization's GitHub accounts.

## Dependencies
* Ruby 2.3.0 or later (the codeinventory gem uses Hash#dig, which was introduced in Ruby 2.3.0)
* [codeinventory](https://github.com/GSA/codeinventory) gem
* [codeinventory-github](https://github.com/GSA/codeinventory-github) gem

## Usage
1. Edit config.yml to identify the agency name and list GitHub organizations to be harvested.
2. Edit secrets.yml to provide a GitHub personal access token.
3. Execute the generate.rb script and pipe the output (code catalog) to a file:

```
> ruby generate.rb >code.json
```
