class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
  	Parse.setApplicationId("wUjYNLfCcK7TDW3kDFUzT5r6bhm5W4tqxABjl2tp", clientKey:"6Mk2FzRbzLNgqrU4x3CHM6XmeMRMfGWEKqt5QIXS")
  	#ParseResource::Base.load!("wUjYNLfCcK7TDW3kDFUzT5r6bhm5W4tqxABjl2tp", "CdnBFiTdLqQEOowC5B51dlQMuMpJgK4ncT9vobns")
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    

    controller = UserController.alloc.initWithNibName(nil, bundle: nil)
    controller.title = "User"
  nav_controller = UINavigationController.alloc.initWithRootViewController(controller)
  alphabet_controller = ListController.alloc.initWithNibName(nil, bundle: nil)

  tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
  tab_controller.viewControllers = [nav_controller, alphabet_controller]
  @window.rootViewController = tab_controller

    #user_controller = UserController.alloc.initWithNibName(nil, bundle: nil)
	  #nav_controller = UINavigationController.alloc.initWithRootViewController(controller)
	#ist_controller = ListController.alloc.initWithNibName(nil, bundle: nil)
	#list_controller.title = "List Users"

	#tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
	#tab_controller.viewControllers = [user_controller, list_controller]
	#@window.rootViewController = tab_controller
	@window.makeKeyAndVisible
    true
  end
end
