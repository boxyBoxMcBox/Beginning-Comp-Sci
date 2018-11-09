# Name: David Murphy #
use beachclub;

#### Question 1 ####
select c.firstName, c.lastName, c.homePhone, c.cellPhone
from customer c
where c.zipCode = '41071'
order by c.lastName;

#### Question 2 ####
select u.unitNum, u.numBedrooms, u.numBathrooms, u.maxOccupy
from unit u
where u.condoBuilding = 'Atrium';

#### Question 3 ####
select u.unitNum, max(u.numBedrooms)
from unit u
where u.condoBuilding = 'Atrium';

#### Question 4 ####
select u.condoBuilding, max(u.numBedrooms)
from unit u
group by u.condoBuilding;

#### Question 5 ####
select concat(c1.firstName,' ',c1.lastName) as 'Customer Name', concat(c2.firstName,' ',c2.lastName) as 'Alternate Name'
from customer c1 join reservation r on c1.custID = r.primaryCustID 
	join customer c2 on c2.custID = r.altCustID
where r.checkinDate = '2015-03-14';

#### Question 6 ####
select concat(c1.firstName,' ',c1.lastName) as 'Customer Name', u.spaMembership
from customer c1 join reservation r on c1.custID = r.primaryCustID join unit u on r.unitNum = u.unitNum
where r.checkinDate between '2015-03-14' and '2015-03-21';

#### Question 7 ####
select avg(r.ratePrice) as 'Average Rate', u.condoBuilding,u.numBedrooms, 
	u.numBathrooms, u.otherAmenities
from rates r join unit u on r.unitNum = u.unitNum
group by u.condoBuilding;

#### Question 8 ####
select concat(c.firstName,' ',c.lastName) as 'Customer Name', 
	rs.ratePerNight*(rs.checkoutDate - rs.checkinDate)*1.12 as 'Total Amount'
from customer c join reservation rs on c.custID = rs.primaryCustID;