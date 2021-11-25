//
//  ViewController.swift
//  HomeWork2.9
//
//  Created by Михаил Позялов on 23.11.2021.
//
import Spring

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var codeTextView: UITextView!

    
    private var animation = Animation.getRandomAnimation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        codeTextView.text = animation.description
    }

    @IBAction func runbuttonPressed(_ sender: SpringButton) {
        codeTextView.text = animation.description
        
        animationView.animation = animation.name
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("RUN \(animation.name)", for: .normal)
    }
    
    private func animateView() {
    }
    
    private func setOptions() {
    }
    
}
