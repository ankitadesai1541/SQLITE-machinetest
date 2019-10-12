//
//  ViewController.swift
//  SQlite(food)m1
//
//  Created by Student P_08 on 25/09/19.
//  Copyright © 2019 yashwant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBAction func save(_ sender: UIButton) {
        let insertquery = "insert into tasktable(food,prize)values('\(food.text!)','\(prize.text!)')"
        let isSucess = databaselib.obj.excuteQuery(query: insertquery)
        if isSucess
        {
            print("insert sucessful")
        }
        else{
            print("insert insucess")
        }
        
    }
    
    @IBAction func next(_ sender: UIButton) {
        let next = storyboard?.instantiateViewController(withIdentifier: "nextViewController")as! nextViewController
        navigationController?.pushViewController(next, animated: true)
    }
    @IBOutlet weak var prize: UITextField!
    @IBOutlet weak var food: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

