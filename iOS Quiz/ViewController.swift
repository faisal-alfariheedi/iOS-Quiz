//
//  ViewController.swift
//  iOS Quiz
//
//  Created by faisal on 20/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quastion: UILabel!
    @IBOutlet weak var nextb: UIButton!
    @IBOutlet weak var answerb: UIButton!
    @IBOutlet weak var answer: UILabel!
    var arr=["is apple great?","what are the best devices?","meat eater or vegan?"]
    var ans=["no","non apple devices","meat"]
    var c=0
    override func viewDidLoad() {
        super.viewDidLoad()
        answer.isHidden=true
        answer.text=ans[c]
        quastion.text=arr[c]
        // Do any additional setup after loading the view.
    }
    
    @IBAction func answeronclick(_ sender: UIButton) {
        answer.isHidden=false
    }
    
    @IBAction func nextonclick(_ sender: UIButton) {
        answer.isHidden=true
        c=(c+1)%(arr.count)
        
        answer.text=ans[c]
        quastion.text=arr[c]
    }
    

}

