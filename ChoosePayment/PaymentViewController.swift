//
//  PaymentViewController.swift
//  ChoosePayment
//
//  Created by Allicia Viona Sagi on 14/06/23.
//

import UIKit

class PaymentViewController: UIViewController {
    
    let errorMessage = "Error Message"
    
    @IBOutlet weak var choosePaymentMethodBtn: UIButton!
    @IBOutlet weak var codeValidityLabel: UILabel!
    @IBOutlet weak var discountCodeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressChoosePayment(_ sender: Any) {
        let paymentStoryboard = UIStoryboard(name: "ChoosePayment", bundle: nil)
        let paymentVC = paymentStoryboard.instantiateViewController(withIdentifier: "ViewController") as! ChoosePaymentViewController
        present(paymentVC, animated: true, completion: nil)
    }
    

}
