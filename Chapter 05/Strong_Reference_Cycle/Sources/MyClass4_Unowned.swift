//
//  MyClass4.swift
//  StrongReferenceCycleProject
//
//  Created by Jon Hoffman on 12/22/14.
//  Copyright (c) 2014 Jon Hoffman. All rights reserved.
//


class MyClass4{
    var name = ""
    var class3: MyClass3?
    init(name: String) {
        self.name = name
        print("Initializing class4 with name \(self.name)")
    }
    deinit {
        print("Releasing class4 with name \(self.name)")
    }
}
