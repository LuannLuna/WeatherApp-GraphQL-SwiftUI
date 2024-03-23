import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            
            TextField("City", text: .constant("Houston")) { (_) in
                
            } onCommit: {
                
            }.textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
            
            Spacer()
        }
        .padding()
        .navigationTitle("Weather")
        .embedInNavigationView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


