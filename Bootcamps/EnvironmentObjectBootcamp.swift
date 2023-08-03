//
//  EnvironmentObjectBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/2.
//

import SwiftUI

class EnvironmentViewModel:ObservableObject{
    
    @Published var dataArray:[String]=[]
    
    init(){
        getData()
    }
    
    func getData(){
        self.dataArray.append(contentsOf: ["iphone","iPad","iMac","Apple watch"])
    }
    
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("IOS Devices")
        }
        .environmentObject(viewModel)//可以让所有子视图公用这个数据
    }
}

struct DetailView:View{
    
    let selectedItem:String
    //@ObservedObject var viewModel:EnvironmentViewModel//用户子视图之间进行值专递
    
    var body: some View{
        ZStack{
            //background
            Color.orange.ignoresSafeArea()
            
            //foreground
            
            NavigationLink(destination: FinalView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
        }
    }
}

struct FinalView: View{
    
    @EnvironmentObject var viewModel: EnvironmentViewModel//必须保证存在该同名环境变量
    
    var body: some View{
        ZStack{
            //background
            LinearGradient(
                colors: [Color.red,Color.green],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).ignoresSafeArea()
            ScrollView{
                VStack(spacing: 20){
                    ForEach(viewModel.dataArray,id:\.self){ item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
        //DetailView(selectedItem: "iPhone")
        //FinalView()
    }
}
