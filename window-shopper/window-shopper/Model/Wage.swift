//
//  Wage.swift
//  window-shopper
//
//  Created by Vlado Velkovski on 11/13/18.
//  Copyright © 2018 Vlado Velkovski. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        print("\(Int(ceil(price / wage)))")
        return Int(ceil(price / wage))
    }
}
