//
//  MyClass5_Weak.swift
//  StrongReferenceCycleProject
//
//  Created by Jon Hoffman on 12/22/14.
//  Copyright (c) 2014 Jon Hoffman. All rights reserved.
//


class MyClass5 {
    var name = ""
    var class6: MyClass6?
    init(name: String) {
        self.name = name
        print("Initializing class5 with name \(self.name)")
    }
    deinit {
        print("Releasing class5 with name \(self.name)")
    }
}
