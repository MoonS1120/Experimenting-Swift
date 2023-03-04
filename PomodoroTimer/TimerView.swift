import SwiftUI

struct TimerView: View {
    let date = Date()
    @State var timerRunning: Bool = false
    @State var timeRemaining: Int = 100
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("Pomodoro")
                 .font(.system(size: 50, weight: .medium, design: .rounded))
                 .padding(10)
                 .foregroundColor(.red)
            HStack{
                Text(convertSecondsToTime(timeInSeconds: timeRemaining))
                    .font(.system(size: 50))
                    .padding(5)
                    .frame(width: 200)
                    .background(.thinMaterial)
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.gray, lineWidth: 4)
                    )
                    .onReceive(timer) { _ in
                        if timeRemaining > 0 && timerRunning {
                            timeRemaining -= 1
                        } else {
                            timerRunning = false
                        }
                    }
                    .onAppear {
                        calcRemain()
                    }
                VStack(spacing :10){
                    Button("Study (25:00)") {
                        timeRemaining = 1500
                        timerRunning = false
                    }
                    .font(.system(size: 12))
                    .foregroundColor(.blue)
                    .padding(5)
                    .frame(width: 90)
                    .background(.white)
                    .cornerRadius(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    Button("Rest (5:00)") {
                        timeRemaining = 300
                        timerRunning = false
                    }
                    .font(.system(size: 12))
                    .foregroundColor(.orange)
                    .padding(5)
                    .frame(width: 90)
                    .background(.white)
                    .cornerRadius(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                }
            }
            HStack(spacing: 30) {
                
                Button("Start") {
                    timerRunning = true
                }
                .foregroundColor(.blue)
                .padding(10)
                
                Button("Stop") {
                    timerRunning = false
                }
                .foregroundColor(.blue)
                .padding(10)
            }
        }
    }
    
    func convertSecondsToTime(timeInSeconds: Int) -> String {
        let minutes = timeInSeconds / 60
        let seconds = timeInSeconds % 60
        return String(format: "%02i:%02i", minutes, seconds)
    }
    
    func calcRemain() {
        let calendar = Calendar.current
        let targetTime: Date = calendar.date(byAdding: .second, value: 1500, to: date, wrappingComponents: false) ?? Date()
        let remainSeconds = Int(targetTime.timeIntervalSince(date))
        self.timeRemaining = remainSeconds
    }
}
