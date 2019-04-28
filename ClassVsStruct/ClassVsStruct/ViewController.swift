//
//  ViewController.swift
//  ClassVsStruct
//
//  Created by Sagar More on 28/04/19.
//  Copyright © 2019 Sagar More. All rights reserved.
//

import UIKit

class ViewController: UIViewController, OperationTimeProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        runTests()
    }
    
    private func runTests() {
        measureOperation(title: "Class with 1 field") {
            var x = IntClass(0)
            for _ in 1...10000000 {
                x = x + IntClass(1)
            }
        }
        
        measureOperation(title: "struct with 1 field") {
            var x = IntStruct(val: 0)
            for _ in 1...10000000 {
                x = x + IntStruct(val: 1)
            }
        }
        
        measureOperation(title: "class with 10 fields") {
            var x = Int10Class(0)
            for _ in 1...10000000 {
                x = x + Int10Class(1)
            }
        }
        
        measureOperation(title: "struct with 10 fields") {
            var x = Int10Struct(0)
            for _ in 1...10000000 {
                x = x + Int10Struct(1)
            }
        }
    }


}

protocol OperationTimeProtocol {}

extension OperationTimeProtocol {
    ///method calculates the time required to perform complete operation
    func measureOperation(title: String, call: () -> Void) {
        let startTime = CACurrentMediaTime()
        call()
        let endTime = CACurrentMediaTime()
        let finalTime = (endTime - startTime)
        print("\(title): Time -: \(finalTime)")
    }
}

