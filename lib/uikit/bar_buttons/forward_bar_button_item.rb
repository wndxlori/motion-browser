module MIM
  class ForwardBarButtonItem < UIBarButtonItem
    def self.create
      self.alloc.initWithTitle(MotionBrowserConfig.shared.forward_button_text, style: UIBarButtonItemStylePlain, target: nil, action: nil)
    end

    def delegate=(delegate)
      @delegate = WeakRef.new(delegate)
      self.target = @delegate
      self.action = 'forwardButtonPressed:'
    end
  end
end
