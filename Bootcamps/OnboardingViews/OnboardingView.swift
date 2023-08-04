//
//  OnboardingView.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/3.
//

import SwiftUI

struct OnboardingView: View {
    //Onboarding states:
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    @State var onboardingState: Int = 0
    let transition:AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    @State var name: String = ""
    
    @State var age: Double = 50
    
    @State var gender: String = ""
    
    @State var alertTitle: String = ""
    
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName:String?
    @AppStorage("age") var currentUserAge:Int?
    @AppStorage("gender") var currentUserGender:String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    
    var body: some View {
        ZStack{
            // content
            ZStack{
                switch onboardingState{
                case 0:
                    welcomeSection.transition(transition)
                case 1:
                    addNameSection.transition(transition)
                case 2:
                    addAgeSection.transition(transition)
                case 3:
                    addGenderSection.transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
            }
            //buttons
            VStack{
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert){
            return Alert(title: Text(alertTitle))
        }
    }
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(.purple)
    }
}

//MARK: COMPONENTS
extension OnboardingView {
    private var bottomButton: some View{
        //此处用Text，如果用Button，需要点击字才能触发动作
        Text(onboardingState == 0 ? "Sign Up" : onboardingState == 3 ? "Finish" : "Next")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height:55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .animation(nil)//取消文字渐变
            .onTapGesture {
                handleNextButtonPressed()
            }
            
    }
    
    private var welcomeSection: some View{
        VStack(spacing:40){
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200)
                .foregroundColor(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    //添加蒙版
                    Capsule(style: .continuous)//下划线
                        .frame(height: 3)
                        .offset(y:5)//下移一段距离
                        .foregroundColor(.white)
                    ,
                    alignment: .bottom
                )
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)//多行文字居中对齐
        .padding(30)
    }
    

    private var addNameSection:some View{
        VStack(spacing:20){
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here...",text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    private var addAgeSection:some View{
        VStack(spacing:20){
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", age))")//格式化写法，去除所有小数位
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100,step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    private var addGenderSection: some View{
        VStack(spacing:20){
            Spacer()
            Text("What's your gener?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            //Picker无法支持label，通过嵌套Menu实现
            Menu{
                Picker("Gender",selection: $gender){
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                }
            }label:{
                Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
            }
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

//MARK: FUNCTIONS
extension OnboardingView{
    
    func handleNextButtonPressed(){
        
        //check inputs
        switch onboardingState{
        case 1:
            guard name.count >= 3 else{
                showAlert(title: "You name must be at least 3 characters long!")
                return
            }
        case 3:
            guard gender.count > 1 else{
                showAlert(title: "Please select a gender before moving forward!")
                return
            }
        default:
            break
        }
        
        //go to next section
        if onboardingState == 3{
            //sign in
            signIn()
        }else{
            withAnimation(.spring()){
                onboardingState += 1
            }
        }
    }
    
    func signIn(){
        currentUserName =  name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()){
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title:String){
        alertTitle = title
        showAlert.toggle()
    }
}
