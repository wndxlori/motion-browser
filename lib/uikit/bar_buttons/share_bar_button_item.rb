module MIM
  class ShareBarButtonItem < UIBarButtonItem
    attr_reader :delegate

    def self.create
      self.alloc.initWithBarButtonSystemItem(UIBarButtonSystemItemAction, target: nil, action: nil)
    end

    def delegate=(delegate)
      @delegate = WeakRef.new(delegate)
      self.target = @delegate
      self.action = 'shareButtonPressed:'
    end
  end
end
