//
//  HalfScreenPresentationProtocol.swift
//  FirstTask
//
//  Created by fts on 07/03/2024.
//

import Foundation
import UIKit

class HalfScreenPresentationController: UIPresentationController {
    private let presentedViewHeightPercentage: CGFloat = 0.5

        override var frameOfPresentedViewInContainerView: CGRect {
            guard let containerView = containerView else { return CGRect.zero }

            let height: CGFloat = containerView.bounds.height * presentedViewHeightPercentage
            let originY: CGFloat = containerView.bounds.height - height

            return CGRect(x: 0, y: originY, width: containerView.bounds.width, height: height)
        }

        override func presentationTransitionWillBegin() {
            guard let containerView = containerView else { return }

            // Set the initial frame for the presented view during the presentation transition
            presentedView?.frame = frameOfPresentedViewInContainerView

            // Add the presented view to the container view
            containerView.addSubview(presentedView!)

            // Animate the presentation transition
            presentedViewController.transitionCoordinator?.animate(alongsideTransition: { _ in
                self.presentedView?.frame = self.frameOfPresentedViewInContainerView
            }, completion: nil)
        }
}
