//
//  ViewController.swift
//  11_constraints
//
//  Created by Alexander Golovashchenko on 2/18/20.
//  Copyright © 2020 Alexander Golovashchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lionView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lionView.contentMode = .scaleAspectFit
        
        
    
}
    
    var ugolPovorotaImage: CGFloat = 0
    
    
    @IBAction func leftButton(_ sender: Any) {
        print("left button")
        
        
        self.ugolPovorotaImage -= .pi/2

             UIView.animate(withDuration: 1.0) {
                        print("animation")
                 self.lionView.transform = CGAffineTransform(rotationAngle: self.ugolPovorotaImage)
      
        }
    }
    
    @IBAction func rightButton(_ sender: Any) {
        print("right button")
        self.ugolPovorotaImage += .pi/2

                    UIView.animate(withDuration: 1.0) {
                               print("animation")
                        self.lionView.transform = CGAffineTransform(rotationAngle: self.ugolPovorotaImage)
        
        
    }
    
}
}
