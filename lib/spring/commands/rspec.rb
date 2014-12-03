module Spring
  module Commands
    class RSpec
      def env(*)
        "test"
      end

      def exec_name
        "rspec"
      end

      def gem_name
        "rspec-core"
      end

      def call
        ::RSpec.configuration.start_time = Time.now if defined?(::RSpec.configuration)

        # RSpec expects $0 to be 'rspec'. If that's not the case, it won't
        # handle command line arguments correctly.
        old_dollar_zero = $0
        $0 = exec_name

        load Gem.bin_path(gem_name, exec_name)

        $0 = old_dollar_zero
      end
    end

    Spring.register_command "rspec", RSpec.new
    Spring::Commands::Rake.environment_matchers[/^spec($|:)/] = "test"
  end
end

