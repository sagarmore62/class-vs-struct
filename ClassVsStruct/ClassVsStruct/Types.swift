//
//  Types.swift
//  ClassVsStruct
//
//  Created by Sagar More on 28/04/19.
//  Copyright © 2019 Sagar More. All rights reserved.
//

import Foundation

//class with 1 variable
class IntClass {
    let val: Int
    init(_ val: Int) { self.val = val }
}

//struct with 1 variable
struct IntStruct {
    let val: Int
}

func + (x: IntClass, y: IntClass) -> IntClass {
    return IntClass(x.val + y.val)
}

func + (x: IntStruct, y: IntStruct) -> IntStruct {
    return IntStruct(val: x.val + y.val)
}

//class with 10 variable
class Int10Class {
    let val1, val2, val3, val4, val5, val6, val7, val8, val9, val10: Int
    
    init(_ val: Int) {
        self.val1 = val
        self.val2 = val
        self.val3 = val
        self.val4 = val
        self.val5 = val
        self.val6 = val
        self.val7 = val
        self.val8 = val
        self.val9 = val
        self.val10 = val
    }
}

//struct with 10 variable
struct Int10Struct {
    let val1, val2, val3, val4, val5, val6, val7, val8, val9, val10: Int
    
    init(_ val: Int) {
        self.val1 = val
        self.val2 = val
        self.val3 = val
        self.val4 = val
        self.val5 = val
        self.val6 = val
        self.val7 = val
        self.val8 = val
        self.val9 = val
        self.val10 = val
    }
}

func + (x: Int10Struct, y: Int10Struct) -> Int10Struct {
    return Int10Struct(x.val1 + y.val1)
}

func + (x: Int10Class, y: Int10Class) -> Int10Class {
    return Int10Class(x.val1 + y.val1)
}
