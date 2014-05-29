class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    MIM::MotionBrowserConfig.shared.back_button_text = 'B'
    MIM::MotionBrowserConfig.shared.forward_button_text = 'F'
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @root_vc = MIM::MotionBrowserController.alloc.initWithURL('http://motioninmotion.tv/')
    @nav = UINavigationController.alloc.initWithRootViewController(@root_vc)
    @window.rootViewController = @nav
    @window.makeKeyAndVisible

    true
  end
end
