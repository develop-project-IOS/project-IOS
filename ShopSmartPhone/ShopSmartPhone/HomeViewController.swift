//
//  HomeViewController.swift
//  ShopSmartPhone
//
//  Created by Huynh Duy Quoc on 7/11/20.
//  Copyright © 2020 Huynh Duy Quoc. All rights reserved.
//

import UIKit
class HomeViewController: UIViewController {

      var deviceModel = DeviceModel()
        var selectType: DeviceType?
        
        @IBOutlet weak var tableView: UITableView!
            
      
        @IBAction func didCangeFilter(_ sender: UISegmentedControl) {
            switch sender.selectedSegmentIndex {
            case 0:
                selectType = nil
            case 1:
                selectType = .iphone
            case 2:
                selectType = .ipad
            case 3:
                selectType = .macbook
            default:
                break
            }
            tableView.reloadData()
        }

        override func viewDidLoad() {
            super.viewDidLoad()
                tableView.dataSource = self
                tableView.delegate = self
            // Do any additional setup after loading the view.
        }
        
      
    }
    extension HomeViewController:UITableViewDataSource{
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DeviceCell",for: indexPath)
            let device = deviceModel.devices(forType: selectType)[indexPath.row]
            cell.textLabel?.text = device.name
            cell.detailTextLabel?.text = device.price
            cell.imageView?.image = UIImage(named: device.image)
    //        if(indexPath.row % 2 == 0){
    //            cell.imageView?.image = UIImage(named: device.image)
    //        }
            return cell
        }
        
        func tableView(_ tabView: UITableView, numberOfRowsInSection section:Int) -> Int{
            return deviceModel.devices(forType: selectType).count
          }
      }
    extension HomeViewController:UITableViewDelegate{
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 120
        }
    }
