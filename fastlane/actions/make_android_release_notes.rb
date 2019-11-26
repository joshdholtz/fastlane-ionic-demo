module Fastlane
  module Actions
    module SharedValues
      GET_RELEASE_NOTES_PATH = :GET_RELEASE_NOTES_PATH
      GET_RELEASE_NOTES_CONTENT = :GET_RELEASE_NOTES_CONTENT
    end

    class MakeAndroidReleaseNotesAction < Action
      def self.run(params)
        path = params[:path]
        locale = params[:locale]
        version_code = params[:version_code]

        require 'fileutils'
        directory = File.join(FastlaneCore::FastlaneFolder.path, "metadata", "android", locale, "changelogs")
        FileUtils::mkdir_p(directory) 
        FileUtils.cp(path, File.join(directory, "#{version_code}.txt"))
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Copy release notes for android for supply"
      end

      def self.details
        "Copy release notes for android for supply"
      end

      def self.available_options
        # Define all options your action supports. 
        
        # Below a few examples
        [
          FastlaneCore::ConfigItem.new(key: :path,
                                       env_name: "FL_MAKE_ANDROID_RELEASE_NOTES_PATH",
                                       description: "Path of file to copy",
                                       default_value: File.join(FastlaneCore::FastlaneFolder.path, "release_notes.txt")),
          FastlaneCore::ConfigItem.new(key: :locale,
                                       env_name: "FL_MAKE_ANDROID_RELEASE_NOTES_LOCALE",
                                       description: "Locale for folder creation",
                                       type: String),
          FastlaneCore::ConfigItem.new(key: :version_code,
                                       env_name: "FL_MAKE_ANDROID_RELEASE_NOTES_VERSION_CODE",
                                       description: "Version code",
                                       type: String)
        ]
      end

      def self.output
        []
      end

      def self.return_value
        ""
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
