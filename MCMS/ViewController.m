//
//  ViewController.m
//  MCMS
//
//  Created by Kristen L. Fisher on 5/20/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
#import "DetailViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *insertText;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    MagicalCreature *creature1 = [[MagicalCreature alloc] initWithName:@"ghost" description:@"Boo!" theCreaturesImage:[UIImage imageNamed:@"ghost9"]];

    MagicalCreature *creature2 = [[MagicalCreature alloc] initWithName:@"goblin" description:@"ugly" theCreaturesImage:[UIImage imageNamed:@"goblin"]];


    MagicalCreature *creature3 = [[MagicalCreature alloc] initWithName:@"griffin" description:@"my ride" theCreaturesImage:[UIImage imageNamed:@"griffin"]];

    self.creatures = [NSMutableArray arrayWithObjects:creature1, creature2, creature3, nil];

    
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [self.myTableView reloadData];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.creatures.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID"];
   MagicalCreature *magicalCreature = [self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = magicalCreature.name;
    cell.detailTextLabel.text = magicalCreature.description;
   // cell.imageView.image = magicalCreature.
    //cell.detailTextLabel.text = magicalCreature.description;

    


    return cell;

}
- (IBAction)addCreatureToList:(id)sender
{
    NSString *nextCreature = self.insertText.text;
    MagicalCreature *addedCreature = [[MagicalCreature alloc] init];
    addedCreature.name = nextCreature;

    [self.creatures addObject:addedCreature];
    [self.insertText resignFirstResponder];
    self.insertText.text = @"";
    [self.myTableView reloadData];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *selectedIndexPath = self.myTableView.indexPathForSelectedRow;
    MagicalCreature *selectedCreature = [self.creatures objectAtIndex:selectedIndexPath.row];
    DetailViewController *detailViewController = segue.destinationViewController;
    detailViewController.creature = selectedCreature;


}



























@end
