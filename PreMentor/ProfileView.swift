//
//  ProfileView.swift
//  PreMentor
//
//  Created by sueun kim on 2023/04/04.
//

import SwiftUI

struct ProfileView: View {
    @State private var SearchValue : String = ""
    @State private var username : String = "김수은"
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Image("Teacher")
                        .resizable()
                        .frame(width: 100,height:100)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(50)
                    VStack{
                        Text("프리멘티")
                            .font(.system(size:25))
                            .foregroundColor(.blue)
                            .bold()
                        Text(username)
                            .bold()
                            .font(.system(size:25))
                    }
                    Image(systemName: "bell.fill")
                        .resizable()
                        .frame(width: 20,height: 20)
                        .padding([.leading,.bottom],100)
                }
                Spacer()
                VStack{
                    TextField(
                        "발표 예시 검색하기",
                        text: $SearchValue
                    ).background(Color("lightGreyColor"))
                        .padding(20)
                        .font(.system(size:25))
                        .bold()
                        .cornerRadius(10)
                        .padding()
                    HStack{
                        ZStack{
                            Color("DefaultColor")
                                .frame(width: 100,height: 100)
                                .cornerRadius(20)
                            VStack{
                                Image(systemName: "doc.text")
                                    .resizable()
                                    .frame(width: 50,height: 60)
                                    .aspectRatio(contentMode: .fit)
                                Text("대본 교정하기")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                    .bold()
                            }
                        }.padding()
                        ZStack{
                            Color("DefaultColor")
                                .frame(width: 100,height: 100)
                                .cornerRadius(20)
                            VStack{
                                Image(systemName: "video.bubble.left")
                                    .resizable()
                                    .frame(width: 60,height: 60)
                                    .aspectRatio(contentMode: .fill)
                                Text("대본 교정하기")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                    .bold()
                            }
                        }
                        .padding()
                    }
                    Spacer()
                }
            }
        }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
