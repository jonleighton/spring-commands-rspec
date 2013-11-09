module Spring
  module Commands
    class RSpec
      def env(*)
        "test"
      end

      def exec_name
        "rspec"
      end
    end

    Spring.register_command "rspec", RSpec.new
    Spring::Commands::Rake.environment_matchers[/^spec($|:)/] = "test"
  end
end
