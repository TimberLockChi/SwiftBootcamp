//
//  ViewModelBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/2.
//

import SwiftUI

//与View隔离，只在数据模型内部进行删除操作，View部分只进行View的更新
//需要让数据模型可以被监听，需要添加ObservableObject
class FruitViewModel:ObservableObject{
    @Published var fruitArray:[FruitModel]=[]//在class中，用Published代替State
    @Published var isLoading: Bool = false
    
    init(){
        getFruit()//初始化时加载初始，防止返回时重新加载
    }
    
    func deleteFruit(index:IndexSet){
        fruitArray.remove(atOffsets: index)
    }
    
    func getFruit(){
        let fruit1=FruitModel(name: "Orange", count: 1)
        let fruit2=FruitModel(name: "Banana", count: 123)
        let fruit3=FruitModel(name: "Watermelon", count: 88)
         
        isLoading=true
        
        DispatchQueue.main.asyncAfter(deadline: .now()+3){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading.toggle()
        }
        
       
    }
}


struct FruitModel:Identifiable {
    let id : String = UUID().uuidString
    let name:String
    let count :Int
}

struct ViewModelBootcamp: View {
    
    //@State var fruitArray:[FruitModel]=[]
    
    //@ObservedObject是让视图能够监听数据模型的变化
//    @ObservedObject var fruitViewModel:FruitViewModel=FruitViewModel()
    
    //与ObservedObject功能相似
    //区别是ObservedObject在该组件更新或者重新加载（例如动画）后，也会刷新；但是StateObject不会，会保持数据与视图重新加载前一样
    
    // @StateObject -> User this on Creation/Init,即app的主视图用StateObject
    // @ObservedObject -> Use this for subview，主页面生成的子页面用ObservedObject
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List{
                
                if fruitViewModel.isLoading{
                    ProgressView()
                }else{
                    ForEach(fruitViewModel.fruitArray){fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform:fruitViewModel.deleteFruit)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(
                trailing:
                    //页面转跳
                    NavigationLink(destination: {
                        RandomScreen(fruitViewModel: fruitViewModel)//将当前的数据模型传递到此
                    }, label: {
                        Text("Navigation")
                        Image(systemName: "arrow.right")
                            .font(.title)
                    })
                
            )
        }
    }
}

struct RandomScreen: View{
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel:FruitViewModel//子视图使用ObservedObject，可以随着主视图的数据进行变化
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea()
            VStack{
                ForEach(fruitViewModel.fruitArray){fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
//            Button {
//                presentationMode.wrappedValue.dismiss()
//            } label: {
//                Text("Go Back")
//                    .foregroundColor(.white)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//            }

        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
        //RandomScreen()
    }
}
