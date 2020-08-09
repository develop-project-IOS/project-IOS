//
//  DeviceModel.swift
//  ShopSmartPhone
//
//  Created by Huynh Duy Quoc on 8/9/20.
//  Copyright © 2020 Huynh Duy Quoc. All rights reserved.
//

import Foundation
class DeviceModel{
    
    var devices : [Device] = []
    init() {
        if let url = Bundle.main.url(forResource: "DeviceSource/db", withExtension:"json"){
            do {
                let data = try Data(contentsOf: url)
                let json = JSONDecoder()
                devices = try json.decode([Device].self,from:data)
                
//                devices.append(contentsOf: devices)
//                devices.append(contentsOf: devices)
            } catch{
                print(error.localizedDescription)
            }
        }
    }
    func devices(forType type: DeviceType?)->[Device]{
        guard let type = type
        else {
            return devices
            
        }
        return devices.filter{ $0.type == type }
    }
}
