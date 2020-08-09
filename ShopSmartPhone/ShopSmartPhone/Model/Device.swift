//
//  Device.swift
//  ShopSmartPhone
//
//  Created by Huynh Duy Quoc on 8/9/20.
//  Copyright © 2020 Huynh Duy Quoc. All rights reserved.
//

import Foundation
struct Device:Decodable{
    var name:String
    var price:String
    var image:String
    var type:DeviceType
    

    
}
enum DeviceType : String, Decodable{
    case iphone = "iphone"
    case ipad = "ipad"
    case macbook = "macbook"
}
