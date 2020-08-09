//
//  HistoryTableViewController.swift
//  ShopSmartPhone
//
//  Created by Bui  Huy on 8/9/20.
//  Copyright © 2020 Huynh Duy Quoc. All rights reserved.
//

import UIKit

class HistoryTableViewController: UITableViewController {

    var tenSP:[String]!
    var giaSp:[String]!
    var ngayMua:[String]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tenSP = ["Name product","abc","cdf","ghk"]
        giaSp = ["price","123","123","123"]
        ngayMua = ["buy day","1/1/2020","2/2/2020","3/3/2020"]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tenSP.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let nameproduct:UILabel=UILabel(frame: CGRect(x: 0,y: 0,width: 250, height: 20))
        nameproduct.text = tenSP[indexPath.row];
        cell.addSubview(nameproduct)
        let price:UILabel=UILabel(frame: CGRect(x: 160,y: 0,width: 250, height: 20))
        price.text = giaSp[indexPath.row];
        cell.addSubview(price)
        let date:UILabel=UILabel(frame: CGRect(x: 300,y: 0,width: 250, height: 20))
        date.text = ngayMua[indexPath.row];
        cell.addSubview(date)
//        cell.textLabel?.text = tenSP[indexPath.row]
//        cell.textLabel?.text = giaSp[indexPath.row]
//        cell.textLabel?.text = ngayMua[indexPath.row]
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
