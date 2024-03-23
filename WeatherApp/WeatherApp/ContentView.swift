import SwiftUI

struct ContentView: View {

    @StateObject var viewModel: WeatherViewModel

    var body: some View {
        
        VStack {
            
            TextField("City", text: $viewModel.city) { (_) in

            } onCommit: {
                viewModel.fetchWeatherByCityName()
            }.textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
            switch viewModel.loadingStatus {
                case .success:
                    viewModel.weatherInfo.map {
                        WeatherView(vm: $0)
                    }

                case .notFound:
                    InvalidCityView(city: viewModel.city)

                default: EmptyView()
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Weather")
        .embedInNavigationView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: WeatherViewModel())
    }
}


