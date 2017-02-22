module ChefSpec::API
  # @since 6.0.0
  module DnfPackageMatchers
    ChefSpec.define_matcher :dnf_package

    #
    # Assert that a +dnf_package+ resource exists in the Chef run with the
    # action +:install+. Given a Chef Recipe that installs "apache2" as a
    # +dnf_package+:
    #
    #     dnf_package 'apache2' do
    #       action :install
    #     end
    #
    # The Examples section demonstrates the different ways to test a
    # +dnf_package+ resource with ChefSpec.
    #
    # @example Assert that a +dnf_package+ was installed
    #   expect(chef_run).to install_dnf_package('apache2')
    #
    # @example Assert that a +dnf_package+ was installed with predicate matchers
    #   expect(chef_run).to install_dnf_package('apache2').with_version('1.2.3')
    #
    # @example Assert that a +dnf_package+ was installed with attributes
    #   expect(chef_run).to install_dnf_package('apache2').with(version: '1.2.3')
    #
    # @example Assert that a +dnf_package+ was installed using a regex
    #   expect(chef_run).to install_dnf_package('apache2').with(version: /(\d+\.){2}\.\d+/)
    #
    # @example Assert that a +dnf_package+ was _not_ installed
    #   expect(chef_run).to_not install_dnf_package('apache2')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def install_dnf_package(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:dnf_package, :install, resource_name)
    end

    #
    # Assert that a +dnf_package+ resource exists in the Chef run with the
    # action +:purge+. Given a Chef Recipe that purges "apache2" as a
    # +dnf_package+:
    #
    #     dnf_package 'apache2' do
    #       action :purge
    #     end
    #
    # The Examples section demonstrates the different ways to test a
    # +dnf_package+ resource with ChefSpec.
    #
    # @example Assert that a +dnf_package+ was purged
    #   expect(chef_run).to purge_dnf_package('apache2')
    #
    # @example Assert that a +dnf_package+ was purged with predicate matchers
    #   expect(chef_run).to purge_dnf_package('apache2').with_version('1.2.3')
    #
    # @example Assert that a +dnf_package+ was purged with attributes
    #   expect(chef_run).to purge_dnf_package('apache2').with(version: '1.2.3')
    #
    # @example Assert that a +dnf_package+ was purged using a regex
    #   expect(chef_run).to purge_dnf_package('apache2').with(version: /(\d+\.){2}\.\d+/)
    #
    # @example Assert that a +dnf_package+ was _not_ purged
    #   expect(chef_run).to_not purge_dnf_package('apache2')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def purge_dnf_package(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:dnf_package, :purge, resource_name)
    end

    #
    # Assert that a +dnf_package+ resource exists in the Chef run with the
    # action +:remove+. Given a Chef Recipe that removes "apache2" as a
    # +dnf_package+:
    #
    #     dnf_package 'apache2' do
    #       action :remove
    #     end
    #
    # The Examples section demonstrates the different ways to test a
    # +dnf_package+ resource with ChefSpec.
    #
    # @example Assert that a +dnf_package+ was removed
    #   expect(chef_run).to remove_dnf_package('apache2')
    #
    # @example Assert that a +dnf_package+ was removed with predicate matchers
    #   expect(chef_run).to remove_dnf_package('apache2').with_version('1.2.3')
    #
    # @example Assert that a +dnf_package+ was removed with attributes
    #   expect(chef_run).to remove_dnf_package('apache2').with(version: '1.2.3')
    #
    # @example Assert that a +dnf_package+ was removed using a regex
    #   expect(chef_run).to remove_dnf_package('apache2').with(version: /(\d+\.){2}\.\d+/)
    #
    # @example Assert that a +dnf_package+ was _not_ removed
    #   expect(chef_run).to_not remove_dnf_package('apache2')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def remove_dnf_package(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:dnf_package, :remove, resource_name)
    end

    #
    # Assert that a +dnf_package+ resource exists in the Chef run with the
    # action +:upgrade+. Given a Chef Recipe that upgrades "apache2" as a
    # +dnf_package+:
    #
    #     dnf_package 'apache2' do
    #       action :upgrade
    #     end
    #
    # The Examples section demonstrates the different ways to test a
    # +dnf_package+ resource with ChefSpec.
    #
    # @example Assert that a +dnf_package+ was upgraded
    #   expect(chef_run).to upgrade_dnf_package('apache2')
    #
    # @example Assert that a +dnf_package+ was upgraded with predicate matchers
    #   expect(chef_run).to upgrade_dnf_package('apache2').with_version('1.2.3')
    #
    # @example Assert that a +dnf_package+ was upgraded with attributes
    #   expect(chef_run).to upgrade_dnf_package('apache2').with(version: '1.2.3')
    #
    # @example Assert that a +dnf_package+ was upgraded using a regex
    #   expect(chef_run).to upgrade_dnf_package('apache2').with(version: /(\d+\.){2}\.\d+/)
    #
    # @example Assert that a +dnf_package+ was _not_ upgraded
    #   expect(chef_run).to_not upgrade_dnf_package('apache2')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def upgrade_dnf_package(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:dnf_package, :upgrade, resource_name)
    end
  end
end
