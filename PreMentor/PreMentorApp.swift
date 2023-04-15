//
//  PreMentorApp.swift
//  PreMentor
//
//  Created by sueun kim on 2023/04/04.
//

import SwiftUI
import Firebase

@main
struct PreMentor :App{
    init() {
            FirebaseApp.configure() // 코드 추가
        }
    var body: some Scene {
        WindowGroup {
            ProfileView()
        }
    }
}
