module MIM
  class MotionBrowser < UIView
    attr_reader :webview

    def init
      super

      setBackgroundColor UIColor.whiteColor

      addSubview(@webview = UIWebView.new)
      addSubview(@toolbar = MotionBrowserToolbar.new)
      @delegate = @toolbar.delegate = MotionBrowserToolbarDelegate.new(@webview)

      @webview.translatesAutoresizingMaskIntoConstraints = false
      @toolbar.translatesAutoresizingMaskIntoConstraints = false

      attributes = []
      attributes << NSLayoutConstraint.constraintWithItem(
        @webview,
        attribute: NSLayoutAttributeTop,
        relatedBy: NSLayoutRelationEqual,
        toItem: self,
        attribute: NSLayoutAttributeTop,
        multiplier: 1,
        constant: 0
      )

      attributes << NSLayoutConstraint.constraintWithItem(
        @webview,
        attribute: NSLayoutAttributeBottom,
        relatedBy: NSLayoutRelationEqual,
        toItem: self,
        attribute: NSLayoutAttributeBottom,
        multiplier: 1,
        constant: 0
      )

      attributes << NSLayoutConstraint.constraintWithItem(
        @webview,
        attribute: NSLayoutAttributeLeft,
        relatedBy: NSLayoutRelationEqual,
        toItem: self,
        attribute: NSLayoutAttributeLeft,
        multiplier: 1,
        constant: 0
      )

      attributes << NSLayoutConstraint.constraintWithItem(
        @webview,
        attribute: NSLayoutAttributeRight,
        relatedBy: NSLayoutRelationEqual,
        toItem: self,
        attribute: NSLayoutAttributeRight,
        multiplier: 1,
        constant: 0
      )

      attributes << NSLayoutConstraint.constraintWithItem(
        @toolbar,
        attribute: NSLayoutAttributeHeight,
        relatedBy: NSLayoutRelationEqual,
        toItem: nil,
        attribute: NSLayoutAttributeNotAnAttribute,
        multiplier: 1,
        constant: 50
      )

      attributes << NSLayoutConstraint.constraintWithItem(
        @toolbar,
        attribute: NSLayoutAttributeBottom,
        relatedBy: NSLayoutRelationEqual,
        toItem: self,
        attribute: NSLayoutAttributeBottom,
        multiplier: 1,
        constant: 0
      )

      attributes << NSLayoutConstraint.constraintWithItem(
        @toolbar,
        attribute: NSLayoutAttributeLeft,
        relatedBy: NSLayoutRelationEqual,
        toItem: self,
        attribute: NSLayoutAttributeLeft,
        multiplier: 1,
        constant: 0
      )

      attributes << NSLayoutConstraint.constraintWithItem(
        @toolbar,
        attribute: NSLayoutAttributeRight,
        relatedBy: NSLayoutRelationEqual,
        toItem: self,
        attribute: NSLayoutAttributeRight,
        multiplier: 1,
        constant: 0
      )
      addConstraints(attributes)

      self
    end

    def load(url)
      unless url.is_a? NSURL
        url = NSURL.URLWithString(url)
      end

      request = NSURLRequest.requestWithURL(url)
      @webview.loadRequest(request)
    end
  end
end
