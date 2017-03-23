//
//  BingAPI.swift
//  Pods
//
//  Created by Alex on 3/20/17.
//
//

import Foundation
import SwiftyJSON
import Alamofire
import Moya

enum BingNewsAPI : TargetType {
    
    case getNews(category: String)
    
    var baseURL: URL { return URL(string: "https://api.cognitive.microsoft.com/bing/v5.0/")! }
    
    var path: String {
        switch self {
        case .getNews:
            return "news/"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getNews:
            return .get
        }
    }
    
    var parameters: [String: Any]? {
        switch self {
        case .getNews(let category):
            return  ["Category": category]
        }
    }
    
    var parameterEncoding: ParameterEncoding {
        switch self {
        case .getNews:
            return URLEncoding.default // Send parameters in URL
        }
    }
    
    var sampleData: Data { return Data() }
    
    var task: Task {
        switch self {
        case .getNews:
            return .request
        }
    }
}

let endpointClosure = { (target: BingNewsAPI) -> Endpoint<BingNewsAPI> in
    let defaultEndpoint = MoyaProvider.defaultEndpointMapping(for: target)
    return defaultEndpoint.adding(newHTTPHeaderFields: ["Ocp-Apim-Subscription-Key": "71fc740d5409409d8df291604060c143"])
}
 let NewsProvider = MoyaProvider<BingNewsAPI>(endpointClosure: endpointClosure)

//let NewsProvider = MoyaProvidedr<BingNewsAPI>()









