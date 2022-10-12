//
//  Coordinator.swift
//  MVVM-C-Boiler-Plate
//
//  Created by Joan Wilson Oliveira on 11/10/22.
//

import Foundation
import UIKit

enum Event {
    case buttonTapped
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    var children: [Coordinator]? { get set }

    func eventOccured(with type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}


