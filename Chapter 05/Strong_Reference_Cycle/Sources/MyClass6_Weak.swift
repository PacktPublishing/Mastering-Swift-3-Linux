//
//  MyClass6_Weak.swift
//  StrongReferenceCycleProject
//
//  Created by Jon Hoffman on 12/22/14.
//  Copyright (c) 2014 Jon Hoffman. All rights reserved.
//


class MyClass6 {
    var name = ""
    weak var class5: MyClass5?
    init(name: String) {
        self.name = name
        print("Initializing class6 with name \(self.name)")
    }
    deinit {
        print("Releasing class6 with name \(self.name)")
    }
}
