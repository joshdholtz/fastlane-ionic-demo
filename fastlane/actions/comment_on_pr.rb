module Fastlane
  module Actions
    module SharedValues
      COMMENT_ON_CI_PR_CUSTOM_VALUE = :COMMENT_ON_CI_PR_CUSTOM_VALUE
    end

    # URI("https://github.com/RokkinCat/new-holland-in-cab-support/pull/114").path.split('/').last

    class CommentOnPrAction < Action
      def self.run(params)
        pr_url = ENV["CIRCLE_PULL_REQUEST"]
        body = params[:body]

        if pr_url.to_s.length > 0 && body.to_s.length > 0
          require 'uri'
          uri = URI::parse(pr_url)
          pr_path = "repos#{uri.path}/comments"
          issue_path = pr_path.gsub('pull', 'issues')

          other_action.github_api(
            http_method: "POST",
            path: issue_path,
            body: {
              body: body
            }
          )
        end
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Comment on a PR from a CI"
      end

      def self.details
        "Comment on a PR from a CI"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :body,
                                       env_name: "FL_COMMENT_ON_CI_PR_BODY",
                                       description: "Body of comment",
                                       optional: true)
        ]
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
