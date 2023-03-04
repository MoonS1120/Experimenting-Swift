import SwiftUI

struct Resistance: View {
    @State var RV = 0.00
    @State var RI = 0.00
    var body: some View {
        VStack{
            Text("Resistance (R=V/I)")
                .font(.system(size:20))
                .padding()
            VStack{
                VStack{
                    TextField("Voltage", value: $RV, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .border(.green, width: 2)
                        .keyboardType(.decimalPad)
                        .font(.system(size: 13))
                        .padding(4)
                    TextField("Current", value: $RI, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .border(.yellow, width: 2)
                        .keyboardType(.decimalPad)
                        .font(.system(size: 13))
                        .padding(4)
                }
                HStack{
                    Text("Resistance =")
                        .padding(1)
                        .font(.system(size: 13))
                    Text("\(RV/RI, specifier: "%.2f")")
                        .textFieldStyle(.roundedBorder)
                        .padding(3)
                        .border(.blue, width: 2)
                        .keyboardType(.decimalPad)
                        .font(.system(size: 13))
                        .padding()
                }
            }
        }
    }
}
