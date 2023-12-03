use projectdb;



drop table if exists User;
drop table if exists Quotes;
 
drop table if exists TreeInfo;
drop table if exists Payment;
drop table if exists BillResponse;
drop table if exists Disputes;
drop table if exists OrderOfWork;
drop table if exists Bill;
drop table if exists RequestQuote;
drop table if exists QuoteResponse;

 
CREATE TABLE if not exists User( 
    email VARCHAR(50) NOT NULL, 
    firstName VARCHAR(10) NOT NULL, 
    lastName VARCHAR(10) NOT NULL, 
    password VARCHAR(20) NOT NULL, 
    address VARCHAR(50) NOT NULL,
    phone_num VARCHAR(14),
    card_num VARCHAR(20),
    card_date VARCHAR(5),
    card_cvc VARCHAR(3),
    role VARCHAR(10),
    PRIMARY KEY (email) 
    );
CREATE TABLE if not exists Quotes( 
    id VARCHAR(50) NOT NULL,
   
	quote_price VARCHAR(50),
    quote_time VARCHAR(50),
    quote_note VARCHAR(50),
    quote_response VARCHAR(10),
    quote_date VARCHAR(8),
    work_order_terms VARCHAR(50),
    work_order_status VARCHAR(15),
    bill_amount VARCHAR(50),
    bill_status VARCHAR(15)
    );
 
 
CREATE TABLE if not exists TreeInfo(
    treeInfo_id VARCHAR(20) NOT NULL,
    size VARCHAR(20),
    height VARCHAR(20),
    num_trees VARCHAR(20),  
    location VARCHAR(20), 
    house_dist VARCHAR(20)
    
);
CREATE TABLE if not exists Payment(
    payment_id VARCHAR(20) NOT NULL,
    amount_paid VARCHAR(20),
    payment_date VARCHAR(20)
);
CREATE TABLE if not exists BillResponse(
    billResponse_id VARCHAR(20) NOT NULL,
    bill_response_note VARCHAR(20),
    bill_response_date VARCHAR(20)
);
CREATE TABLE if not exists Disputes(
    disputes_id VARCHAR(20) NOT NULL,
    dispute_note VARCHAR(20),
    dispute_date VARCHAR(20)
);
CREATE TABLE if not exists OrderOfWork(
    orderOfWork_id VARCHAR(20) NOT NULL,
    terms_agreed VARCHAR(20),
    oow_status VARCHAR(20)
);
CREATE TABLE if not exists Bill(
    bill_id VARCHAR(20) NOT NULL,
    amount_due VARCHAR(20),
    bill_status VARCHAR(20),
    bill_note VARCHAR(20)
);
CREATE TABLE if not exists OrderOfWork(
    orderOfWork_id VARCHAR(20) NOT NULL,
    request_note VARCHAR(20),
    request_status VARCHAR(20)
);
CREATE TABLE if not exists RequestQuote(
    requestQuote_id VARCHAR(20) NOT NULL,
    request_note VARCHAR(20),
    request_status VARCHAR(20)
);
CREATE TABLE if not exists QuoteResponse(
    quoteResponse_id VARCHAR(20) NOT NULL,
    quote_response_note VARCHAR(20),
    quote_response_status VARCHAR(20)
);
 
insert into Quotes(id,  quote_price, quote_time, quote_note, quote_response, quote_date, work_order_terms, work_order_status, bill_amount, bill_status)
    values
    ('lJones@email.com', '1200', '2 days', 'no note', 'Approved', '10/18/23', 'terms of work', 'uncompleted', '1200', 'unpaied'),
	('nWayne@email.com',   '1200', '2 days', 'no note', 'Approved', '10/18/23', 'terms of work', 'uncompleted', '1200', 'unpaied'),
	('mJones@email.com',   '1200', '2 days', 'no note', 'Approved', '10/18/23', 'terms of work', 'uncompleted', '1200', 'unpaied'),
	('eName@email.com',   '1200', '2 days', 'no note', 'Approved', '10/18/23', 'terms of work', 'uncompleted', '1200', 'unpaied'),
	('sSmith@email.com',   '1200', '2 days', 'no note', 'Approved', '10/18/23', 'terms of work', 'uncompleted', '1200', 'unpaied'),
	('oHanks@email.com',   '1200', '2 days', 'no note', 'Approved', '10/18/23', 'terms of work', 'uncompleted', '1200', 'unpaied'),
	('mSams@email.com',  '1200', '2 days', 'no note', 'Approved', '10/18/23', 'terms of work', 'uncompleted', '1200', 'unpaied'),
	('rDavis@email.com', '1200', '2 days', 'no note', 'Approved', '10/18/23', 'terms of work', 'uncompleted', '1200', 'unpaied');
 
 
