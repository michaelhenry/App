//
//  StoryboardLoadable.swift
//  App
//
//  Created by Michael Henry Pantaleon on 2018/06/05.
//  Copyright © 2018 Michael Henry Pantaleon. All rights reserved.
//

import UIKit

protocol StoryboardLoadable {
  static var storyboardIdentifier:String { get }
}

// Default implementation if UIViewController comply to StoryboardLoadable protocol
extension StoryboardLoadable where Self:UIViewController {
  
  static var storyboardIdentifier:String {
    let className = String(describing: self)
    return className
  }
}


