//
//  CustomCell.m
//  XmppDemoApp
//
//  Created by Rohit palod on 22/04/17.
//  Copyright © 2017 Craterzone. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        _senderAndTimeLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 5, 300, 20)];
        _senderAndTimeLabel.textAlignment = NSTextAlignmentCenter;
        _senderAndTimeLabel.font = [UIFont systemFontOfSize:11.0];
        _senderAndTimeLabel.textColor = [UIColor lightGrayColor];
        [self.contentView addSubview:_senderAndTimeLabel];
        
        _bgImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        [self.contentView addSubview:_bgImageView];
        
        _messageContentView = [[UITextView alloc] init];
        _messageContentView.backgroundColor = [UIColor clearColor];
        _messageContentView.editable = NO;
        _messageContentView.scrollEnabled = NO;
        [_messageContentView sizeToFit];
        [self.contentView addSubview:_messageContentView];
        
    }
    
    return self;
    
}

@end
