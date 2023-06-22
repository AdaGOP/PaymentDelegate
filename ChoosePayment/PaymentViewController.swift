//
//  PaymentViewController.swift
//  ChoosePayment
//
//  Created by Allicia Viona Sagi on 14/06/23.
//

import UIKit

protocol PaymentDelegate {
    func getPaymentMethod(paymentMethod: String)
}

class PaymentViewController: UIViewController, PaymentDelegate {
    
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
        paymentVC.paymentDelegate = self
        present(paymentVC, animated: true, completion: nil)
    }
    
    func getPaymentMethod(paymentMethod: String) {
        choosePaymentMethodBtn.setTitle("\(paymentMethod)", for: .normal)
    }

}
