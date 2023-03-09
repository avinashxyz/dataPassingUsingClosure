//
//  ViewController.swift
//  closureDataPassing
//
//  Created by AVINASH on 06/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {

    }

    @IBAction func submitAction(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
//        vc?.myCompletionHandler(completion: { (str1) in
//            print("----->",str1)
//        })
        
     //   vc?.completionBlock = {}
        
        vc?.sum = { x , y in
            print(x + y)
        }

               vc?.completionBlock = {[weak self] dataReturned,str in
                   //Data is returned **Do anything with it **
                
                self?.myTextField.text = str + " " + dataReturned
                   print(dataReturned)
               }
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    

    
}

