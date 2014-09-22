//
//  <%= @module %>ViewController.h
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <UIKit/UIKit.h>

#import "<%= @module %>ModuleInterface.h"
#import "<%= @module %>ViewInterface.h"

@interface <%= @module %>ViewController : UIViewController <<%= @module %>ViewInterface>

@property (nonatomic, strong) id<<%= @module %>ModuleInterface> eventHandler;

// *** add UI events here

@end
