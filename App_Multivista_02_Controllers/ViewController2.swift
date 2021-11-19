//
//  ViewController2.swift
//  App_Multivista_02_Controllers
//
//  Created by Xavier Giron Tomas on 10/11/21.
//

import UIKit

class ViewController2: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerUsers: UIPickerView!
    var users = ["User1", "User2", "User3", "User4", "User5"]
    var pickUsers: String?
    var numerito: Int?
    var selectedUser: Int = 0
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return users.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return users[row]
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func borrado(_ sender: Any) {
        users.remove(at: pickerUsers.selectedRow(inComponent: 0))
        pickerUsers.reloadComponent(0)
        lblAviso.text = "Se ha borrado el usuario correctamente"
    }
    @IBOutlet weak var miBtnBorrar: UIButton!
    @IBOutlet weak var lblAviso: UILabel!
}
