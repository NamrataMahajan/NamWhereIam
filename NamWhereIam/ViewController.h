//
//  ViewController.h
//  NamWhereIam
//
//  Created by Namrata on 12/10/16.
//  Copyright © 2016 Namrata Mahajan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<MKMapViewDelegate,CLLocationManagerDelegate>
{
    CLLocationManager *myLocationManager;
}
@property (strong, nonatomic) IBOutlet MKMapView *myMapView;
@property (strong, nonatomic) IBOutlet UILabel *LabelLatitude;

@property (strong, nonatomic) IBOutlet UILabel *LabelLongitude;

- (IBAction)ActionStart:(id)sender;

@end

