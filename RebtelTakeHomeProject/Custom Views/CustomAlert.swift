//
//  CustomAlert.swift
//  RebtelTakeHomeProject
//
//  Created by Sebastian Mendez on 2021-09-12.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    var title: Text
    var message: Text
    var dismissButton: Alert.Button
}

struct AlertContext {
    //MARK: - Network alerts
    static let invalidData = AlertItem(title: Text("Server Error"),
                                              message: Text("The data recieved from the error was invalid."),
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                              message: Text("Invalid response from error."),
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                              message: Text("There was an error connecting to the server."),
                                              dismissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                              dismissButton: .default(Text("Ok")))
    
    //MARK: - Account alerts
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                              message: Text("Please ensure all fields in the form are filled out."),
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                              message: Text("Please ensure your email is correct."),
                                              dismissButton: .default(Text("Ok")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                              message: Text("Your profile information was successfully saved."),
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                              message: Text("There was an error saving or retrieving your profile."),
                                              dismissButton: .default(Text("Ok")))
}
