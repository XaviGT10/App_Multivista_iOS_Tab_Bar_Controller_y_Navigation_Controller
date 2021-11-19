//
//  ViewController.swift
//  App_Multivista_02_Controllers
//
//  Created by Xavier Giron Tomas on 10/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    var miNombre: String?
    var miApellido: String?
    var miMail: String?
    var nombre: UILabel?
    var stringApellido: UILabel?
    var stringMail: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaDatos = segue.destination as! ViewControllerInsertData
        vistaDatos.nombre = txtName.text
        vistaDatos.apellido = txtSurname.text
        vistaDatos.correo = txtMail.text
        
    }
    
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtSurname: UITextField!
    @IBOutlet weak var txtMail: UITextField!
}

