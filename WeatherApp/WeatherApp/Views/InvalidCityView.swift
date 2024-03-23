import SwiftUI

struct InvalidCityView: View {
    
    let city: String
    
    var body: some View {
        Text("\(city) is not found!")
    }
}

struct InvalidCityView_Previews: PreviewProvider {
    static var previews: some View {
        InvalidCityView(city: "ABCD")
    }
}
