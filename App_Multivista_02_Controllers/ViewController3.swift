//
//  ViewController3.swift
//  App_Multivista_02_Controllers
//
//  Created by Xavier Giron Tomas on 10/11/21.
//

import UIKit

class ViewController3: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var variableIntercambio: String?
    var selectoperation: String?
    
    @IBOutlet weak var pickerOperaciones: UIPickerView!
    var pickedOperaciones: Int = 55
    var operaciones = ["Suma", "Resta", "Multiplicación", "División"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return operaciones.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print("has seleccionado \(operaciones[row])")
        return operaciones[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectoperation = operaciones[row]
        
        print(selectoperation)
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let irOperar = segue.destination as! ViewControllerCalculos
        irOperar.miSelect = selectoperation
    }
}
