//
//  Routable.swift
//  App
//
//  Created by Michael Henry Pantaleon on 2018/06/05.
//  Copyright © 2018 Michael Henry Pantaleon. All rights reserved.
//

import UIKit

protocol Routable {
  
  func viewController<T>()  -> T
  func storyboard()         -> UIStoryboard
}
