//
//  RegistrationViewController.swift
//  App
//
//  Created by Michael Henry Pantaleon on 2018/06/05.
//  Copyright © 2018 Michael Henry Pantaleon. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }

  @IBAction func didTapRegisterButton(_ sender: Any) {
    AppRoute.showMainTab()
  }
  
  @IBAction func didTapLoginButton(_ sender: Any) {
    self.navigationController?.push(route: .login)
  }
}

