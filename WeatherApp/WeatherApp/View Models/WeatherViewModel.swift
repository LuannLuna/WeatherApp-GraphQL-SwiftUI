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
    let weatherIcons = ["03d": "cloud", "04d": "smoke"]

    @Published var loadingStatus: LoadingStatus = .none

    private
    func getSystemIcon(icon: String?) -> String? {
        guard let icon else { return "exclamationmark" }
        return weatherIcons[icon] ?? weatherIcons["03d"]
    }
}
