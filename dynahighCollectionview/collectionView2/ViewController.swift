
//
//  ViewController.swift
//  SelfSizingCollectionViewCells
//
//  Created by Satori Maru on 16.12.22.
//  Copyright © 2016年 usagimaru. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {
    @IBOutlet weak var layout: UICollectionViewFlowLayout!
    
    fileprivate var dataSource = [
        [
            "title" : "祗園精舎の鐘の声、諸行無常の響きあり。娑羅双樹の花の色、盛者必衰の理をあらはす。",
            "text" : "月日は百代の過客にして、行きかふ年もまた旅人なり。\n舟の上に生涯をうかべ、馬の口とらえて老をむかふるものは、日々旅にして旅を栖とす。古人も多く旅に死せるあり。よもいづれの年よりか、片雲の風にさそはれて、漂泊の思ひやまず、海浜にさすらへ、去年の秋江上の破屋にくもの古巣をはらひて、やや年も暮、春立てる霞の空に白河の関こえんと、そぞろ神の物につきて心をくるはせ、道祖神のまねきにあひて、取るもの手につかず。",
            ],
        [
            "title" : "祗園精舎の鐘の声、諸行無常の響きあり。",
            "text" : "月日は百代の過客にして、行きかふ年もまた旅人なり。",
            ],
        [
            "title" : "おごれる人も久しからず、唯春の夜の夢のごとし。\nたけき者も遂にはほろびぬ、偏に風の前の塵に同じ。",
            "text" : "　今は昔､竹取の翁といふ者ありけり。野山にまじりて竹を取りつつ、よろづのことに使ひけり。名をば、さぬきの造となむ言ひける。その竹の中に､もと光る竹なむ一筋ありける。あやしがりて寄りて見るに､筒の中光りたり。それを見れば､三寸ばかりなる人､いとうつくしうてゐたり。",
            ],
        [
            "title" : "祗園精舎の鐘の声、諸行無常の響きあり。娑羅双樹の花の色、盛者必衰の理をあらはす。",
            "text" : "月日は百代の過客にして、行きかふ年もまた旅人なり。\n舟の上に生涯をうかべ、馬の口とらえて老をむかふるものは、日々旅にして旅を栖とす。古人も多く旅に死せるあり。よもいづれの年よりか、片雲の風にさそはれて、漂泊の思ひやまず、海浜にさすらへ、去年の秋江上の破屋にくもの古巣をはらひて、やや年も暮、春立てる霞の空に白河の関こえんと、そぞろ神の物につきて心をくるはせ、道祖神のまねきにあひて、取るもの手につかず。",
            ],
        [
            "title" : "祗園精舎の鐘の声、諸行無常の響きあり。",
            "text" : "月日は百代の過客にして、行きかふ年もまた旅人なり。",
            ],
        [
            "title" : "おごれる人も久しからず、唯春の夜の夢のごとし。\nたけき者も遂にはほろびぬ、偏に風の前の塵に同じ。",
            "text" : "　今は昔､竹取の翁といふ者ありけり。野山にまじりて竹を取りつつ、よろづのことに使ひけり。名をば、さぬきの造となむ言ひける。その竹の中に､もと光る竹なむ一筋ありける。あやしがりて寄りて見るに､筒の中光りたり。それを見れば､三寸ばかりなる人､いとうつくしうてゐたり。",
            ],
        [
            "title" : "祗園精舎の鐘の声、諸行無常の響きあり。娑羅双樹の花の色、盛者必衰の理をあらはす。",
            "text" : "月日は百代の過客にして、行きかふ年もまた旅人なり。\n舟の上に生涯をうかべ、馬の口とらえて老をむかふるものは、日々旅にして旅を栖とす。古人も多く旅に死せるあり。よもいづれの年よりか、片雲の風にさそはれて、漂泊の思ひやまず、海浜にさすらへ、去年の秋江上の破屋にくもの古巣をはらひて、やや年も暮、春立てる霞の空に白河の関こえんと、そぞろ神の物につきて心をくるはせ、道祖神のまねきにあひて、取るもの手につかず。",
            ],
        [
            "title" : "祗園精舎の鐘の声、諸行無常の響きあり。",
            "text" : "月日は百代の過客にして、行きかふ年もまた旅人なり。",
            ],
        [
            "title" : "おごれる人も久しからず、唯春の夜の夢のごとし。\nたけき者も遂にはほろびぬ、偏に風の前の塵に同じ。",
            "text" : "　今は昔､竹取の翁といふ者ありけり。野山にまじりて竹を取りつつ、よろづのことに使ひけり。名をば、さぬきの造となむ言ひける。その竹の中に､もと光る竹なむ一筋ありける。あやしがりて寄りて見るに､筒の中光りたり。それを見れば､三寸ばかりなる人､いとうつくしうてゐたり。",
            ],
        [
            "title" : "祗園精舎の鐘の声、諸行無常の響きあり。娑羅双樹の花の色、盛者必衰の理をあらはす。",
            "text" : "月日は百代の過客にして、行きかふ年もまた旅人なり。\n舟の上に生涯をうかべ、馬の口とらえて老をむかふるものは、日々旅にして旅を栖とす。古人も多く旅に死せるあり。よもいづれの年よりか、片雲の風にさそはれて、漂泊の思ひやまず、海浜にさすらへ、去年の秋江上の破屋にくもの古巣をはらひて、やや年も暮、春立てる霞の空に白河の関こえんと、そぞろ神の物につきて心をくるはせ、道祖神のまねきにあひて、取るもの手につかず。",
            ],
        [
            "title" : "祗園精舎の鐘の声、諸行無常の響きあり。",
            "text" : "月日は百代の過客にして、行きかふ年もまた旅人なり。",
            ],
        [
            "title" : "おごれる人も久しからず、唯春の夜の夢のごとし。\nたけき者も遂にはほろびぬ、偏に風の前の塵に同じ。",
            "text" : "　今は昔､竹取の翁といふ者ありけり。野山にまじりて竹を取りつつ、よろづのことに使ひけり。名をば、さぬきの造となむ言ひける。その竹の中に､もと光る竹なむ一筋ありける。あやしがりて寄りて見るに､筒の中光りたり。それを見れば､三寸ばかりなる人､いとうつくしうてゐたり。",
            ],
        
        ]//[[String : String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //    layout.itemSize = CGSize(width: view.bounds.width, height: 150)
        layout.estimatedItemSize = UICollectionViewFlowLayoutAutomaticSize
  
      //  (collectionView?.collectionViewLayout as! UICollectionViewFlowLayout).estimatedItemSize = UICollectionViewFlowLayoutAutomaticSize
        
        //     (collectionView.collectionViewLayout as! UICollectionViewFlowLayout).itemSize =  CGSize(width:  width   , height: 100.0)
        
        //       (collectionView.collectionViewLayout as! UICollectionViewFlowLayout).estimatedItemSize = CGSize(width:  width   , height: 100.0)
        
        //collectionView.register(CollectionViewCell.nib(), forCellWithReuseIdentifier: "cell")
    }
    
      
    
    
}

extension ViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCell
        
         cell.title.text = "\(indexPath.row) \(dataSource[indexPath.row]["title"]!)"
         cell.textLabel.text = "\(dataSource[indexPath.row]["text"]!)"
          // cell.text = "\(dataSource[0]["text"]!)"
     //   let width = UIScreen.main.bounds.width - 20
     //   let high = heightForText(dataSource[0]["text"]!,width: width)
    //    cell.setCellHeight(high)
    
        return cell
    }
    
  
}
