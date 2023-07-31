//
//  ListBootcamp.swift
//  Bootcamp
//
//  Created by Chi Tim on 2023/7/31.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruites:[String]=[
        "apple","orange","banana","peach"
    ]
    @State var veggies:[String]=[
        "tomato","patatp","carrot"
    ]
    
    
    var body: some View {
        NavigationView {
            List{
                Section {
                    ForEach(fruites, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)//简化写法
                    .onMove(perform: move)//简化写法
    //                .onDelete ({ indexSet in
    //                    delete(indexSet: indexSet)
    //                })//滑动删除
                    .listRowBackground(Color.pink)//设置每一行的背景
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundColor(.orange)
                }
                
                Section {
                    ForEach(veggies,id:\.self){veggies in
                        Text(veggies.capitalized)
                            .font(.caption)
                            //.frame(maxWidth:.infinity,maxHeight:.infinity)
                            //.background(Color.pink)
                    }
                } header: {
                    //定制列表头样式
                    HStack {
                        Text("Veggies")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundColor(.orange)
                }

            }
            .accentColor(.purple)//改变列表的颜色
            //.listStyle(GroupedListStyle())//变更列表的样式
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )//编辑按钮
        }
        .accentColor(.red)//改变navigationView标题/按钮的颜色
    }
    var addButton:some View{
        Button("Add"){
           add()
       }
    }
    
    func add(){
        fruites.append("Cocount")
    }
    
    func move(indices:IndexSet,newOffset:Int){
        fruites.move(fromOffsets: indices, toOffset:newOffset)
    }
    
    func delete(indexSet:IndexSet){
        fruites.remove(atOffsets: indexSet)//删除第几个元素，indexSet表示一个结果集，删除对应集合中的所有元素
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
