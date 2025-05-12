//
//  CourseManager.swift
//  GolfApp
//
//  Created by Christopher G. on 5/12/25.
//

// CourseManager.swift

import Foundation

class CourseManager {
    private var courses: [Course] = []
    private var currentCourse: Course?
    
    static let shared = CourseManager()
    
    private init() {
        loadCourses()
    }
        
    func loadCourses() {
        // Load courses from local storage/database
    }
    
    func saveCourse(_ course: Course) -> Bool {
        courses.append(course)
        return saveToStorage()
    }
    
    func getCourses() -> [Course] {
        return courses
    }
    
    func getCourse(byName name: String) -> Course? {
        return courses.first(where: { $0.name == name })
    }
    
    func updateCourse(_ course: Course) -> Bool {
        if let index = courses.firstIndex(where: { $0.id == course.id }) {
            courses[index] = course
            return saveToStorage()
        }
        return false
    }
    
    func deleteCourse(byName name: String) -> Bool {
        if let index = courses.firstIndex(where: { $0.name == name }) {
            courses.remove(at: index)
            return saveToStorage()
        }
        return false
    }
        
    func setCurrentCourse(_ course: Course) {
        currentCourse = course
    }
    
    func getCurrentCourse() -> Course? {
        return currentCourse
    }
    
    
    private func saveToStorage() -> Bool {
        // Save courses to persistent storage
        // Return success/failure
        return true
    }
    
    func searchCourses(byName name: String) -> [Course] {
        return courses.filter { $0.name.lowercased().contains(name.lowercased()) }
    }
    
    func getNearestCourses(latitude: Double, longitude: Double) -> [Course] {
        // Logic to find courses near the user's location
        // Would need to calculate distance to each course
        return []
    }
}
