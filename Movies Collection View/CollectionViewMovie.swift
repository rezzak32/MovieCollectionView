//
//  CollectionViewMovie.swift
//  Movies Collection View
//
//  Created by Rezzak on 9.07.2023.
//

import UIKit
protocol CollectionViewMovieProtocol {
    func addToBasket(indexPath:IndexPath)
}
class CollectionViewMovie: UICollectionViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var moviePriceLabel: UILabel!
    
    var cellProtocol:CollectionViewMovieProtocol?
    var indexPath:IndexPath?
   
    @IBAction func addToBasketButton(_ sender: Any) {
        cellProtocol?.addToBasket(indexPath: indexPath!)
        
        let alert = UIAlertController(title: "Header", message: "Added", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Okay", style: .destructive)
        
        alert.addAction(okAction)
        
        if let windowScene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
            if let window = windowScene.windows.first {
                window.rootViewController?.present(alert, animated: true, completion: nil)
            }
        }
    }
}
