import SwiftUI
import SwiftUICharts

struct GraphiqueEHView: View {
    var consoH: LineChartData = ConsoEH()
    var body: some View {
        VStack{
            
            LineChart(chartData: consoH)
                .pointMarkers(chartData: consoH)
                .frame(width: 343, height: 190)
        }
    }
}
func ConsoEH()  -> LineChartData {
    let prodH = LineDataSet(dataPoints: [
        LineChartDataPoint(value: 500, xAxisLabel: "M", description: "Monday"),
        LineChartDataPoint(value: 300, xAxisLabel: "T", description: "Tuesday"),
        LineChartDataPoint(value: 200,  xAxisLabel: "W", description: "Wednesday"),
        LineChartDataPoint(value: 175, xAxisLabel: "T", description: "Thursday"),
        LineChartDataPoint(value: 160, xAxisLabel: "F", description: "Friday"),
        LineChartDataPoint(value: 110, xAxisLabel: "S", description: "Saturday"),
        LineChartDataPoint(value: 40,  xAxisLabel: "S", description: "Sunday")
    ],
                            legendTitle: "Steps",
                            pointStyle: PointStyle(),
                            style: LineStyle(lineColour: ColourStyle(colour: Color("LightGreen"))))
    return LineChartData(dataSets: prodH)
}

struct GraphiqueEHView_Previews: PreviewProvider {
    static var previews: some View {
        GraphiqueEHView()
    }
}
