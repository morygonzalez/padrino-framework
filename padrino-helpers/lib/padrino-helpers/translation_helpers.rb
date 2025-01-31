module Padrino
  module Helpers
    ##
    # Helpers related to locale i18n translation within templates.
    #
    module TranslationHelpers
      ##
      # Delegates to I18n.translate with no additional functionality.
      #
      # @param [Symbol] *args
      #   The keys to retrieve.
      #
      # @return [String]
      #  The translation for the specified keys.
      #
      def translate(*args)
        options = args.last.is_a?(Hash) ? args.pop : {}
        I18n.translate(*args, **options)
      end
      alias :t :translate

      ##
      # Delegates to I18n.localize with no additional functionality.
      #
      # @param [Symbol] *args
      #   The keys to retrieve.
      #
      # @return [String]
      #  The translation for the specified keys.
      #
      def localize(*args)
        options = args.last.is_a?(Hash) ? args.pop : {}
        I18n.localize(*args, **options)
      end
      alias :l :localize
    end
  end
end
