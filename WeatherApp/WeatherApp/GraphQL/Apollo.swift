import Foundation
import Apollo

class Network {
    
    static let shared = Network()
    private init() { }
    
    lazy var apollo = ApolloClient(url: URL(string: "https://graphql-weather-api.herokuapp.com/")!)
}
