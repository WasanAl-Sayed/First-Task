//
//  SegueController.swift
//  FirstTask
//
//  Created by fts on 07/03/2024.
//

import UIKit

protocol DetailsControllerDelegate: AnyObject {
    func selectedProduct(_ product: ProductTypes)
}

class DetailsController: UIViewController {
    
    weak var delegate: DetailsControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            delegate?.selectedProduct(.iphone)
        case 1:
            delegate?.selectedProduct(.ipad)
        case 2:
            delegate?.selectedProduct(.macbook)
        default:
            break
        }
        dismiss(animated: true, completion: nil)
    }
    
}
