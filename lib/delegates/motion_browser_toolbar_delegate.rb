module MIM
  class MotionBrowserToolbarDelegate
    def initialize(webview)
      @webview = webview
    end

    def shareButtonPressed(shared_button)
      vc = UIActivityViewController.alloc.initWithActivityItems([{'url' => @webview.request.URL.absoluteString}], applicationActivities: nil)
      UIWindow.keyWindow.rootViewController.presentViewController(vc, animated: true, completion: nil)
    end

    def backButtonPressed(back_button)
      if @webview.canGoBack
        @webview.goBack
      end
    end

    def forwardButtonPressed(forward_button)
      if @webview.canGoForward
        @webview.goForward
      end
    end
  end
end
