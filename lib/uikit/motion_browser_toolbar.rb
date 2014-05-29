module MIM
  class MotionBrowserToolbar < UIToolbar
    def init
      super

      @back    = BackBarButtonItem.create
      @forward = ForwardBarButtonItem.create
      @share   = ShareBarButtonItem.create
      @space   = UIBarButtonItem.alloc.initWithBarButtonSystemItem(UIBarButtonSystemItemFlexibleSpace, target: nil, action: nil)
      setItems([@share, @space, @back, @forward], animated: false)

      self
    end

    def delegate=(delegate)
      @back.delegate = @forward.delegate = @share.delegate = delegate
    end
  end
end
