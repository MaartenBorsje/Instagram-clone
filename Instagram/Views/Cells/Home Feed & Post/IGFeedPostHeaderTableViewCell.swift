//
//  IGFeedPostHeaderTableViewCell.swift
//  Instagram
//
//  Created by Maarten Borsje on 18/06/2022.
//

import UIKit

class IGFeedPostHeaderTableViewCell: UITableViewCell {

    static let identifier = "IGFeedPostHeaderTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemBlue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure() {
        // confugure the cell
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }

}
