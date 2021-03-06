require 'chefspec'
require_relative '../libraries/resource_service'

describe 'heavy_provider_light_resource::default' do
  it 'does not bomb (because the resource was not wiped out when the provider was encountered)' do
    ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04').converge(described_recipe)
  end
end
