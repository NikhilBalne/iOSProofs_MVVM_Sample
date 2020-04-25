//
//  StudentViewModel.swift
//  iOSProofs_MVVM_Sample
//
//  Created by Nikhil Balne on 25/04/20.
//  Copyright © 2020 Nikhil Balne. All rights reserved.
//

import Foundation

class StudentViewModel {
    
    var student : [Student] = []
    
    func addStudentData(name:String, address:String) {
        let newStudent = Student.init(aName: name, aAddress: address)
        student.append(newStudent)
    }
    
}
