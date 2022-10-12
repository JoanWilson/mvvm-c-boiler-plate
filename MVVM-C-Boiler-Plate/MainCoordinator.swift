//
//  MainCoordinator.swift
//  MVVM-C-Boiler-Plate
//
//  Created by Joan Wilson Oliveira on 11/10/22.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {

    typealias ViewControllerCoordinating = UIViewController & Coordinating

    var navigationController: UINavigationController?

    var children: [Coordinator]? = nil

    func eventOccured(with type: Event) {
        switch type {
        case .buttonTapped:
            var viewController: ViewControllerCoordinating = SecondViewController()
            viewController.coordinator = self
            navigationController?.pushViewController(viewController, animated: true)
        }
    }

    func start() {
        var viewController: ViewControllerCoordinating = ViewController()
        viewController.coordinator = self
        navigationController?.setViewControllers([viewController], animated: false)
    }
}
