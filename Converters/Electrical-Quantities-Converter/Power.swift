import SwiftUI

struct Power: View {
    @State var PV = 0.00
    @State var PI = 0.00
    var body: some View {
        VStack{
            Text("Power (P=IV)")
                .font(.system(size:20))
                .padding()
            VStack{
                VStack{
                    TextField("Voltage", value: $PV, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .border(.green, width: 2)
                        .keyboardType(.decimalPad)
                        .font(.system(size: 13))
                        .padding(4)
                    TextField("Current", value: $PI, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .border(.yellow, width: 2)
                        .keyboardType(.decimalPad)
                        .font(.system(size: 13))
                        .padding(4)
                }
                HStack{
                    Text("Power =")
                        .padding(1)
                        .font(.system(size: 13))
                    Text("\(PV*PI, specifier: "%.2f")")
                        .textFieldStyle(.roundedBorder)
                        .padding(3)
                        .border(.red, width: 2)
                        .keyboardType(.decimalPad)
                        .font(.system(size: 13))
                        .padding()
                }
            }
        }
        
    }
}
