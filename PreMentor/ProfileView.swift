//
//  ProfileView.swift
//  PreMentor
//
//  Created by sueun kim on 2023/04/04.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            HStack{
                    Circle()
                        .frame(width: 100,height:100 )
                        .foregroundColor(.purple)
                VStack{
                    Text("프리멘티")
                        .font(.system(size:25))
                        .foregroundColor(.blue)
                        .bold()
                    Text("이승주")
                        .bold()
                        .font(.system(size:25))
                }
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 20,height: 20)
                    .padding([.leading,.bottom],100)
            }
            Spacer()
            VStack{
                Text("발표 연습하기")
                    .font(.system(size:25))
                    .bold()
                    .padding(.trailing,200)
                HStack{
                    ZStack{
                        Color("DefaultColor")
                            .frame(width: 100,height: 100)
                            .cornerRadius(20)
                        VStack{
                            Image(systemName: "rectangle.and.pencil.and.ellipsis")
                                .resizable()
                                .frame(width: 60,height: 60)
                                .aspectRatio(contentMode: .fill)
                            Text("대본 교정하기")
                                .foregroundColor(.white)
                                .font(.caption)
                                .bold()
                        }
                    }
                    ZStack{
                        Color("DefaultColor")
                            .frame(width: 100,height: 100)
                            .cornerRadius(20)
                        VStack{
                            Image(systemName: "rectangle.and.pencil.and.ellipsis")
                                .resizable()
                                .frame(width: 60,height: 60)
                                .aspectRatio(contentMode: .fill)
                            Text("대본 교정하기")
                                .foregroundColor(.white)
                                .font(.caption)
                                .bold()
                        }
                    }
                    ZStack{
                        Color("DefaultColor")
                            .frame(width: 100,height: 100)
                            .cornerRadius(20)
                        VStack{
                            Image(systemName: "rectangle.and.pencil.and.ellipsis")
                                .resizable()
                                .frame(width: 60,height: 60)
                                .aspectRatio(contentMode: .fill)
                            Text("대본 교정하기")
                                .foregroundColor(.white)
                                .font(.caption)
                                .bold()
                        }
                    }
                }
                Spacer()
            }
        }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
