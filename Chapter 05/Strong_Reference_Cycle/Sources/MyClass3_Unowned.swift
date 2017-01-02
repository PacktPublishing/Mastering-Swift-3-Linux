//
//  MyClass3.swift
//  StrongReferenceCycleProject
//
//  Created by Jon Hoffman on 12/22/14.
//  Copyright (c) 2014 Jon Hoffman. All rights reserved.
//


class MyClass3 {
    var name = ""
    unowned let class4: MyClass4
    init(name: String, class4: MyClass4) {
        self.name = name
        self.class4 = class4
        print("Initializing class3 with name \(self.name)")
    }
    deinit {
        print("Releasing class3 with name \(self.name)")
    }
    
}
