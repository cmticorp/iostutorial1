//
//  CreateDriverViewController.swift
//  jwgTutorial1
//
//  Created by James Graver on 5/26/21.
//

import UIKit

class CreateDriverViewController: UITableViewController {
    
    var ls_driver = zvoter.init(driverLiscNo: 0, lastName: "", firstName: "", street: "", city: "", zip: 0, state: "", phone: "")
    var lt_driver: [zvoter] = []

    @IBOutlet weak var driverLicense: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var street: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var zipcode: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var response: UILabel!
    
    @IBAction func postDriverRecord(_ sender: Any) {
        ls_driver.driverLiscNo = (driverLicense.text! as NSString).integerValue
        ls_driver.lastName = lastName.text!
        ls_driver.firstName = firstName.text!
        ls_driver.street = street.text!
        ls_driver.city = city.text!
        ls_driver.zip = (zipcode.text! as NSString).integerValue
        ls_driver.state = state.text!
        ls_driver.phone = phone.text!
        lt_driver.append(ls_driver)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        (segue.destination as? DisplayDriverLiscenseViewController)?.lt_dispdriver = lt_driver
         
    }
    

}
