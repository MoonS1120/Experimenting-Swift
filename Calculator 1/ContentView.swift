import SwiftUI

struct ContentView: View {
    @State var km = 0.00
    @State var mile = 0.00
    var body: some View {
        VStack{
            Text("Miles & Kilometres conversion")
                .font(.system(size:20))
                .padding()
            HStack{
                Text("Kilometres")
                    .padding()
                    .font(.system(size: 13))
                TextField("Quantity 1", value: $km, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .border(.green, width: 2)
                    .keyboardType(.decimalPad)
                    .font(.system(size: 13))
                Text("Miles")
                    .padding()
                    .font(.system(size: 13))
                Text("\(km*0.62137, specifier: "%.2f")")
                    .font(.system(size: 13))
            }
            HStack{
                Text("Miles")
                    .padding()
                    .font(.system(size: 13))
                TextField("Quantity 2", value: $mile, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .border(.yellow, width: 2)
                    .keyboardType(.decimalPad)
                    .font(.system(size: 13))
                Text("Kilometres")
                    .font(.system(size: 13))
                Text("\(mile/0.62137, specifier: "%.2f")")
                    .font(.system(size:13))
            }
        }
    }
}
