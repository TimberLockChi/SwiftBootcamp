//
//  AppStorageBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/3.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    //@State var currentUserName:String?
    //可以被所有的子视图访问
    @AppStorage("name") var currentUserName:String?//可以通过对此变量进行变更，例如存储和访问
    
    
    var body: some View {
        
        VStack(spacing:20){
            Text(currentUserName ?? "Add Name here")
            //currentUserName！表示虽然currentUserName为optional变量，但是仍然认为其值不为空
            //？？表示原值不存在，则附一个新值
            Button("Save".uppercased()){
                let name:String = "Emily"
                currentUserName = name
//                UserDefaults.standard.set(name,forKey: "name")//本地缓存，通过key为表示存储数据
            }
        }
//        .onAppear{
//            currentUserName = UserDefaults.standard.string(forKey: "name") ?? "There is no name"
//        }
        
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
