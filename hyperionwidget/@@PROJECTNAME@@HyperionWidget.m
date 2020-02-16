#import "@@PROJECTNAME@@HyperionWidget.h"

@interface @@PROJECTNAME@@HyperionWidget()
{
    UILabel* textLabel;
}
@end

@implementation @@PROJECTNAME@@HyperionWidget
- (void)setup {
  self.contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 100)];
  self.contentView.backgroundColor = [UIColor redColor];

  textLabel = [[UILabel alloc]
      initWithFrame:CGRectMake(0, 0, self.contentView.frame.size.width,
                               self.contentView.frame.size.height)];
  textLabel.textAlignment = NSTextAlignmentCenter;
  textLabel.textColor = [UIColor whiteColor];
  textLabel.numberOfLines = 0;
  [textLabel setText:@"hello world"];
  [self.contentView addSubview:textLabel];
}

- (void)layoutForPreview {
  [textLabel setHidden:FALSE];
}
@end