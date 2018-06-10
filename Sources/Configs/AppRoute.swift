//
//  AppRoute.swift
//  App
//
//  Created by Michael Henry Pantaleon on 2018/06/05.
//  Copyright © 2018 Michael Henry Pantaleon. All rights reserved.
//

import UIKit

enum AppRoute:Routable {
  
  case login
  case registration
  case resetPassword
  
  func viewController<T>() -> T {
    switch self {
    case .login:
      return instantiateVC(LoginViewController.self) as! T
    case .registration:
      return instantiateVC(RegistrationViewController.self) as! T
    case .resetPassword:
      return instantiateVC(ResetPasswordViewController.self) as! T
    }
  }
  
  func storyboard() -> UIStoryboard {
    
    switch self {
      
    case .login,
         .registration,
         .resetPassword:
      return UIStoryboard(name: "Auth", bundle: nil)
    }
  }
  
  // Helper
  private func instantiateVC<T:StoryboardLoadable>(_ object:T.Type) -> T {
    return storyboard().instantiateViewController(withIdentifier: T.storyboardIdentifier) as! T
  }
}

extension AppRoute {
  
  static func showMainTab() {
    let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    appDelegate.window?.rootViewController = mainStoryboard.instantiateInitialViewController()
  }
}

extension UIViewController {
  
  func present(route:AppRoute, animated:Bool = true, completion: (() -> Void)? = nil) {
    present(route.viewController(), animated: animated, completion: completion)
  }
}

extension UINavigationController {
  
  func push(route:AppRoute, animated:Bool = true) {
    pushViewController(route.viewController(), animated: animated)
  }
  
  func setViewControllers(routes:[AppRoute], animated:Bool = false) {
    setViewControllers(routes.compactMap { $0.viewController() }, animated: animated)
  }
}
