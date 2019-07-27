//
//  ViewController.swift
//  CustomModals
//
//  Created by GSE on 20/5/19.
//  Copyright © 2019 GSE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func ShoModalAction(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "ModalViewController") else { return }
        vc.modalPresentationStyle = .overCurrentContext
        vc.modalTransitionStyle = .crossDissolve
        
        self.present(vc, animated: true, completion: nil)
    }
}

