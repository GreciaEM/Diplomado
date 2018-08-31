//
//  ViewController.swift
//  ISpy
//
//  Created by Grecia Escárcega on 8/30/18.
//  Copyright © 2018 Grecia Escárcega. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var image: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scroll.delegate = self
        
        updateZoomFor(size: view.bounds.size)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return image
    }
    
    func updateZoomFor( size: CGSize) {
        let widthScale = image.bounds.width
        let heightScale = image.bounds.height
        scroll.maximumZoomScale = max(widthScale*10, heightScale*10)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

