//
//  ViewController.swift
//  MVVM-C-Boiler-Plate
//
//  Created by Joan Wilson Oliveira on 11/10/22.
//

import UIKit

class ViewController: UIViewController, Coordinating  {

    var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemMint
        title = "Home"

        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.setTitle("Tap me!", for: .normal)
    }

    @objc func didTapButton() {
        coordinator?.eventOccured(with: .buttonTapped)
    }
}

