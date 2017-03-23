//
//  EditVC.swift
//  EzDataPass
//
//  Created by iOS Student on 3/22/17.
//  Copyright © 2017 tek4fun. All rights reserved.
//

import UIKit

class EditVC: UIViewController {

    @IBOutlet weak var txt_Name: UITextField!
    @IBOutlet weak var txt_Age: UITextField!
    @IBOutlet weak var txt_Phone: UITextField!
    @IBOutlet weak var txt_Mail: UITextField!
    @IBOutlet weak var txt_Pass: UITextField!

    var name: String!
    var age: String!
    var sdt: String!
    var mail: String!
    var pass: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        txt_Name.text = name
        txt_Age.text = age
        txt_Phone.text = sdt
        txt_Mail.text = mail
        txt_Pass.text = pass
    }

    @IBAction func Submit(_ sender: AnyObject) {
        user.share.name = txt_Name.text!
        user.share.age = txt_Age.text!
        user.share.sdt = txt_Phone.text!
        user.share.mail = txt_Mail.text!
        user.share.pass = txt_Pass.text!
    }


}
