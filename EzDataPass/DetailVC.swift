//
//  DetailVC.swift
//  EzDataPass
//
//  Created by iOS Student on 3/22/17.
//  Copyright © 2017 tek4fun. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var txt_Name: UITextField!
    @IBOutlet weak var txt_Age: UITextField!
    @IBOutlet weak var txt_Phone: UITextField!
    @IBOutlet weak var txt_Mail: UITextField!


    var name: String!
    var age: String!
    var sdt: String!
    var mail: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        txt_Name.text = name
        txt_Age.text = age
        txt_Mail.text = mail
        txt_Phone.text = sdt
        
    }

    override func viewWillAppear(_ animated: Bool) {
        txt_Name.text = user.share.name
        txt_Age.text = user.share.age
        txt_Mail.text = user.share.mail
        txt_Phone.text = user.share.sdt
    }

    @IBAction func btn_Edit(_ sender: AnyObject) {
        let editVC = self.storyboard?.instantiateViewController(withIdentifier: "viewEdit") as! EditVC
        editVC.name = name
        editVC.age = age
        editVC.sdt = sdt
        editVC.mail = mail
        editVC.pass = user.share.pass
        navigationController?.pushViewController(editVC, animated: true)

    }

    @IBAction func btn_Logout(_ sender: AnyObject) {
        _ = navigationController?.popViewController(animated: true)
    }
}
