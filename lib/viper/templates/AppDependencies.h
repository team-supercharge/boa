//
//  <%= @project %>AppDependencies.h
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface <%= @project %>AppDependencies : NSObject

- (id)initWithWindow:(UIWindow *)window;
- (void)installRootViewController;

@end
