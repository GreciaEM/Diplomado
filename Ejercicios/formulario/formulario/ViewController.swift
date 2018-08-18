//
//  ViewController.swift
//  formulario
//
//  Created by Grecia Escárcega on 8/18/18.
//  Copyright © 2018 Grecia Escárcega. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    

    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var cumpleaños: UIDatePicker!
    @IBOutlet weak var sexo: UIPickerView!
    @IBOutlet weak var carrera: UIPickerView!
    
    let pickerData: [String] = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foto.image = UIImage(named: "foto")
        nombre.text = "Grecia Escárcega"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

