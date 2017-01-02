//
//  MyClass1.swift
//  StrongReferenceCycleProject
//
//  Created by Jon Hoffman on 12/22/14.
//  Copyright (c) 2014 Jon Hoffman. All rights reserved.
//


class MyClass1 {
    var name = ""
    var class2: MyClass2?
    init(name: String) {
        self.name = name
        print("Initializing class1 with name \(self.name)")
    }
    deinit {
        print("Releasing class1 with name \(self.name)")
    }
   
}
