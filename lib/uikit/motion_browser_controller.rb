module MIM
  class MotionBrowserController < UIViewController
    def initWithURL(url)
      self.init
      @url = url
      setTitle @url
      self
    end

    def loadView
      self.view = MotionBrowser.new
      view.webview.delegate = self
    end

    def viewDidAppear(animated)
      super
      view.load(@url)
    end

    def webViewDidStartLoad(webview)
      UIApplication.sharedApplication.networkActivityIndicatorVisible = true
    end

    def webViewDidFinishLoad(webview)
      UIApplication.sharedApplication.networkActivityIndicatorVisible = false
    end
  end
end
