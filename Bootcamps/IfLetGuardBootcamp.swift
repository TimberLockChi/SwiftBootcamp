//
//  IfLetGuardBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/2.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID:String? = "12344"
    @State var displayText :String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Here we are")
                if let text = displayText{
                    //optional变量，在确定赋值以后再加载组件
                    Text(text)
                        .font(.title)
                }
                
                if isLoading{
                    ProgressView()//加载视图，如果子啊加载就显示
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear(){
                lodaData()//控件一旦出现在画布上就开始加载数据
            }
        }
    }
    //mehtod-if let
    func lodaData(){
        if let userID = currentUserID{
            isLoading=true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is :\(userID)"
                isLoading = false
            }
        }else{
            displayText = "Error. There is no user ID!"
        }
    }
    //method-guard
    func lodaData2(){
        //如果条件不通过，执行guard中的操作
        guard let userID = currentUserID else{
            displayText = "Error. There is no user ID!"
            return
        }
        //通过则执行下述操作
        isLoading=true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is :\(userID)"
            isLoading = false
        }
        
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
