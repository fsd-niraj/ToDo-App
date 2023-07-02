//
//  AddNewTaskViewModel.swift
//  ToDo-MVVM-CoreData
//
//  Created by Arslan Kaan AYDIN on 29.04.2022.
//

import Foundation

class AddNewTaskViewModel {
    var name: String
    var dueDate: Date
    var isUrgent: Bool
    
    init(name: String, dueDate: Date, isUrgent: Bool) {
        self.name = name
        self.dueDate = dueDate
        self.isUrgent = isUrgent
    }
    
    func saveTask(completion: @escaping (Bool) -> Void) {
        CoreDataManager.shared.saveToDo(name: self.name, dueOn: self.dueDate, completion: completion)
    }
}
