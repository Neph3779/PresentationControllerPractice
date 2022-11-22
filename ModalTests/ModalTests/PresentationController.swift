//
//  ModalViewController.swift
//  ModalTests
//
//  Created by 천수현 on 2022/11/22.
//

import UIKit

class PresentationController: UIPresentationController {
    override var frameOfPresentedViewInContainerView: CGRect {
        CGRect(origin: CGPoint(x: 0,
                               y: self.containerView!.frame.height * 4/5),
               size: CGSize(width: self.containerView!.frame.width,
                            height: self.containerView!.frame.height * 1/5))
    }
}
