//
//  ProfileView.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/3.
//

import SwiftUI

struct ProfileView: View {
    
    // app storage
    @AppStorage("name") var currentUserName:String?
    @AppStorage("age") var currentUserAge:Int?
    @AppStorage("gender") var currentUserGender:String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing:20){
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150,height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 0) years old")
            Text("Their gender is \(currentUserGender ?? "unknown")")
            Text("Sign out")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical,40)
        .background(Color.white)
        .shadow(radius: 10)
        .cornerRadius(10)
    }
    
    func signOut(){
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()){
            currentUserSignedIn = false
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
