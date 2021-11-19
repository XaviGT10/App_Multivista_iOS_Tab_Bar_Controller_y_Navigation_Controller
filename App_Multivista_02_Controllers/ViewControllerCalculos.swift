//
//  ViewControllerCalculos.swift
//  App_Multivista_02_Controllers
//
//  Created by Xavier Giron Tomas on 10/11/21.
//

import UIKit

class ViewControllerCalculos: UIViewController {

    var result: Float?
    var num1: Float?
    var num2: Float?
    var actionRequired: UILabel?
    var seleccion: Int?
    var miSelect: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "operacion" {
                if let nextViewController = segue.destination as? ViewController3 {
                    nextViewController.selectoperation = actionRequired!.text
                    nextViewController.selectoperation = miSelect
                }
            }
        }
    
    func recogeValores() {
        if  miSelect == "Suma" {
            seleccion = 0
        } else if miSelect == "Resta" {
            seleccion = 1
        } else if miSelect == "Multiplicación" {
            seleccion = 2
        } else if miSelect == "División" {
            seleccion = 3
        }
    }
    
    @IBAction func calcular(_ sender: Any) {
        recogeValores()
        let num1 = txtValor1.text
        let num2 = txtValor2.text
        let operando1 = Float(num1!)
        let operando2 = Float(num2!)
        
        guard let num1 = Int(txtValor1.text ?? ""), let num2 = Int(txtValor2.text ?? "")
        else {
            lblResultado.text = "Valor no numérico"
            return
        }
        
        
        if seleccion == 0 {
            result = operando1! + operando2!
            let resultado = String(result!)
            lblResultado.text = resultado
            
        } else if seleccion == 1{
            result = operando1! - operando2!
            let resultado = String(result!)
            lblResultado.text = resultado
            
        } else if seleccion == 2{
            result = operando1! * operando2!
            let resultado = String(result!)
            lblResultado.text = resultado
        } else if seleccion == 3{
            result = operando1! / operando2!
            let resultado = String(result!)
            lblResultado.text = resultado
        }
    }
    
    
    @IBOutlet weak var txtValor1: UITextField!
    @IBOutlet weak var txtValor2: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
