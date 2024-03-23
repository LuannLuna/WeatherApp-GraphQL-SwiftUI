import Foundation
typealias CityInfo = GetWeatherByCityNameQuery.Data.GetCityByName

struct WeatherInfoViewModel {
    private let city: CityInfo
    private let weatherIcons = ["03d": "cloud", "04d": "smoke"]

    init(city: CityInfo) {
        self.city = city
    }
    var temperature: Double? { city.weather?.temperature?.actual }
    var humidity: Int? { city.weather?.clouds?.humidity }
    var summaryTitle: String? { city.weather?.summary?.title }
    var summaryDescription: String? { city.weather?.summary?.description }
    var feelsLike: Double? { city.weather?.temperature?.feelsLike }
    var icon: String? { getSystemIcon(icon: city.weather?.summary?.icon) }

    private
    func getSystemIcon(icon: String?) -> String? {
        guard let icon else { return "exclamationmark" }
        return weatherIcons[icon] ?? weatherIcons["03d"]
    }
}
