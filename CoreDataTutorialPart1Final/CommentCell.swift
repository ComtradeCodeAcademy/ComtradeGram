//
//  CommentCell.swift
//  CoreDataTutorialPart1Final
//
//  Created by Predrag Jevtic on 12/4/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    
    var commentText:UILabel = {
        let lbl = UILabel.init()
        //(frame: CGRect.init(x: 5, y: 5, width: size.width - 60, height: self.frame.size.height - 10))
        lbl.backgroundColor = UIColor.red
        return lbl
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        isUserInteractionEnabled = true
        // Initialization code
        self.addSubview(commentText)
        commentText.frame = CGRect.init(x: 10, y: 5, width: self.frame.size.width, height: self.frame.size.height - 10)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
