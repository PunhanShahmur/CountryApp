//
//  CityDetailViewController.swift
//  CountryApp(Collection)
//
//  Created by Punhan Shahmurov on 07.08.25.
//

import UIKit

class CityDetailViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var city: City?
    
    @IBOutlet weak var cityCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = city?.name

        cityCollection.delegate = self
        cityCollection.dataSource = self
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CityDetail", for: indexPath) as? CityDetail else {
            return UICollectionViewCell()
        }
        
        cell.cityImage.image = city?.image
        cell.cityDescription.text = city?.description
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
//            // Mətni götür
//            let text = city?.description
//
//            // Təxmini Label ölçüsünü hesabla
//            let labelWidth = collectionView.frame.width - 32 // padding varsa
//            let font = UIFont.systemFont(ofSize: 16)
//            let boundingRect = NSString(string: text ?? "").boundingRect(
//                with: CGSize(width: labelWidth, height: .greatestFiniteMagnitude),
//                options: [.usesLineFragmentOrigin, .usesFontLeading],
//                attributes: [.font: font],
//                context: nil
//            )
//            
//            let calculatedHeight = ceil(boundingRect.height) + 40 // üst-üstə margin
//            return CGSize(width: collectionView.frame.width, height: calculatedHeight)
//        
//        
        
        let text = city?.description ?? ""
           let labelWidth = collectionView.frame.width - 32 // padding varsa
           let font = UIFont.systemFont(ofSize: 16)
           
           let boundingRect = NSString(string: text).boundingRect(
               with: CGSize(width: labelWidth, height: .greatestFiniteMagnitude),
               options: [.usesLineFragmentOrigin, .usesFontLeading],
               attributes: [.font: font],
               context: nil
           )
           
           let labelHeight = ceil(boundingRect.height)
           let imageHeight: CGFloat = 200 // imageView sabit hündürlükdədirsə, onu daxil et
           
           let verticalPadding: CGFloat = 32 // label + imageView arası padding + top & bottom
           
           let totalHeight = labelHeight + imageHeight + verticalPadding
           
           return CGSize(width: collectionView.frame.width, height: totalHeight)
    }
    

}
