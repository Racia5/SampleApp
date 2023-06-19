//
//  GraphDateTitleFormatter.swift
//  MyDietDiaryApp
//
//  Created by 増田剛大 on 2023/06/05.
//

import Foundation
import Charts

class GraphDateTitleFormatter: AxisValueFormatter {
    var dateList: [Date] = []
    
    func stringForValue(_ value: Double, axis: Charts.AxisBase?) -> String {
        let index = Int(value)
        guard dateList.count > index else { return "" }
        let targetDate = dateList[index]
        let formatter = DateFormatter()
        let dateFormatString = "M/d"
        formatter.dateFormat = dateFormatString
        return formatter.string(from: targetDate)
    }
}
