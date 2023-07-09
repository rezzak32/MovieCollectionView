//
//  ViewController.swift
//  Movies Collection View
//
//  Created by Rezzak on 9.07.2023.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    var movieList = [Movies]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let width = self.movieCollectionView.frame.size.width
        
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        
        let cellWidth = (width-30)/2
        
        layout.itemSize = CGSize(width: cellWidth, height: cellWidth * 1.75)
        
        movieCollectionView!.collectionViewLayout = layout
        
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
        
        let m7 = Movies(movieId: 1, movieName: "Django", movieImageName: "django", moviePrice: 9.00)
        let m8 = Movies(movieId: 2, movieName: "Inception", movieImageName: "inception", moviePrice: 12.00)
        let m3 = Movies(movieId: 3, movieName: "Interstaller", movieImageName: "interstellar", moviePrice: 8.00)
        let m4 = Movies(movieId: 4, movieName: "Anatolia", movieImageName: "birzamanlaranadoluda", moviePrice: 13.00)
        let m5 = Movies(movieId: 5, movieName: "Tha Hateful Eight", movieImageName: "thehatefuleight", moviePrice: 12.00)
        let m6 = Movies(movieId: 6, movieName: "The Pianist", movieImageName: "thepianist", moviePrice: 9.00)
        let m2 = Movies(movieId: 6, movieName: "Dark Knight ", movieImageName: "darkknight", moviePrice: 10.50)
        let m1 = Movies(movieId: 6, movieName: "Avengers", movieImageName: "avengers", moviePrice: 7.00)
       
        
        movieList.append(m1)
        movieList.append(m2)
        movieList.append(m3)
        movieList.append(m4)
        movieList.append(m5)
        movieList.append(m6)
        movieList.append(m7)
        movieList.append(m8)
        
        

       
    }

   
}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let movie = movieList[indexPath.row]
        
        let cell = movieCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! CollectionViewMovie
        
        cell.movieNameLabel.text = movie.movieName!
        cell.moviePriceLabel.text = "\(movie.moviePrice!) $"
        cell.movieImageView.image = UIImage(named: movie.movieImageName!)
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.6
        
        return cell
    }
}

