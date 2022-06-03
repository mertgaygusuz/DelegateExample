//
//  ViewController.swift
//  DelegateExample
//
//  Created by Mert Gaygusuz on 3.06.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtKullaniciAdi: UITextField!
    
    @IBOutlet weak var txtSifre: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var lblPassword: UILabel!
    
    @IBOutlet weak var btnDelete: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtKullaniciAdi.delegate = self
        txtSifre.delegate = self
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        if textField.tag == 1{
            lblResult.text = "Kullanıcı adınız : \(textField.text!)"
        }
        else if textField.tag == 2{
            lblPassword.text = "Parolanız : \(textField.text!)"
        }
        return true
    }
    
    
    @IBAction func btnDelete(_ sender: Any) {
        lblResult.text = ""
        lblPassword.text = ""
        txtKullaniciAdi.text = nil
        txtSifre.text = nil
        
    }
    
}

