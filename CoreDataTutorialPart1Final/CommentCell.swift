//
//  CommentCell.swift
//  CoreDataTutorialPart1Final
//
//  Created by Predrag Jevtic on 12/4/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {

    var commentTextLbl:UILabel = {
        let lbl = UILabel.init()

        return lbl
    }()

    var commentDateLbl:UILabel = {
        let lbl = UILabel.init()
        lbl.font = UIFont.systemFont(ofSize: 14)
        return lbl
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        let commentWidth = self.frame.size.width * 0.8 - 10
        let dateWidth = self.frame.size.width * 0.3 + 20
        let dateInset = self.frame.size.width - dateWidth
        let labelHeight = self.frame.size.height - 10

        isUserInteractionEnabled = true
        // Initialization code
        self.addSubview(commentTextLbl)
        commentTextLbl.frame = CGRect.init(x: 10, y: 5, width: commentWidth, height: labelHeight)

        commentDateLbl.frame =  CGRect.init(x: dateInset, y: 5, width: dateWidth, height: labelHeight)
        self.addSubview(commentDateLbl)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
