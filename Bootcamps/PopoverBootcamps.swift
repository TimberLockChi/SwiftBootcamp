//
//  PopoverBootcamps.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/31.
//

import SwiftUI

struct PopoverBootcamps: View {
    @State var showNewScreen : Bool=false
    var body: some View {
        ZStack{
            Color.orange.edgesIgnoringSafeArea(.all)
            VStack{
                Button("Button"){
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
//            //METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            //METHOD 2 - TRANSITION
//            ZStack{
//                //嵌套入一个ZStack中，可以始终保持在背景上方，可以实现渐入渐出
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .cornerRadius(20)
//                        .padding(.top,50)
//                        .transition(.asymmetric(
//                            insertion: .move(edge: .bottom),
//                            removal: .move(edge: .bottom))
//                        )
//                        .animation(.easeInOut)
//                        .edgesIgnoringSafeArea(.bottom)
//                }
//            }
//            .zIndex(2.0)//可以始终保持该部分会在背景之前弹出
            
            //METHOD 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top,100)
                .offset(y:showNewScreen ? 0:UIScreen.main.bounds.height )
                .animation(.spring())//进行位移
        }
    }
}

struct NewScreen :View{
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen : Bool
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.purple.edgesIgnoringSafeArea(.all)
            Button {
                //METHOD 1 - SHEET
                //presentationMode.wrappedValue.dismiss()
                
                //METHOD 2 - TRANSITION & ANIMATION OFFSET
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

struct PopoverBootcamps_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamps()
    }
}
