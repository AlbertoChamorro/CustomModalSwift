//
//  ModalViewController.swift
//  CustomModals
//
//  Created by GSE on 20/5/19.
//  Copyright © 2019 GSE. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    @IBOutlet weak var modalView: UIView!
    @IBOutlet weak var closeImageButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        self.modalView.layer.borderWidth = 1
        self.modalView.layer.borderColor = UIColor.groupTableViewBackground.cgColor
        self.modalView.clipsToBounds = true
        self.modalView.layer.cornerRadius = 15
        self.modalView.layer.shadowRadius = 15
        self.modalView.layer.shadowOpacity = 0.6
        self.modalView.layer.shadowColor = UIColor.black.cgColor


       self.closeImageButton.isUserInteractionEnabled = true
       self.closeImageButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(closeScreen)))
    }
    
    @objc private func closeScreen() {
        self.dismiss(animated: true, completion: nil)
    }

}
