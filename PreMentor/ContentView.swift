//
//  ContentView.swift
//  PreMentor
//
//  Created by sueun kim on 2023/04/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
        ZStack{
            Color("OpenColor").ignoresSafeArea(.all)
            VStack{
                Image("Teacher")
                    .resizable()
                    .frame(width: 150,height: 150)
                Text("PreMentor")
                    .font(.system(size:60))
                    .foregroundColor(.white)
                    .fontDesign(.serif)
                    .italic()
                
                    NavigationLink(destination: LoginView()){
                        Text("Start")
                            .frame(width: 150,height: 50)
                            .background(.gray)
                            .font(.system(size:30))
                            .foregroundColor(.green)
                            .cornerRadius(15)
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
