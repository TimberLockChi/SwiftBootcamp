//
//  DocumentationBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/2.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    //MARK: PROPERTIES
    
    @State var data : [String]=[
        "Apples","Oranges","Bananas"
    ]
    @State var showAlert:Bool=false
    
    //MARK: BODY
    
    /*
     Working copy - things to do :
        1) Fix title
        2) Fix alert
     */
    //OPTION+COMMAD+LEFT ARROW可以折叠代码块
    var body: some View {
        NavigationView{ //START: NAV
            ZStack {
                //background
                Color.red.ignoresSafeArea()
                //foreground
                forgroundLayer
                .navigationTitle("Documentation Bootcamp")
                .navigationBarItems(trailing: Button("Alert"){
                    showAlert.toggle()
                })
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the alert!")
                }
            }
        }//END: NAV
    }
    //三个斜线可以写方法的简介，通过按住option查看
    /// This is the forground layer that hold a scollerView
    private var forgroundLayer :some View{
        ScrollView{//START: SCROLLV
            Text("Hello")
            ForEach(data,id:\.self){name in
                Text(name)
                    .font(.headline)
            }
        }//END: SCROLLV
    }
    
    //MARK: FUNCTIONS
    
    /// Gets an alert with a specified title
    /// - Parameter text: This is the title for alert
    /// - Returns: Returns an alert with a title
    func getAlert(text:String)->Alert{
        return Alert(title: Text(text))
    }
}

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
