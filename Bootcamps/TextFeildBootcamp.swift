//
//  TextFeildBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/1.
//

import SwiftUI

struct TextFeildBootcamp: View {
    
    @State var textFieldText:String=""
    @State var dataArray: [String]=[]
    var body: some View {
        NavigationView {
            VStack{
                //onEditingChanged - 监听用户输入时的操作
                //onCommit - 监听用户回车操作
                //formatter - 可以定制输入字样式
                TextField("Type something here", text: $textFieldText)
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button {
                    if textIsAppropriate(){
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background( textIsAppropriate() ? Color.blue : Color.gray)//根据输入合法性调整按键样式
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())//输入合法时激活按钮
                
                ForEach(dataArray,id:\.self){data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField")
        }
    }
    //输入检查
    func textIsAppropriate()->Bool{
        if textFieldText.count>=3{
            return true
        }
        return false
    }
    
    func saveText(){
        dataArray.append(textFieldText)
        textFieldText = ""//清空输入框
    }
}

struct TextFeildBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFeildBootcamp()
    }
}

