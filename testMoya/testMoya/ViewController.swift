//
//  ViewController.swift
//  testMoya
//
//  Created by Alex on 3/23/17.
//  Copyright © 2017 alex. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {
    let category = ["Business","Entertainment_MovieAndTV","Entertainment_Music","Health","Politics"
        ,"Technology","Science","Sports_Golf","Sports_MLB","Sports_NBA","Sports_NFL","Sports_NHL","Sports_Soccer"
        ,"Sports_Tennis","Sports_CFB","Sports_CBB"]

    override func viewDidLoad() {
        super.viewDidLoad()
       
        NewsProvider.request(.getNews(category: category[0] )) { result in
            switch result {
            case let .success(response):
                let json = JSON(response.data)
                var articles:[Article] = []
                for (_,subJson):(String, JSON) in json["value"] {
                    let  article = Article(fromJson: subJson)
                    articles.append(article)
                }
                print(articles.count)
            case let .failure(error):

                print(error.errorDescription)
            }
        }
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

