//
//  ViewController.swift
//  EzDataPass
//
//  Created by iOS Student on 3/22/17.
//  Copyright © 2017 tek4fun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txt_id: UITextField!
    @IBOutlet weak var txt_Pass: UITextField!
    var id: String!
    var pass: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        id = user.share.id
        pass = user.share.pass

    }
    @IBAction func btn_Login(_ sender: AnyObject) {
        if txt_id.text! == id  && txt_Pass.text! == pass{
            login()
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        id = user.share.id
        pass = user.share.pass
    }


    func login(){
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "viewDetail") as! DetailVC
        detailVC.name = user.share.name
        detailVC.age = user.share.age
        detailVC.sdt = user.share.sdt
        detailVC.mail = user.share.mail
        navigationController?.pushViewController(detailVC, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

