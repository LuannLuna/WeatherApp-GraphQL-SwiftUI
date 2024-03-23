import SwiftUI 

struct WeatherView: View {
    
    var body: some View {
        VStack {
            
            HStack {
                
                VStack(alignment: .leading) {
                    
                    Image(systemName: "sun")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(.bottom, 20)
                    
                    Text("title")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("description")
                        .font(.body)
                        .foregroundColor(.white)
                }
                
                Spacer()
                VStack {
                    Text("temperature")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                    
                    
                    Text("Feels like")
                        .font(.caption)
                        .foregroundColor(.white)
                }
            }.padding()
        }
        .frame(maxWidth: .infinity, maxHeight: 200)
        .background(Color(#colorLiteral(red: 0.3411446214, green: 0.4495401382, blue: 0.9995139241, alpha: 1)))
        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
    }
}
