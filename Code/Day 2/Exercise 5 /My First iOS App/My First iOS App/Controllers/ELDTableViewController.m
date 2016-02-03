//
//  ELDTableView.m
//  Mr Friendly
//
//  Created by Elad Tchetchik on 7/15/15.
//  Copyright (c) 2015 za.co.elad. All rights reserved.
//

#import "ELDTableViewController.h"
#import "ELDPerson.h"


@implementation ELDTableViewController
    {
    __strong NSMutableArray* _people;
    
    }

- (void)viewDidLoad
    {
    NSArray* names;
    [super viewDidLoad];
    
    _people = [NSMutableArray new];
    names = @[@"Anders Celsius", @"Amedeo Avogadro", @"Blaise Pascal", @"Christian Doppler", @"Danial Bernoulli", @"Ernst Rutherford", @"Georg Ohm", @"Enrico Fermi", @"Joseph Fourier", @"Leonard Euler", @"Marie Curie" ];
    
    
    for (int index = 0; index < 10; index++)
        {
        [_people addObject:[[ELDPerson alloc] initWithName:names[index] age:index*5]];
        }

    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"reuseIdentifier"];
    [self.tableView reloadData];
    }


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
    {
    // Return the number of sections.
    return 1;
    }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
    {
    return [_people count];
    }


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
    {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];

    ELDPerson* person;
    
    person = _people[indexPath.row];
    cell.textLabel.text = person.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu",person.age];
    
    return cell;
    }


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
