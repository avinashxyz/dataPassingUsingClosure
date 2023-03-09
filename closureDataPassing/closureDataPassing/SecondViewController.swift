//
//  SecondViewController.swift
//  closureDataPassing
//
//  Created by AVINASH on 06/03/23.
//

import UIKit
//typealias v2CB = (_ infoToReturn :String) ->()
class SecondViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
   // var completionBlock:v2CB?
    
    var completionBlock:((String,String)->())?
    
    var sum: ((Int,Int) ->())?//= { x,y in sum(x,y) }
    
    var x :Int = 2
    var y : Int = 3
    
   
     
//    guard let cb = sum else {return}
//    cb(self.x,self.y)
    
    var str = "#######"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveBtnClk(_ sender: UIButton) {
        
        if let sum = sum //else {return}
        {
        sum(self.x , self.y)
        }
        
        guard let cb = completionBlock else {return}
        
      //  print(">>>>CB>>>> ",)
    
        cb((self.myTextField?.text ?? ""),"Mr.\(self.str)")
        
        
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
   
    
    
    
    
}
