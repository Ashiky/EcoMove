//
//  GraphiquePMView.swift
//  EcoMove
//
//  Created by Apprenant12 on 22/06/2022.
//

import SwiftUI
import SwiftUICharts
struct GraphiquePMView: View {
    var consoPM: LineChartData = ConsoPM()
    var body: some View {
        VStack{
            
            LineChart(chartData: consoPM)
                .pointMarkers(chartData: consoPM)
                .frame(width: 343, height: 190)
        }
    }
}
func ConsoPM()  -> LineChartData {
    let prodH = LineDataSet(dataPoints: [
        LineChartDataPoint(value: 175, xAxisLabel: "M", description: "Monday"),
        LineChartDataPoint(value: 200, xAxisLabel: "T", description: "Tuesday"),
        LineChartDataPoint(value: 300,  xAxisLabel: "W", description: "Wednesday"),
        LineChartDataPoint(value: 500, xAxisLabel: "T", description: "Thursday"),
    ],
                             legendTitle: "Steps",
                                     pointStyle: PointStyle(),
                            style: LineStyle(lineColour: ColourStyle(colour: Color("Rouge"))))
    return LineChartData(dataSets: prodH)
}
struct GraphiquePMView_Previews: PreviewProvider {
    static var previews: some View {
        GraphiquePMView()
    }
}
