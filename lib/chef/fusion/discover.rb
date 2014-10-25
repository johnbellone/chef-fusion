class Chef
  module Fusion
    module Discover
      # @param service_name [String]
      # @param options [Hash]
      # @return [Chef::Node]
      def self.by_name(service_name, options={})
        Chef::Log.debug("Discovering node for #{service_name}")
      end
    end
  end

  module DSL
    # @see Chef::Fusion::discover
    def discover(name, options={})
      Chef::Fusion::Discover.by_name(name, options)
    end

    # @see Chef::Fusion::discover
    def discover_in_environment(name, options={})
      Chef::Fusion::Discovery.by_name(name, options.merge(environment: node.environment))
    end

    # @see Chef::Fusion::discover
    # @return [String]
    def discover_address(name, options={})
      best_address_for(Chef::Fusion::Discovery.by_name(name, options))
    end

    # @see Chef::Fusion::discover
    # @return [String]
    def discover_address_in_environment(name, options={})
      discover_address(name, options.merge(environment: node.environment))
    end
  end
end
