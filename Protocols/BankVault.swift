//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

//NORI Added import

import Foundation

protocol ProvideAccess {
    
    func allowEntryWithPassword(_: [Int]) -> Bool
    
}

class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
    
}


extension BankVault : ProvideAccess {

    //Protocol ProvideAccess
    
    func allowEntryWithPassword (_ password: [Int]) -> Bool{
        print("Please enter password :")
        
        if password.count == 0 {
            return false
        } else if password.count > 10 {
            return false
        } else {
            var even : Bool = true
            for numb in password {
                if even {
                    if !([0,2,4,6,8].contains(numb)) {
                        return false
                    }
                }
                even = false
            }
            return true
        }
        ///let password = readLine()!
        
        //var password = [1,2,3,4,5,6,7,8]
        ///print(password)
        
    }

}

/*
 let testVault = BankVault(name: "Garden City Vault", address: "90210 Street")
 
 describe("ProvideAccess Protocol") {
 it("Should provide a function called allowEntryWithPassword(_:) which return back a true or false based upon the correct password.") {
 
 // Empty Array test
 let noDigitsResponse = testVault.allowEntryWithPassword([])
 expect(noDigitsResponse).to(equal(false))
 
*/



