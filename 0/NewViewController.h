//
//  NewViewController.h
//  0
//
//  Created by UsFromMini on 4/11/16.
//  Copyright © 2016 Jamil. All rights reserved.
//

#import <UIKit/UIKit.h>



@class NewViewController;
@protocol NewViewControllerDelegate <NSObject>

@optional
-(void) newViewControllerDelegateMethod: (NewViewController *) sender withString:(NSString*)receivedString;
@end

@interface NewViewController : UIViewController
@property (nonatomic, strong) id <NewViewControllerDelegate> delegate;
@end
