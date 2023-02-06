//
//  PreviewViewController.h
//  ShuttleSpotlightPreview
//
//  Copyright © 2019 fitztrev. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Quartz/Quartz.h>

@interface PreviewViewController : NSViewController

@end

@interface PreviewViewController () <QLPreviewingController> {
    IBOutlet NSTextField *label;
    IBOutlet NSTextField *command;
}

@end


