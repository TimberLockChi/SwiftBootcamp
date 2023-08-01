//
//  ActionSheetBoocamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/1.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    @State var showActionSheet:Bool=false
    @State var actionSheetOption:ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions{
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack{
                Circle()
                    .frame(width:30,height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }.accentColor(.primary)
                
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)//宽高比
        }.actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
        
        
        
//        Button("Click me"){
//            showActionSheet.toggle()
//        }.actionSheet(isPresented: $showActionSheet) {
//           getActionSheet()
//        }
    }
    
    func getActionSheet()->ActionSheet{
        let shareButton :ActionSheet.Button = .default(Text("Share")){
            
        }//默认蓝色字体
        let reportButton :ActionSheet.Button = .destructive(Text("Report")){
            
        }//红色字体
        let deleteButton:ActionSheet.Button = .destructive(Text("Delete")){
            
        }
        let cancleButton:ActionSheet.Button = .cancel()
        
        
        let title=Text("What would you like to do?")
        
        switch actionSheetOption{
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton,reportButton,cancleButton]
            )
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton,reportButton,deleteButton,cancleButton]
            )
        }
        //return ActionSheet(title:Text("This is a title!"))
//        return ActionSheet(
//            title: Text("This is the title"),
//            message: Text("This is the message"),
//            buttons: [button1,button2,button3]//可以配置任意多个按钮
        
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
