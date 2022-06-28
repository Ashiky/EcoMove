//
//  GraphiqueView.swift
//  EcoMove
//
//  Created by Apprenant12 on 22/06/2022.
//

import SwiftUI
import SwiftUICharts

struct GraphiquePHView: View {
    var consoH: LineChartData = ConsoH()
    var body: some View {
        VStack{
            
            LineChart(chartData: consoH)
                .pointMarkers(chartData: consoH)
                .foregroundColor(.gray)
                .frame(width: 343, height: 190)
        }
    }
}
func ConsoH()  -> LineChartData {
    let prodH = LineDataSet(dataPoints: [
        LineChartDataPoint(value: 500, xAxisLabel: "M", description: "Monday"),
        LineChartDataPoint(value: 410, xAxisLabel: "T", description: "Tuesday"),
        LineChartDataPoint(value: 360,  xAxisLabel: "W", description: "Wednesday"),
        LineChartDataPoint(value: 275, xAxisLabel: "T", description: "Thursday"),
        LineChartDataPoint(value: 100, xAxisLabel: "F", description: "Friday"),
        LineChartDataPoint(value: 20, xAxisLabel: "S", description: "Saturday"),
        LineChartDataPoint(value: 3,  xAxisLabel: "S", description: "Sunday")
    ],
                             legendTitle: "Steps",
                                     pointStyle: PointStyle(),
                                     style: LineStyle(lineColour: ColourStyle(colour: Color("Rouge"))))
    return LineChartData(dataSets: prodH)
}
                             
    
    struct GraphiqueView_Previews: PreviewProvider {
        static var previews: some View {
            GraphiquePHView()
        }
    }
