//
//  ViewController.swift
//  componentes
//
//  Created by Grecia Escárcega on 8/18/18.
//  Copyright © 2018 Grecia Escárcega. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    
    @IBAction func slider(_ sender: UISlider) {
    
        if sender.value < 0.2{
            imagen.image = UIImage(named: "1")
        }
        else if 0 < sender.value && sender.value <= 0.2 {
            imagen.image = UIImage(named: "2")
        }
        else if 0.2 < sender.value && sender.value <= 0.4{
            imagen.image = UIImage(named: "3")
        }
        else if 0.4 < sender.value && sender.value <= 0.6{
            imagen.image = UIImage(named: "4")
        }
        else if 0.6 < sender.value && sender.value <= 0.8{
            imagen.image = UIImage(named: "5")
        }
        else if sender.value > 0.8 {
            imagen.image = UIImage(named: "6")
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagen.image = UIImage(named: "1")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

