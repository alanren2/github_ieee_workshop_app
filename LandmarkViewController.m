//
//  LandmarkViewController.m
//  UInfo
//
//  Created by Arjun Nijhawan on 3/12/17.
//  Copyright © 2017 Arjun Nijhawan. All rights reserved.
//

#import "LandmarkViewController.h"

@interface LandmarkViewController () <UITableViewDataSource, UITableViewDelegate>

@end


@implementation LandmarkViewController  {
     NSArray *tableData;
     NSArray *imageData;
}
    -(void) viewDidLoad {
        tableData = [NSArray arrayWithObjects:@"Pics/Grainger Engineering Library", @"Pics/Altgeld Hall", @"Pics/Lincoln Hall", @"Pics/Illini Union", @"Pics/Loomis Lab", @"Pics/Siebel Center", @"Pics/ECE Building", @"Pics/Engineering Hall", @"Pics/Davenport Hall", nil];
        
        imageData = [NSArray arrayWithObjects: @"grainger.jpg", @"altgeld.jpg", @"lincoln.jpg", @"illini.jpg", @"loomis.jpg", @"siebel.jpg", @"ece.jpg", @"engineering.jpg", @"davenport.jpg", nil];
    }


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count]; //get the number of building we want to display
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"Landmark"; //ID for each cell in tableview
    
    //retrieve a tableview cell not in use
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) { //if the cell exists
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier]; //initialize it to look like a default tableview cell
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row]; //set the text of the cell
    
    cell.imageView.image = [UIImage imageNamed: [imageData objectAtIndex: indexPath.row]]; //set the image
    return cell;
}
@end
