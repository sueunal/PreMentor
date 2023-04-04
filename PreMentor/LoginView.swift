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
    var body: some View {
        ZStack{
            Color("OpenColor").ignoresSafeArea(.all)
            VStack{
                Text("Login")
                    .font(.system(size:60))
                    .foregroundColor(.white)
                    .fontDesign(.serif)
                    .italic()
                Text("PreMentor")
                    .font(.system(size:40))
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
                Button{
                    
                }label:{
                    Text("로그인")
                    .font(.system(size:30))
                    .foregroundColor(.yellow)
                    .frame(width: 150,height: 50)
                    .background(.green)
                    .cornerRadius(15)
                    .padding()
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
