//
//  MyHeaderAndFooterView.swift
//  ImageGallery
//
//  Created by Macbook on 24/05/2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class MyHeaderAndFooterView: UICollectionReusableView {
    static let identifier = "MyHeaderAndFooterView"
    lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    private func commonInit() {
        setupInteface()
        setupConstraints()
        
    }
    private func setupInteface() {
        addSubview(label)
    }
    private func setupConstraints() {
        NSLayoutConstraint.activate(
            [
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor)
            ]
        )
    }
    
}
