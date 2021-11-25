//
//  ViewController.swift
//  HW2.9_SpringAnimation
//
//  Created by Станислав Буйновский on 23.11.2021.
//

import Spring

class AnimationViewController: UIViewController {
    
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var springImageView: SpringImageView!
    
    private var randomAnimation = Animation.generateAnimation()
    
    @IBAction func startAnimation(_ sender: UIButton) {
        springImageView.animation = randomAnimation.present
        springImageView.curve = randomAnimation.curve
        springImageView.force = randomAnimation.force
        springImageView.duration = randomAnimation.duration
        springImageView.delay = randomAnimation.delay
        springImageView.animate()
        
        animationLabel.text = randomAnimation.description
        randomAnimation = Animation.generateAnimation()
        sender.setTitle("Next \(randomAnimation.present)", for: .normal)
    }
}

