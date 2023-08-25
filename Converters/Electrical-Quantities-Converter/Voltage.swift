import SwiftUI

struct Voltage: View {
    @State var VR = 0.00
    @State var VI = 0.00
    var body: some View {
        VStack{
            Text("Voltage (V=IR)")
                .font(.system(size:20))
                .padding()
            VStack{
                VStack{
                    TextField("Resistance", value: $VR, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .border(.blue, width: 2)
                        .keyboardType(.decimalPad)
                        .font(.system(size: 13))
                        .padding(4)
                    TextField("Current", value: $VI, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .border(.yellow, width: 2)
                        .keyboardType(.decimalPad)
                        .font(.system(size: 13))
                        .padding(4)
                }
                HStack{
                    Text("Voltage =")
                        .padding(1)
                        .font(.system(size: 13))
                    Text("\(VR*VI, specifier: "%.2f")")
                        .textFieldStyle(.roundedBorder)
                        .padding(3)
                        .border(.green, width: 2)
                        .keyboardType(.decimalPad)
                        .font(.system(size: 13))
                        .padding()
                }
            }
        }
        
    }
}
