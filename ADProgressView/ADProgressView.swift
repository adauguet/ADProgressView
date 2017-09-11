//
//  ADProgressView.swift
//  ProgressView
//
//  Created by Antoine DAUGUET on 13/01/2017.
//  Copyright © 2017 Antoine DAUGUET. All rights reserved.
//

import Foundation
import UIKit

public class ADProgressView: UIProgressView {
    
    @IBOutlet open var delegate: ADProgressViewDelegate?
    
    private var time: Float = 0.0
    private var timer: Timer?
    
    @IBInspectable var timeInterval: Float = 0.01
    @IBInspectable var duration: Float = 3.0
    
    // MARK: - Public methods
    
    /// Starts the progress view.
    public func start() {
        timer?.invalidate()
        if time >= duration { time = 0.0 }        
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(timeInterval), target: self, selector: #selector(increment), userInfo: nil, repeats: true)
    }
    
    @objc func foo() {
        
    }
    
    /// Pauses the progress view.
    public func pause() {
        timer?.invalidate()
    }
    
    /// Resets the progress view.
    public func reset() {
        timer?.invalidate()
        time = 0.0
        setProgress(0.0, animated: false)
    }
    
    // MARK: - Private methods
    
    @objc private func increment() {
        time += timeInterval
        setProgress(time / duration, animated: false)
        if time >= duration {
            timer?.invalidate()
            delegate?.progressViewDidFinish()
        }
    }
}
