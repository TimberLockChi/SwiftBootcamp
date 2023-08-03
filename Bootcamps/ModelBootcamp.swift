//
//  ModelBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/2.
//

import SwiftUI

//遍历列表时，自定制model需要设置有独立的身份标识
struct UserModel:Identifiable{
    let id:String = UUID().uuidString//随机生成身份标识
    let displayName:String
    let userName:String
    let followerCount:Int
    let ifVerified:Bool
}

struct ModelBootcamp: View {
    
    @State var users:[UserModel]=[
        //"Nick","Emily","Samanatha","Chris"
        UserModel(displayName: "Nick", userName: "Nick123", followerCount: 100, ifVerified: true),
        UserModel(displayName: "Emily", userName: "Emily1998", followerCount: 55, ifVerified: false),
        UserModel(displayName: "Samanatha", userName: "ninja", followerCount: 355, ifVerified: true),
        UserModel(displayName: "Chris", userName: "Chris2009", followerCount: 88, ifVerified: false)
    ]
    
    var body: some View {
        NavigationView {
            List{
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35,height: 35,alignment: .center)
                        VStack(alignment: .leading) {//对齐方式再上一级框架设置
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.ifVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Folloers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
