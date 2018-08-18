//
//  ViewController.swift
//  calculadora
//
//  Created by Grecia Escárcega on 8/18/18.
//  Copyright © 2018 Grecia Escárcega. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pantalla: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func numerButton(_ sender: UIButton) {

        pantalla.text = String(sender.tag - 1)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

