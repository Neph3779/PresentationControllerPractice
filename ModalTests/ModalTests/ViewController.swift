//
//  ViewController.swift
//  ModalTests
//
//  Created by 천수현 on 2022/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
    }

    @IBAction func buttonTapped(_ sender: Any) {
        let encourageVC = EncourageViewController()
        encourageVC.modalPresentationStyle = .custom
        encourageVC.transitioningDelegate = self
        present(encourageVC, animated: true)

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.dismiss(animated: true)
        }
    }
}

extension ViewController: UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return PresentationController(presentedViewController: presented, presenting: presenting)
    }
}
