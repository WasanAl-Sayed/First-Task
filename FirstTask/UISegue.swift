//
//  UISegue.swift
//  FirstTask
//
//  Created by fts on 07/03/2024.
//

import Foundation
import UIKit

class UISegue: UIStoryboardSegue {
    override func perform() {
            // Ensure the destination view controller has the correct presentation settings
            destination.modalPresentationStyle = .custom
            destination.transitioningDelegate = source as? UIViewControllerTransitioningDelegate
            
            // Present the destination view controller modally
            source.present(destination, animated: true, completion: nil)
        }
}
