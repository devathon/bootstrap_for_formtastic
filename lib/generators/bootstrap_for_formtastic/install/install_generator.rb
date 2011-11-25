module BootstrapForFormtastic
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      private

      def self.asset_pipeline_enabled?
        (Rails.configuration.respond_to?(:assets) ? (Rails.configuration.assets || {}) : {})[:enabled]
      end

      def asset_pipeline_enabled?
        self.class.asset_pipeline_enabled?
      end

      public

      if asset_pipeline_enabled?
        desc 'No copy initiated as asset pipeline is enabled'
      else
        desc 'Creates a BootstrapForFormtastic initializer and copies bootstrap_for_formtastic.css to public/stylesheets.'
      end

      def copy_stylesheet_asset
        unless asset_pipeline_enabled?
          copy_file '../../../../../app/assets/stylesheets/bootstrap_for_formtastic.css', 'public/bootstrap_for_formtastic.css'
        end
      end

      def show_readme
        if asset_pipeline_enabled?
          readme 'README.rails.3.1' if behavior == :invoke
        else
          readme 'README.rails.3.0' if behavior == :invoke
        end
      end

    end
  end
end
