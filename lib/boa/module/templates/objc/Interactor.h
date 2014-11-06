//
//  <%= @prefixed_module %>Interactor.h
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

#import <Foundation/Foundation.h>

#import "<%= @prefixed_module %>Presenter.h"
#import "<%= @prefixed_module %>DataManager.h"

@class <%= @prefixed_module %>Presenter;

/**
 Business logic for the <%= @module %> module.
 */
@interface <%= @prefixed_module %>Interactor : NSObject

@property (nonatomic, strong) <%= @prefixed_module %>Presenter *presenter;
@property (nonatomic, strong) <%= @prefixed_module %>DataManager *dataManager;

@end
