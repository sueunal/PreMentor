//
//  Sample-Login.swift
//  PreMentor
//
//  Created by sueun kim on 2023/04/11.
//

import SwiftUI

struct Sample_Login: View {
    @State private var username = ""
    @State private var password = ""

    @State private var valid = false
    @State private var showingInvalidAlert = false

    var body: some View {
        NavigationView {
            VStack {
                TextField("username", text: $username)
                    .frame(width: 300, height: 50)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("password", text: $password)
                    .frame(width: 300, height: 50)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button {
                    valid = login(username: username, password: password)
                    if valid == false {
                        showingInvalidAlert.toggle()
                    }
                } label: {
                    HStack {
                            Text("Login")
                            Image(systemName: "chevron.right")
                        }
                }
                .frame(width: 300, height: 20)
                .padding(.vertical ,10)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2.0)
                    )
                NavigationLink(destination: Text("Success!"),isActive: $valid) { //<- This will take it to rest
                    AuthView()
                }
            }
            .navigationBarHidden(true)
            .alert(isPresented: $showingInvalidAlert) {
                Alert(title: Text("Invalid"), message: Text("Invalid username or password"), dismissButton: .default(Text("Ok")))
            }
        }
    }

    func login(username: String, password: String) -> Bool {
        // In here your check to see if username/password are valid
        if username == "D", password == "P" {
            return true
        }

        return false
    }
}
struct Sample_Login_Previews: PreviewProvider {
    static var previews: some View {
        Sample_Login()
    }
}
