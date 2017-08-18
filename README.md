# Process
Open source project information is pulled from a list of official Commerce Github organizations for publication to [Commerce.gov/code.json](https://www.commerce.gov/code.json).

Additions to the list of Commerce organizations is possible through Github pull requests to this repository.

For project additions from sources other than Github, a process will be defined and added here in the future.

## How can I add my Commerce Organization's Github project?
1. Ensure your office's official Github organization is in [conf.yml](conf.yml). If not see [Adding your official Github organization](README.md#adding-your-official-github-organization).
1. Publish your project to a public Github repository under your official organization.
1. Include a [.codeinventory.json or .codeinventory.yml](https://github.com/GSA/codeinventory-github#using-inventory-files) in your project for more fine-grained control over metadata or to include details not available in Github metadata.

If your project is not included in the code.json published to Commerce.gov, please [submit an issue](https://github.com/CommerceGov/Code-Catalog-Generator/issues/new).

## Adding your official Github organization
1. Fork this repository
1. Add your Github organization to [conf.yml](conf.yml) in the organizations array
1. Commit and push the changes to your Fork
1. Submit a pull request to the upstream project

# Code catalog generator
Tools for generating the Department of Commerce code catalog for [OMB M-16-21](https://sourcecode.cio.gov/).

The included `generate.rb` script currently leverages GSA's CodeInventory tool to generate a code catalog from one or more organization's GitHub accounts.

## Dependencies
* Ruby 2.3.0 or later (the codeinventory gem uses Hash#dig, which was introduced in Ruby 2.3.0)
* [codeinventory](https://github.com/GSA/codeinventory) gem
* [codeinventory-github](https://github.com/GSA/codeinventory-github) gem

## Usage
1. Edit [config.yml](config.yml) to identify the agency name and list GitHub organizations to be harvested.
1. Create a secrets.yml, using [secrets.yml.sample](secrets.yml.sample) as a template, to provide a [GitHub personal access token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/).
1. Execute the generate.rb script and pipe the output (code catalog) to a file:

```
ruby generate.rb > code.json
```
