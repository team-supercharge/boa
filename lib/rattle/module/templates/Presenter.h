//
//  <%= @module %>Presenter.h
//  <%= @project_name %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <Foundation/Foundation.h>

#import "<%= @module %>ModuleInterface.h"

#import "<%= @module %>Interactor.h"
#import "<%= @module %>Wireframe.h"
#import "<%= @module %>ViewInterface.h"

@class <%= @module %>Wireframe;
@class <%= @module %>Interactor;

@interface <%= @module %>Presenter : NSObject <<%= @module %>ModuleInterface>

@property (nonatomic, strong) <%= @module %>Interactor *interactor;
@property (nonatomic, strong) <%= @module %>Wireframe *wireframe;

@property (nonatomic, strong) UIViewController<<%= @module %>ViewInterface> *userInterface;

@end
