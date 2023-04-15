////
////  ContentView.swift
////  PreMentor
////
////  Created by sueun kim on 2023/04/04.
////
//
import SwiftUI
import Firebase

struct ContentView: View {
    @State var email = ""
    @State var password = ""
    @State var comment : String = "Input ID and Passwd"
    @State var result = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("OpenColor").ignoresSafeArea(.all)
                VStack{
                    
                    Text("Login")
                        .font(.system(size:60))
                        .foregroundColor(.white)
                        .fontDesign(.serif)
                        .italic()
                    Text(comment)
                        .font(.system(size:30))
                        .foregroundColor(.white)
                        .fontDesign(.serif)
                        .italic()
                        TextField("Username", text: $email)
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
                            result = login()
                        }label:{
                            Text("login")
                            .font(.system(size:30))
                            .foregroundColor(.yellow)
                            .frame(width: 200,height: 50)
                            .background(.green)
                            .cornerRadius(25)
                            .padding()
                    }
//                    Button(action: { login() }) {
//                        Text("Sign in")
//                            .font(.system(size:30))
//                            .foregroundColor(.yellow)
//                            .frame(width: 200,height: 50)
//                            .background(.green)
//                            .cornerRadius(25)
//                            .padding()
////                    }
                }
            }
        }
    }
    func login()->Bool{
       var LoginAuth : Bool = false
       Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                LoginAuth = false
                comment = "Wrong!"
                print(error?.localizedDescription ?? "")
            } else {
                comment = "Success!"
                LoginAuth = true
            }
        }
        return LoginAuth
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
