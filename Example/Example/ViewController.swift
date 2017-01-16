//
//  ViewController.swift
//  Example
//
//  Created by Antoine DAUGUET on 13/01/2017.
//  Copyright © 2017 Antoine DAUGUET. All rights reserved.
//

import UIKit
import ADProgressView

@objc class ViewController: UIViewController, ADProgressViewDelegate {
    
    @IBOutlet weak var progressView: ADProgressView!
    
    override func viewWillAppear(_ animated: Bool) {
        progressView.reset()
    }
    
    @IBAction func start(_ sender: Any) {
        progressView.start()
    }
    
    @IBAction func pause(_ sender: Any) {
        progressView.pause()
    }
    
    @IBAction func reset(_ sender: Any) {
        progressView.reset()
    }
}

extension ViewController {
    
    func progressViewDidFinish() {
        print(#function)
    }
}
