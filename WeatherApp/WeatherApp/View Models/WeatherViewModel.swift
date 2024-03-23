import Foundation

enum LoadingStatus {
    case none
    case success
    case failure
    case notFound
}

class WeatherViewModel: ObservableObject {
    var city = ""
    var weatherInfo: WeatherInfoViewModel?

    @Published var loadingStatus: LoadingStatus = .none

    func fetchWeatherByCityName() {
        Network.shared.apollo.fetch(query: GetWeatherByCityNameQuery(city: city)) { [weak self] result in
            switch result {
                case let .success(graphqlResult):
                    if let getCityByName = graphqlResult.data?.getCityByName {
                        self?.weatherInfo = .init(city: getCityByName)
                        DispatchQueue.main.async { [weak self] in
                            self?.loadingStatus = .success
                        }
                    } else {
                        DispatchQueue.main.async {
                            self?.loadingStatus = .notFound
                        }
                    }
                case let .failure(error):
                    print(error.localizedDescription)
                    DispatchQueue.main.async {
                        self?.loadingStatus = .failure
                    }
            }
        }
    }
}