insert into User(email, firstName, lastName, password, address, phone_num, card_num, card_date, card_cvc, role)
    values 
    ('root', 'default', 'default','pass1234', '1234 whatever street, detroit, MI',  '(000)-000-0000', '0000-0000-0000-0000', '00/00', '000', 'admin'),
	('dSmith@email.com', 'David', 'Smith','smith1234', '1234 other street, detroit, MI', '(111)-222-3333', '0000-0000-0000-0000', '00/00', '000', 'owner'),
    ('lJones@email.com', 'Luke', 'Jones','jones1234', '1234 whatever Road, detroit, TX', '(111)-222-3333', '1234-5555-25607-5403', '10/29', '123', 'customer'),
    ('nWayne@email.com', 'Nate', 'Wayne','wayne1234', '1234 whatever street, detroit, MI', '(000)-000-0000', '0000-0000-0000-0000', '00/00', '000', 'customer'),
	('mJones@email.com', 'Matt', 'Jones','jones1234', '1235 other street, detroit, MI', '(111)-222-3333', '0000-0000-0000-0000', '00/00', '000', 'customer'),
    ('eName@email.com', 'Even', 'Name','name1234', '1235 whatever Road, detroit, TX', '(111)-222-3333', '1234-5555-25607-5403', '10/29', '123', 'customer'),
    ('sSmith@email.com', 'Sean', 'Smith','smith1234', '1235 whatever street, detroit, MI', '(000)-000-0000', '0000-0000-0000-0000', '00/00', '000', 'customer'),
	('oHanks@email.com', 'Owen', 'Hanks','hanks1234', '1236 other street, detroit, MI', '(111)-222-3333', '0000-0000-0000-0000', '00/00', '000', 'customer'),
    ('mSams@email.com', 'Mick', 'Sams','sams1234', '1236 whatever Road, detroit, TX', '(111)-222-3333', '1234-5555-25607-5403', '10/29', '123', 'customer'),
    ('rDavis@email.com', 'Randy', 'Davis','davis1234', '1236 whatever street, detroit, MI', '(000)-000-0000', '0000-0000-0000-0000', '00/00', '000', 'customer');
 
 
 
insert into TreeInfo(treeInfo_id, size, height, location, house_dist,  num_trees)
	values
	('lJones@email.com', '0', '10/29/24', 'back yard', '120ft','1'),
	('nWayne@email.com', '12', '10/29/24', 'back yard', '120ft', '1'),
	('mJones@email.com', '6', '10/29/24', 'back yard', '120ft', '2'),
	('eName@email.com', '4', '10/29/24', 'back yard', '120ft', '3');
 
insert into Payment(payment_id, amount_paid, payment_date)
	values
	('lJones@email.com', 'no note', '10/29/24'),
	('nWayne@email.com', 'no note', '10/29/24'),
	('mJones@email.com', 'no note', '10/29/24'),
	('eName@email.com', 'no note', '10/29/24');
 
insert into BillResponse(billResponse_id, bill_response_note, bill_response_date)
	values
	('lJones@email.com', 'no note', '10/29/24'),
	('nWayne@email.com', 'no note', '10/29/24'),
	('mJones@email.com', 'no note', '10/29/24'),
	('eName@email.com', 'no note', '10/29/24');
 
insert into Disputes(disputes_id, dispute_note, dispute_date)
	values
	('lJones@email.com', 'no note', '10/29/24'),
	('nWayne@email.com', 'no note', '10/29/24'),
	('mJones@email.com', 'no note', '10/29/24'),
	('eName@email.com', 'no note', '10/29/24');
 
insert into OrderOfWork(orderOfWork_id, terms_agreed, oow_status)
	values
	('lJones@email.com', 'no terms', 'incomplete'),
	('nWayne@email.com', 'no terms', 'incomplete'),
	('mJones@email.com', 'no terms', 'incomplete'),
	('eName@email.com', 'no terms', 'incomplete');
 
insert into Bill(bill_id, amount_due, bill_status, bill_note)
	values
	('lJones@email.com', '1500', 'unpaied', 'no note'),
	('nWayne@email.com', '1500', 'unpaied', 'no note'),
	('mJones@email.com', '1500', 'unpaied', 'no note'),
	('eName@email.com', '1500', 'unpaied', 'no note');
 
insert into RequestQuote(requestQuote_id, request_note, request_status)
	values
	('lJones@email.com', 'no note', 'un approved'),
	('nWayne@email.com', 'no note', 'un approved'),
	('mJones@email.com', 'no note', 'un approved'),
	('eName@email.com', 'no note', 'un approved');
 
insert into QuoteResponse(quoteResponse_id, quote_response_note, quote_response_status)
	values
	('lJones@email.com', 'no note', 'un approved'),
	('nWayne@email.com', 'no note', 'un approved'),
	('mJones@email.com', 'no note', 'un approved'),
	('eName@email.com', 'no note', 'un approved');
 
 
select * from User;
select * from Quotes;
 
select * from TreeInfo;
select * from Payment;
select * from BillResponse;
select * from Disputes;
select * from OrderOfWork;
select * from Bill;
select * from RequestQuote;
select * from QuoteResponse;





