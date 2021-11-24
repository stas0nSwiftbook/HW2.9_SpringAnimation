//
//  ViewController.swift
//  HW2.9_SpringAnimation
//
//  Created by Станислав Буйновский on 23.11.2021.
//

import Spring

class AnimationController: UIViewController {
    
    @IBOutlet weak var presentLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var springImageView: SpringImageView!
    @IBOutlet weak var startAnimationButton: UIButton!
    
    private var randomAnimation = RandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomAnimation.generateAnimation()
    }
    
    @IBAction func startAnimation(_ sender: Any) {
        springImageView.animation = randomAnimation.present
        springImageView.curve = randomAnimation.curve
        springImageView.force = randomAnimation.force
        springImageView.duration = randomAnimation.duration
        springImageView.delay = randomAnimation.delay
        springImageView.animate()
        setLabels(with: randomAnimation)
        
        randomAnimation.generateAnimation()
        setButton()
    }
    
    private func setButton() {
        startAnimationButton.setTitle("Next \(randomAnimation.present)", for: .normal)
    }
    
    private func setLabels(with animation: RandomAnimation) {
        presentLabel.text = "present: \(animation.present)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force: \(stringFormatter(with: animation.force))"
        durationLabel.text = "duration: \(stringFormatter(with: animation.duration))"
        delayLabel.text = "delay: \(stringFormatter(with: animation.delay))"
    }
    
    private func stringFormatter(with digit: CGFloat) -> String {
        String.localizedStringWithFormat("%.2F", digit)
    }
}

