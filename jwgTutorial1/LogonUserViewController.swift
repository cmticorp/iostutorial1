//
//  LogonUserViewController.swift
//  jwgTutorial1
//
//  Created by James Graver on 5/24/21.
//

import UIKit

class LogonUserViewController: UIViewController {
    
    
    @IBOutlet weak var userid: UITextField!
    @IBOutlet weak var userpwd: UITextField!
    
    @IBAction func validateUser(_ sender: Any) {
        print(userid.text!)
        print(userpwd.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
