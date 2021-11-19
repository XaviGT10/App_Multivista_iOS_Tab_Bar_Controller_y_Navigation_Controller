//
//  ViewControllerInsertData.swift
//  App_Multivista_02_Controllers
//
//  Created by Xavier Giron Tomas on 10/11/21.
//

import UIKit

class ViewControllerInsertData: UIViewController {

    var nombre: String?
    var apellido: String?
    var correo: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        datosPasados()
        // Do any additional setup after loading the view.
    }
    
    
    
    func datosPasados(){
        lblNombre.text = nombre
        lblSu8rname.text = apellido
        lblMail.text = correo
    }
    
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblSu8rname: UILabel!
    @IBOutlet weak var lblMail: UILabel!
}
