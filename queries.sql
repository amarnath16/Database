-- INSERT INTO guest VALUES (4,"Vinod","1 274 111 3285","2022-04-12");
-- SELECT * FROM guest;


-- INSERT INTO bill VALUES (4, 4, 200, 40, 230);
-- SELECT * FROM bill;


-- UPDATE employee SET Phone = "1 245 530 2792" WHERE Employee_id = 1;
-- SELECT * FROM employee;


-- UPDATE bill SET Total_bill = 240 WHERE Invoice_id = 4;
-- SELECT * FROM bill;


-- DELETE FROM bill WHERE Invoice_id = 4;
-- SELECT * FROM bill;


-- SELECT * FROM room;


-- SELECT * FROM bill JOIN guest WHERE bill.Guest_id=guest.Guest_id;


-- SELECT * FROM room JOIN reservation WHERE room.Room_id=reservation.Room_id;


-- SELECT COUNT(Room_id) AS rooms FROM room;


-- SELECT SUM(Total_bill) AS amount FROM bill;


-- SELECT SUM(Num_rooms) AS total_rooms FROM hotel;


-- SELECT * FROM guest,bill;
