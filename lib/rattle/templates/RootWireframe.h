//
//  RootWireframe.h
//  foldparty
//
//  Created by Balazs on 11/09/14.
//
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface RootWireframe : NSObject

- (id)initWithWindow:(UIWindow *)window;

- (void)pushViewController:(UIViewController*)viewController fromController:(UIViewController *)fromController;
- (void)popToViewController:(UIViewController*)viewController fromController:(UIViewController *)fromController;

- (bool)containsViewController:(UIViewController*)viewController;

@end
