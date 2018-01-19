//
//  ViewController.m
//  NotificationCenterObj
//
//  Created by LuyenBG on 1/19/18.
//  Copyright © 2018 LuyenBG. All rights reserved.
//

#import "MasterViewController.h"

@interface MasterViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelText;

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getData:) name:@"notifi" object:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)getData:(NSNotification *) notification {
    NSString *name = notification.object;
    self.labelText.text = name;
}
-(void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
