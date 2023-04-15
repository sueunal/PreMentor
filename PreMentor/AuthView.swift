//
//  AuthView.swift
//  PreMentor
//
//  Created by sueun kim on 2023/04/09.
//
import SwiftUI

struct AuthView: View {
    
    @State var email = ""
    @State var pw = ""
    @ObservedObject var viewModel = AuthViewModel()
    
    var body: some View {
        
        VStack {
            TextField("Email", text: $email)
            SecureField("PW", text: $pw)
            Button {
                viewModel.registerUser(email: email, password: pw)
            } label: {
                Text("등록")
            }
        }
        .padding()
    }
}
