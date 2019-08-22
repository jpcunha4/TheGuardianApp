//
//  API.swift
//  TheGuardianApp
//
//  Created by Work on 21/08/19.
//  Copyright © 2019 Work. All rights reserved.
//

import Foundation
import Alamofire

class API {
    let baseUri = "https://content.guardianapis.com"
    let apiAccessKey = "04686dae-fc3f-431b-9bb6-4e51fc928923"
    
    func fetchEarliestNews(_ completion: @escaping ([String: Any]?, Error?) -> ()) {
        print("\(baseUri)/search?order-by=newest&show-fields=headline,body,thumbnail,starRating&page-size=10&api-key=\(apiAccessKey)")
        if let url = URL(string: "\(baseUri)/search?order-by=newest&show-fields=headline,body,thumbnail,starRating&page-size=10") {
            Alamofire.request(url, method: .get, parameters: [:], encoding: URLEncoding.queryString, headers: ["Content-Type":"application/json"]).validate().responseJSON { response in
                if let err = response.error {
                    print(err)
                    completion(nil, err);
                }else if let json = response.result.value as? [String: Any] {
                    print(json)
                    completion(json, nil)
                }
            }
        }else {
            return;
        }
    }
}
