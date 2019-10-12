//
//  nextViewController.swift
//  SQlite(food)m1
//
//  Created by Student P_08 on 25/09/19.
//  Copyright © 2019 yashwant. All rights reserved.
//

import UIKit

class nextViewController: UIViewController,UITableViewDataSource {
    var allfood = [String]()
    var allprize = [String]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allfood.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.detailTextLabel?.text = allfood[indexPath.row]
        cell.textLabel?.text = allprize[indexPath.row]
        return cell
        
    }
    override func viewWillAppear(_ animated: Bool) {
        let selectquery = " select food , prize from tasktable"
        
        databaselib.obj.selectall(query: selectquery)
        allfood = databaselib.obj.food
        allprize = databaselib.obj.prize
        tableview.reloadData()
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var tableview: UITableView!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
