//
//  AppearBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/2.
//

import SwiftUI

struct AppearBootcamp: View {
    @State var myText:String = "Start text"
    @State var count:Int = 0
    var body: some View {
        NavigationView{
            ScrollView{
                Text(myText)
                LazyVStack{
                    ForEach(0..<50){_ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                //出现在屏幕上时在进行加载或者计数，可以实现缓加载
                                count += 1
                            }
                    }
                }
            }
            //可能会出现Text空间还没有加载的情况
            .onAppear(perform: {
                //延时队列，可以实现延时效果
                DispatchQueue.main.asyncAfter(deadline: .now()+5){
                    myText = "This is the new text!"//当该控件显示时，进行某些操作，此处是更改文字
                }
            })
            //可以用在离开此视图时进行清除的操作
            .onDisappear(perform: {
                myText = "Ending text"
            })
            .navigationTitle("On Appear :\(count)")
        }
    }
}

struct AppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppearBootcamp()
    }
}
