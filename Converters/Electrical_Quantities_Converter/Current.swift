import SwiftUI

struct Current: View {
    @State var IV = 0.00
    @State var IR = 0.00
    var body: some View {
        VStack{
            Text("Current (I=V/R)")
                .font(.system(size:20))
                .padding()
            VStack{
                VStack{
                    TextField("Resistance", value: $IR, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .border(.blue, width: 2)
                        .keyboardType(.decimalPad)
                        .font(.system(size: 13))
                        .padding(4)
                    TextField("Voltage", value: $IV, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .border(.green, width: 2)
                        .keyboardType(.decimalPad)
                        .font(.system(size: 13))
                        .padding(4)
                }
                HStack{
                    Text("Current =")
                        .padding(1)
                        .font(.system(size: 13))
                    Text("\(IV/IR, specifier: "%.2f")")
                        .textFieldStyle(.roundedBorder)
                        .padding(3)
                        .border(.yellow, width: 2)
                        .keyboardType(.decimalPad)
                        .font(.system(size: 13))
                        .padding()
                }
            }
        }
        
    }
}
