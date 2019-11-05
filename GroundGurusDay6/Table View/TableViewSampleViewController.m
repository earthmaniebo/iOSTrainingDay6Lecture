//
//  TableViewSampleViewController.m
//  GroundGurusDay6
//
//  Created by Earth Maniebo on 04/11/2019.
//  Copyright © 2019 Earth Maniebo. All rights reserved.
//

#import "TableViewSampleViewController.h"
#import "Cells/ContactTableViewCell.h"
#import "ContactDetailsViewController.h"

@interface TableViewSampleViewController ()

@end

@implementation TableViewSampleViewController

NSArray *tableData;
NSString *selectedName;

- (IBAction)didTapClose:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Link table view to table view cell
    [self.contactListTableView registerNib:[UINib nibWithNibName:@"ContactTableViewCell" bundle:nil] forCellReuseIdentifier:@"ContactCell"];
    
    tableData = [NSArray arrayWithObjects:@"Earth Maniebo", @"John Doe", @"Glenn Posadas", @"Sergio Ramos", @"Wayne Rooney", @"Lionel Messi", @"Paul Pogba", @"Cristiano Ronaldo", @"David De Gea", @"Wan Bissaka", @"Harry Maguire",@"Daniel James", @"Ashley Young", @"Lindelof", @"Marcus Rashford", @"Anthony Martial", @"Eric Baily", @"McTominay", @"Zairah Ylagan", @"Anne Trajano", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ContactTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell"];
    cell.nameLabel.text = tableData[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    selectedName = tableData[indexPath.row];
    [self performSegueWithIdentifier:@"contactDetailSegue" sender:nil];
    [_contactListTableView deselectRowAtIndexPath:indexPath animated:true];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"contactDetailSegue"]) {
        ContactDetailsViewController *vc = [segue destinationViewController];
        vc.contactName = selectedName;
    }
}



@end
