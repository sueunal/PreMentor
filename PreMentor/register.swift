//
//  register.swift
//  PreMentor
//
//  Created by sueun kim on 2023/04/09.
//

import Foundation
import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    init() {
        
    }
    
    func registerUser(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Error : \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            
            print(user.uid)
        }
    }
}
struct register: View {
    
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

struct register_Previews: PreviewProvider {
    static var previews: some View {
        register()
    }
}
