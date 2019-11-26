module Fastlane
    module Actions
      class CiPrNumberAction < Action
        def self.run(params)
          pr_url = ENV["CIRCLE_PULL_REQUEST"]

          if pr_url.to_s.length > 0
            require 'uri'
            return URI(pr_url).path.split('/').last
          end

          return nil
        end
  
        #####################################################
        # @!group Documentation
        #####################################################
  
        def self.description
          "PR number from a CI"
        end
  
        def self.details
          "PR number from a CI"
        end
  
        def self.available_options
          []
        end
  
        def self.authors
          ["joshdholtz"]
        end
  
        def self.is_supported?(platform)
          true
        end
      end
    end
  end
  