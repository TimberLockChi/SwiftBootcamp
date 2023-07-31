//
//  AlertBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/7/31.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert:Bool=false
    @State var alertType:MyAlerts?=nil
    @State var backgroundColor:Color=Color.yellow
//    @State var alertTitle:String=""
//    @State var alertMessage:String=""
    //元组的形式实现
    enum MyAlerts{
        case success
        case error
    }
    var body: some View {
        ZStack {
            
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1"){
                    alertType = .error
//                    alertTitle = "Error Uploading Video"
//                    alertMessage = "The Video could not be uploaded"
                    showAlert.toggle()
                }
                Button("Button 2"){
                    alertType = .success
//                    alertTitle = "Successfully upload Video 😁"
//                    alertMessage = "Your video is now public"
                    showAlert.toggle()
                }
            }.alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"))
        case .success:
            return Alert(
                title: Text("This was a success!"),
                message:nil,
                dismissButton: .default(Text("OK")){
                    backgroundColor = .green
                }
            )
        default:
            return Alert(title: Text("Error!"))
        }
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK"))//关闭alert
//        )
//        return Alert(
//            title: Text("There is an error"),
//            message:Text("describe"),
//            primaryButton: .destructive(Text("Delete")){
//                //可以定制按钮点击后的行为
//                backgroundColor = .red
//            },//首要按钮，.destructive按钮字体为红色可以定义样式
//            secondaryButton: .cancel())
       // Alert(title:Text("There was an error!"))
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
