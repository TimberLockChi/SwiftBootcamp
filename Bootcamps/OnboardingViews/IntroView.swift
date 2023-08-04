//
//  IntroView.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/3.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack{
            //background
            RadialGradient(
                gradient: Gradient(colors:[Color.red,Color.green]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height
            ).ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
                    .animation(.spring())
            }else{
                OnboardingView().transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
            
            // if user is signed in profile view
            //else
            //on boarding view
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
