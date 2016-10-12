//
//  ViewController.m
//  NamWhereIam
//
//  Created by Namrata on 12/10/16.
//  Copyright © 2016 Namrata Mahajan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)startLocating
{
    myLocationManager = [[CLLocationManager alloc]init];
    myLocationManager.delegate=self;
    [myLocationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [myLocationManager requestWhenInUseAuthorization];
    [myLocationManager stopUpdatingLocation];
    
    
}
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    CLLocation *curentLocation=[locations lastObject];
    NSLog(@"latitude %f",curentLocation.coordinate.latitude);
    NSLog(@"longitude %f",curentLocation.coordinate.longitude);
    MKCoordinateSpan mySpan = MKCoordinateSpanMake(0.001, 0.001);
    MKCoordinateRegion myRegion = MKCoordinateRegionMake(curentLocation.coordinate, mySpan);
    [self.myMapView setRegion:myRegion animated:YES];
    
    if (curentLocation != nil) {
        [myLocationManager startUpdatingLocation];
    }
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"%@",error.localizedDescription);
}

- (IBAction)ActionStart:(id)sender {
    [self startLocating];
}
@end
