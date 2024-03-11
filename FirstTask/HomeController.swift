//
//  HomeController.swift
//  FirstTask
//
//  Created by fts on 07/03/2024.
//

import UIKit

class HomeController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func chooseProductPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: Constant.storyboard, bundle: nil)
        guard let destinationController = storyboard.instantiateViewController(withIdentifier: Constant.identifier) as? DetailsController
        else { return }
        destinationController.delegate = self
        if let presentationController = destinationController.presentationController as? UISheetPresentationController {
            presentationController.detents = [.medium(), .large()]
        }
        self.present(destinationController, animated: true)
    }
}

extension HomeController: DetailsControllerDelegate {

    func selectedProduct(_ product: ProductTypes) {
        label.text = product.title
        imageView.image = product.image
    }
}
