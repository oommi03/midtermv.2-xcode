//
//  ProfileViewController.swift
//  midtermexam
//
//  Created by Teerawat kumsila on 5/20/17.
//  Copyright © 2017 Teerawat kumsila. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    var numberString = "555"
    var profile = Profile()
    @IBOutlet weak var lname: UILabel!
    @IBOutlet weak var fname: UILabel!
    @IBOutlet weak var code: UILabel!
    @IBOutlet weak var rundomLb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(numberString)
        setupprofile()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setupprofile(){
        code.text = "Code : " + profile.code
        fname.text = "Fist Name : " + profile.fname
        lname.text = "Last Name : " + profile.lname
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
