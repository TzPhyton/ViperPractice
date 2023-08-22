//
//  MovieCellView.swift
//  Viper
//
//  Created by Enrique on 12/08/23.
//

import Foundation
import UIKit
import Kingfisher

class MovieCellView: UITableViewCell {
    let movieImageView: UIImageView = {
        let imageView = UIImageView ()
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let movieName: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 32,
                                weight: .bold,
                                width: .condensed)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let moviesDescription: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 12,
                                 weight: .regular,
                                 width: .standard)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    required init?(coder: NSCoder) {
        fatalError("init (coder:) has not been implemented")
    }
    
    func setupViews() {
        addSubview(movieImageView)
        addSubview(movieName)
        addSubview(moviesDescription)
        
        NSLayoutConstraint.activate([
            movieImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            movieImageView.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            movieImageView.heightAnchor.constraint(equalToConstant: 200),
            movieImageView.widthAnchor.constraint(equalToConstant: 100),
            //movieImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            movieImageView.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -12),
            
            movieName.leadingAnchor.constraint(equalTo: movieImageView.trailingAnchor, constant: 18),
            movieName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            movieName.topAnchor.constraint(equalTo: movieImageView.topAnchor, constant: 24),
            
            moviesDescription.leadingAnchor.constraint(equalTo: movieImageView.trailingAnchor, constant: 20),
            moviesDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            moviesDescription.topAnchor.constraint(equalTo: movieName.bottomAnchor, constant: 8),
            
            moviesDescription.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -12),

        ])
    }
    func configure(model: ViewModel) {
        movieImageView.kf.setImage(with: model.imageURL)
        movieName.text = model.title
        moviesDescription.text = model.overview
    }
}





















