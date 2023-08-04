//
//  DatePickerBootcamp.swift
//  Bootcamps
//
//  Created by Chi Tim on 2023/8/1.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectDate: Date=Date()//选择的日期
    let startingDate:Date=Calendar.current.date(from: DateComponents(year: 2023)) ?? Date()
    let endingDate: Date=Date()
    //格式化日期
    var dateFormatter:DateFormatter{
        let formatter=DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack{
            Text("Selected data is:")
            Text(dateFormatter.string(from: selectDate))
                .font(.title)
            //DatePicker("Select a Date",selection: $selectDate)
    //        DatePicker("Select a Date", selection: $selectDate, displayedComponents: [.date,.hourAndMinute])
            DatePicker("Select a Date",
                       selection: $selectDate,
                       in:startingDate...endingDate,//设置可选择的范围，不设置则全部日期可以选包括未来
                       displayedComponents: [.date,.hourAndMinute]
            )
                .accentColor(Color.red)
                .datePickerStyle(
                    //设置日期选择的样式
                    CompactDatePickerStyle()
                    //GraphicalDatePickerStyle()
                    //WheelDatePickerStyle()
                )
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
