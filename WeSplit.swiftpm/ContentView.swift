import SwiftUI
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct ContentView: View {
    @State var tapCount = 0
    @State private var name = ""
    @State private var selectedStudent = "Harry"
    let students = ["Harry", "Hermione", "Ron"]
    var body: some View {
        NavigationView {
            Form {
                TextField("Enter your friend's name", text:$name)
                Text("You friend name is \(name)")
                
            }
            Button("Tap Count: \(tapCount)"){
                self.tapCount += 1
            }
            
            //   NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
            /*   
             Section {
             Group {
             Text("Hello, world!")
             Text("Hello, world!")
             Text("Hello, world!")
             Text("Hello, world!")
             }
             }
             Group {
             Text("Hello, world!")
             Text("Hello, world!")
             Text("Hello, world!")
             Text("Hello, world!")
             Text("Hello, world!")
             Text("Hello, world!")
             Text("Hello, world!")
             }
             .padding()
             }
             */
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
