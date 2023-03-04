import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Voltage()
                .tabItem {
                    Label("Voltage", systemImage: "v.circle")
                }
            Resistance()
                .tabItem {
                    Label("Resistance",systemImage:"r.circle")
                }
            Current()
                .tabItem{
                    Label("Current",systemImage:"i.circle")
                }
            Power()
                .tabItem{
                    Label("Power",systemImage:"p.circle")
                }
        }
    }
}
