//
//  SecondViewController.swift
//  MVVM-C-Boiler-Plate
//
//  Created by Joan Wilson Oliveira on 11/10/22.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {

    var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second"
        view.backgroundColor = .systemRed

    }

}
