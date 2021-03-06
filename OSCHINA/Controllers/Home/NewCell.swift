//
//  NewCell.swift
//  OSCHINA
//
//  Created by KingCQ on 16/9/1.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit
import SnapKit

class NewCell: CollectionCell {

    var titleLabel: UILabel!
    var contentLabel: UILabel!
    var bottomView: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .groupTableViewBackground
        titleLabel = UILabel()
        titleLabel.font = UIFont.systemFont(ofSize: UIFont.labelFontSize)
        contentLabel = UILabel()
        contentLabel.font = UIFont.systemFont(ofSize: UIFont.systemFontSize)
        contentLabel.textColor = UIColor.gray
        contentLabel.numberOfLines = 0
        contentView.addSubview(titleLabel)
        contentView.addSubview(contentLabel)
        contentView.backgroundColor = UIColor.white
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //    override func updateConstraints() {
    //        contentView.snp.makeConstraints { make in
    //            make.left.equalTo(self.snp.left)
    //            make.right.equalTo(self.snp.right)
    //            make.top.equalTo(self.snp.top)
    //            make.bottom.equalTo(self.snp.bottom)
    //        }
    //        titleLabel.snp.makeConstraints { make in
    //            make.top.equalTo(contentView.snp.top)
    //            make.width.equalTo(contentView.snp.width)
    //            make.left.equalTo(contentView.snp.left)
    //            make.height.equalTo(24)
    //        }
    //        contentLabel.snp.makeConstraints { make in
    //            make.top.equalTo(titleLabel.snp.bottom)
    //            make.left.equalTo(titleLabel.snp.left)
    //            make.width.equalTo(titleLabel.snp.width)
    //        }
    //        super.updateConstraints()
    //    }

    func set(with data: NewsObjList) {
        let layout = NewsLayout(data)
        titleLabel.text = data.title
        contentLabel.text = data.body
        titleLabel.frame = layout.title
        contentLabel.frame = layout.content
        height = layout.height
        //        updateConstraints()
    }
}
