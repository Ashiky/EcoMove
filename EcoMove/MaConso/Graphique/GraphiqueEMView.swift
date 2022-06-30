//
//  GraphiqueEMView.swift
//  EcoMove
//
//  Created by Apprenant12 on 22/06/2022.
//

import SwiftUI
import SwiftUICharts

struct GraphiqueEMView: View {
    var consoEM: LineChartData = ConsoEM()
    var body: some View {
        VStack{
            
            LineChart(chartData: consoEM)
                .pointMarkers(chartData: consoEM)
                .frame(width: 343, height: 190)
        }
    }
}
func ConsoEM()  -> LineChartData {
    let prodH = LineDataSet(dataPoints: [
//        LineChartDataPoint(value: 500, xAxisLabel: "M", description: "Monday"),
//        LineChartDataPoint(value: 300, xAxisLabel: "T", description: "Tuesday"),
//        LineChartDataPoint(value: 200,  xAxisLabel: "W", description: "Wednesday"),
//        LineChartDataPoint(value: 175, xAxisLabel: "T", description: "Thursday"),
        LineChartDataPoint(value: 175, xAxisLabel: "M", description: "Monday"),
        LineChartDataPoint(value: 200, xAxisLabel: "T", description: "Tuesday"),
        LineChartDataPoint(value: 300,  xAxisLabel: "W", description: "Wednesday"),
        LineChartDataPoint(value: 500, xAxisLabel: "T", description: "Thursday"),
    ],
                            legendTitle: "Steps",
                            pointStyle: PointStyle(),
                            style: LineStyle(lineColour: ColourStyle(colour: Color("LightGreen"))))
    return LineChartData(dataSets: prodH)
}

struct GraphiqueEMView_Previews: PreviewProvider {
    static var previews: some View {
        GraphiqueEMView()
    }
}
