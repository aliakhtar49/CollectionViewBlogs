//
//  ViewController.swift
//  ImageGallery
//
//  Created by Macbook on 24/05/2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    let imagesPerRow: CGFloat = 1.0
    let sectionInset: CGFloat = 0.0
    let minimumInteritemSpacing: CGFloat = 0.0
    let minimumLineSpacing: CGFloat = 10.0
    
    var photos: [String] =  []
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor.red
        let cellNib = UINib(nibName: "GalleryCell", bundle: nil)
        collectionView.register(cellNib, forCellWithReuseIdentifier: GalleryCell.identifier)
        collectionView.register(MyHeaderAndFooterView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: MyHeaderAndFooterView.identifier)
        collectionView.register(MyHeaderAndFooterView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: MyHeaderAndFooterView.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupInterface()
        setupConstriants()
        setupData()
    }
    
    private func setupInterface() {
        self.view.addSubview(collectionView)
        
    }
    func setupConstriants() {
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    private func setupData() {
        for i in 0...9 {
            photos.append("image\(i)")
        }
        photos = photos + photos
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GalleryCell.identifier, for: indexPath) as? GalleryCell else { fatalError() }
        cell.imageView.image = UIImage(named: photos[indexPath.row])
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return minimumLineSpacing
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return minimumInteritemSpacing
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: sectionInset, left: sectionInset, bottom: sectionInset, right: sectionInset)
    }
    
}
