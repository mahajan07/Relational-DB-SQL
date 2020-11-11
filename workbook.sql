USE mydb;

/* ============================================================================ */
/* SECTION 1: SELECT statements                                                 */
/* ============================================================================ */

-- select name, capital from us_state where name = "California "




/* ---- TASK 1 ---------------------------------------------------------------- */
/* Write an SQL statement to find out what is the state capital of Oregon       */
/* hint: the names of the columns you need are: name and capital                */
/* ---------------------------------------------------------------------------- */


-- SELECT name, capital from us_state where name = "Oregon"

-- SELECT * FROM us_state WHERE area_size > 10000


/* ============================================================================ */
/* SECTION 2: SELECT statements with pattern matching and sorting               */
/* ============================================================================ */
-- SELECT * FROM us_state order by area_size DESC


/* ---- TASK 2 ---------------------------------------------------------------- */
/* Write an SQL statement to display all the states with abbreviations that     */
/* start with the letter "N", sort your results by state capital                */
/* ---------------------------------------------------------------------------- */



-- SELECT * FROM us_state where name like "M%" order by area_size DESC

-- SELECT * FROM us_state WHERE abbreviation LIKE "N%" order by capital

/* ============================================================================ */
/* SECTION 3: INSERT statements                                                 */
/* ============================================================================ */

-- INSERT into club_member
-- set first_name = "Harrison",
-- last_name = "Kong",
-- phone_number = "9888080876"


/* ---- TASK 3 ---------------------------------------------------------------- */
/* Using the above example as a guide,                                          */
/* write an SQL statement to insert a new member into the table club_member     */
/* set first_name to "John", last_name to "Doe"                                 */
/* and phone_number to "9998887777"                                             */
/* ---------------------------------------------------------------------------- */

-- INSERT into club_member
-- set first_name = "John",
-- last_name = "Doe",
-- phone_number = "9988101196"


/* ============================================================================ */
/* SECTION 4: DELETE statements                                                 */
/* ============================================================================ */

-- DELETE from club_member
-- where first_name = "John"
-- AND last_name = "Doe"

/* ---- TASK 4 ---------------------------------------------------------------- */
/* Using the above example as a guide,                                          */
/* write an SQL statement to delete the row in the table club_member            */
/* if the phone_number is "9998887777"                                          */  
/* ---------------------------------------------------------------------------- */

-- DELETE from club_member
-- where phone_number = "9888080876"

/* ============================================================================ */
/* SECTION 5: Joining tables                                                    */
/* ============================================================================ */

-- select club_member.member_id, first_name,
-- last_name, description, amount , due_date
-- FROM club_member, invoice
-- where club_member.member_id = 
-- invoice.member_id


/* ---- TASK 5 ---------------------------------------------------------------- */
/* Using the above example as a guide,                                          */
/* write an SQL statement to:                                                   */
/*                                                                              */
/* 1. include these columns in your results:                                    */
/*    first_name, middle_name, last_name, professional_title, tier.description  */
/* 2. your columns will come from the tables club_member and tier               */
/* 3. linking the tier_code column of the table club_member                     */
/*    to the code column of the table tier                                      */                        
/* 4. sort the results by last_name                                             */
/* ---------------------------------------------------------------------------- */

SELECT first_name, middle_name, last_name,
professional_title, tier.description
From club_member, tier
where club_member.tier_code = tier.code
order by last_name






/* ============================================================================ */
/*                                                                              */
/* Congratulations, you have reached the end of the course!!                    */
/*                                                                              */
/* ============================================================================ */

