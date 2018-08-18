//
//  ViewController.swift
//  lampyTheLamp
//
//  Created by Grecia Escárcega on 8/17/18.
//  Copyright © 2018 Grecia Escárcega. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var backgroundColour: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundColour.backgroundColor = UIColor.white

    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if (backgroundColour.backgroundColor == UIColor.white){
            backgroundColour.backgroundColor = UIColor.black
        }
        else {
            backgroundColour.backgroundColor = UIColor.white
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

