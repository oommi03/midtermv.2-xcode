//
//  LoginViewController.swift
//  midtermexam
//
//  Created by Teerawat kumsila on 5/20/17.
//  Copyright © 2017 Teerawat kumsila. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var randomNum:UInt32 = arc4random_uniform(10000)
    @IBOutlet weak var passwordlb: UITextField!
    @IBOutlet weak var randomLb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        randomLb.text = String(randomNum)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func loginLb(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TabbarViewController") as? ViewController
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "profile") as? ProfileViewController
        if (passwordlb.text == String(randomNum)){
            vc2?.numberString = passwordlb.text!
            
            self.present(vc!, animated: true, completion: nil)
        }
        else{
            
            randomNum = arc4random_uniform(10000)
            randomLb.text = String(randomNum)
        

        }
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
