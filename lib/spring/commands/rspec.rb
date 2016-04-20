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
        ::RSpec.configuration.start_time = Time.now if defined?(::RSpec.configuration.start_time)
        # Hack in RubyMine extension paths to load path so it doesn't fail to require dependencies
        # if Spring server was started outside of RubyMine.
        $LOAD_PATH << '/Applications/RubyMine.app/Contents/rb/testing/patch/bdd/'
        $LOAD_PATH << '/Applications/RubyMine.app/Contents/rb/testing/patch/common/'
        load Gem.bin_path(gem_name, exec_name)
      end
    end

    Spring.register_command "rspec", RSpec.new
    Spring::Commands::Rake.environment_matchers[/^spec($|:)/] = "test"
  end
end
