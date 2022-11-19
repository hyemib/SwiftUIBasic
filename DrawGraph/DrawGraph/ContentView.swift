
import SwiftUI

struct ContentView: View {
    @State private var numberArray:[[Int]] = [[],[],[]]
    @State private var numberArrayIndex: Int = 1
    @State private var showingGraph: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            if numberArrayIndex == 1 {
                VStack {
                    HStack(alignment: .bottom) {
                        ForEach(numberArray[0], id: \.self) {
                        number in
                            VStack() {
                                Rectangle()
                                    .frame(width: 20, height: CGFloat(number) * 2.5)
                                    .transition(.move(edge: .top))
                                Text("\(number)")
                            }
                        }
                        
                    }
                    .padding()
                }
                
            }
            if numberArrayIndex == 2 {
                HStack(alignment: .bottom) {
                    ForEach(numberArray[1], id: \.self) {
                    number in
                        VStack() {
                            Rectangle()
                                .frame(width: 20, height: CGFloat(number) * 2.5)
                            Text("\(number)")
                        }
                    }
                }
                .padding()
            }
            if numberArrayIndex == 3 {
                HStack(alignment: .bottom) {
                    ForEach(numberArray[2], id: \.self) {
                    number in
                        VStack() {
                            Rectangle()
                                .frame(width: 20, height: CGFloat(number) * 2.5)
                            Text("\(number)")
                        }
                    }
                }
                .padding()
            }

            
            HStack(alignment: .bottom, spacing: 50) {
                Button(action: {
                    numberArrayIndex = 1
                    setNumberArray(numberArrayIndex-1)
                    print(numberArray[numberArrayIndex-1])
                    showingGraph.toggle()
                }) {
                    Text("Button1")
                }
                Button(action: {
                    numberArrayIndex = 2
                    setNumberArray(numberArrayIndex-1)
                    print(numberArray[numberArrayIndex-1])
                }) {
                    Text("Button2")
                }
                Button(action: {
                    numberArrayIndex = 3
                    setNumberArray(numberArrayIndex-1)
                    print(numberArray[numberArrayIndex-1])
                }) {
                    Text("Button3")
                }
            }
        }
        .frame(height: 400)
        
    }
    
    func setNumberArray(_ index: Int) {
        numberArray[index] = []
        let numberRange = Array(1...Int.random(in: 50...100))
        for _ in 1...(Int.random(in: 5...12)) {
            numberArray[index].append(numberRange.randomElement() ?? 0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
