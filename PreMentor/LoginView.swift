//
//  LoginView.swift
//  PreMentor
//
//  Created by sueun kim on 2023/04/04.
//

import SwiftUI

struct LoginView: View {
    @State private var username : String = ""
    @State private var password : String = ""
    @State private var info : String = ""
    @State private var number : String = ""
    var body: some View {
        NavigationView {
            ZStack{
                Color("OpenColor").ignoresSafeArea(.all)
                VStack{
                    Text("Login")
                        .font(.system(size:60))
                        .foregroundColor(.white)
                        .fontDesign(.serif)
                        .italic()
                    TextField("Username", text: $username)
                        .padding()
                        .background(Color("lightGreyColor"))
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color("lightGreyColor"))
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                        NavigationLink(destination: ProfileView()){
                            Text("로그인")
                                .font(.system(size:30))
                                .foregroundColor(.yellow)
                                .frame(width: 200,height: 50)
                                .background(.green)
                                .cornerRadius(25)
                                .padding()
                    }
                }
            }
        }
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
