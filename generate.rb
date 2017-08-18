require 'yaml'
require "codeinventory"
require "codeinventory/github"

conf = YAML::load_file('conf.yml')
secrets = YAML::load_file('secrets.yml')

combined = {
  "version" => "1.0.1",
  "agency" => conf['agency'],
  "projects" => []
}

conf['github']['organizations'].each do |org|
	source = CodeInventory::GitHub::Source.new(secrets['github'], org)
	inventory = CodeInventory::Inventory.new(source)
	combined["projects"].concat(inventory.projects)
end

puts JSON.pretty_generate(combined)
