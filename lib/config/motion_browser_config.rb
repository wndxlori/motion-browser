module MIM
  class MotionBrowserConfig
    def self.shared
      Dispatch.once { @shared = new }
      @shared
    end

    attr_accessor :back_button_text, :forward_button_text

    def initialize
      @back_button_text = 'Back'
      @forward_button_text = 'Forward'
    end
  end
end
