//
//  ViewController.swift
//  ChoosePayment
//
//  Created by Allicia Viona Sagi on 14/06/23.
//

import UIKit

class ChoosePaymentViewController: UIViewController {
    
    @IBOutlet weak var creditBtn: UIButton!
    var paymentDelegate: PaymentDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        creditBtn.layer.cornerRadius = 8
    }

    @IBAction func pressCreditDebit(_ sender: Any) {
        paymentDelegate?.getPaymentMethod(paymentMethod: "Credit/Debit Card")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pressVirtualAccount(_ sender: Any) {
        paymentDelegate?.getPaymentMethod(paymentMethod: "Virtual Account")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func presseWallet(_ sender: Any) {
        paymentDelegate?.getPaymentMethod(paymentMethod: "E-Wallet")
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func pressCod(_ sender: Any) {
        paymentDelegate?.getPaymentMethod(paymentMethod: "COD")
        dismiss(animated: true, completion: nil)
    }
    
}

