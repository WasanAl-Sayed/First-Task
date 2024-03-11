//
//  HalfScreenPresentationProtocol.swift
//  FirstTask
//
//  Created by fts on 07/03/2024.
//

import Foundation
import UIKit

class HalfScreenPresentationController: UIPresentationController {
    override var frameOfPresentedViewInContainerView: CGRect {
        guard let containerView = containerView else { return CGRect.zero }
        
        let height: CGFloat = containerView.bounds.height / 2.0
        let originY: CGFloat = containerView.bounds.height - height

        return CGRect(x: 0, y: originY, width: containerView.bounds.width, height: height)
    }
}
