import SwiftUI

struct Triangle: Shape { // Create a custom shape. This is a triangle.
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Triangle()  // Creates ear 1
                .fill(.brown)
                .frame(width: 50, height: 50)
                .offset(x: 38, y: -100)
                .rotationEffect(.degrees(30))
            
            Triangle() // Creates ear 2
                .fill(.brown)
                .frame(width: 50, height: 50)
                .offset(x: -38, y: -100)
                .rotationEffect(.degrees(-30))
            
            Ellipse() // Creates face
                .fill(.brown)
                .background(Ellipse().fill(.white))
                .frame(width: 200, height: 170)
            
            ZStack{ // eyes
                
                Circle()
                    .fill(.black)
                    .frame(width: 25, height: 50)
                    .offset(x: -38, y: 0)
                
                Circle()
                    .fill(.black)
                    .frame(width: 25, height: 50)
                    .offset(x: +38, y: 0)
                
                Circle()
                    .fill(.white)
                    .frame(width: 15, height: 50)
                    .offset(x: -35, y: 0)
                
                Circle()
                    .fill(.white)
                    .frame(width: 15, height: 50)
                    .offset(x: +35, y: 0)
            }
            
            ZStack{ // Creates whiskers.
                Rectangle()
                    .stroke(lineWidth: 2)
                    .frame(width: 30, height: 1)
                    .offset(x: -66, y:-20 )
                    .rotationEffect(.degrees(88))
                
                Rectangle()
                    .stroke(lineWidth: 2)
                    .frame(width: 30, height: 1)
                    .offset(x: -68, y: -0)
                    .rotationEffect(.degrees(90))
                
                Rectangle()
                    .stroke(lineWidth: 2)
                    .frame(width: 30, height: 1)
                    .offset(x: -66, y: 20)
                    .rotationEffect(.degrees(92))
            
                Ellipse()
                    .fill(.gray)
                    .frame(width: 50, height: 34)
                    .offset(x: -3, y: -38)
                    .rotationEffect(.degrees(-180))
                Ellipse()
                    .fill(.white)
                    .frame(width: 50, height: 34)
                    .offset(x: 0, y: -35)
                    .rotationEffect(.degrees(-180))
                Circle()
                    .fill(.black)
                    .frame(width: 15, height: 15)
                    .offset(x: +12, y: 35)
                Circle()
                    .fill(.black)
                    .frame(width: 15, height: 15)
                .offset(x: -12, y: 35)
                
                Ellipse()
                    .fill(.pink)
                    .frame(width: 30, height: 20)
                    .offset(x: -55, y: -35)
                    .rotationEffect(.degrees(-180))
                Ellipse()
                    .fill(.pink)
                    .frame(width: 30, height: 20)
                    .offset(x: 55, y: -35)
                    .rotationEffect(.degrees(-180))
        }
    }
}
}
