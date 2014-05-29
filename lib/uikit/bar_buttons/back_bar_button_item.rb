module MIM
  class BackBarButtonItem < UIBarButtonItem
    def self.create
      self.alloc.initWithTitle(MotionBrowserConfig.shared.back_button_text, style: UIBarButtonItemStylePlain, target: nil, action: nil)
    end

    def delegate=(delegate)
      @delegate = WeakRef.new(delegate)
      self.target = @delegate
      self.action = 'backButtonPressed:'
    end
  end
end
