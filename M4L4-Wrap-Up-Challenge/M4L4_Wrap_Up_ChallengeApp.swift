//
//  M4L4_Wrap_Up_ChallengeApp.swift
//  M4L4-Wrap-Up-Challenge
//
//  Created by Marc Moxey on 3/11/23.
//

import SwiftUI

@main
struct M4L4_Wrap_Up_ChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            LibraryScrollView()
                .environmentObject(BookModel())
        }
    }
}
