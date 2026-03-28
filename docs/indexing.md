SELECT * FROM Students WHERE LastName LIKE 'C%';

output is Showing rows 0 - 0 (1 total, Query took 0.0012 seconds.)

CREATE INDEX idx_lastname ON Students(LastName);
output is MySQL returned an empty result set (i.e. zero rows). (Query took 0.0008 seconds.)

What changed?
After I added the index, I ran the same query again. The execution time went from 0.0012 seconds to 0.0063 seconds. So it actually became slower, not faster.

When I created the index, it took 0.0008 seconds to build. The query before the index was 0.0012 seconds, which is already fast because I only have 10 students in my table.

Why faster?
In my case, it didn't get faster. It got slower because my table is too small.

I only have 10 students. When I search for last names starting with "C", MySQL can just scan all 10 rows quickly. But when I added an index, the database had to look at the index first, find the matching rows, then go to the actual table to get the data. That extra step made the query take longer.

If I had 10,000 students, the index would probably make it faster. But with only 10 rows, scanning everything is simpler and quicker.

 Why indexing is important?

Even though my test showed slower results, I still understand why indexing is useful.First, when companies have millions of customers or transactions, scanning every row would take forever, so indexes help find data instantly.Second, if an app lets users search for students by last name, having an index on that column makes the search respond quickly.Third, when generating reports that involve multiple tables, indexes speed up the joins between them so the reports don't take too long to load.Lastly, a database might start small but will grow over time, so adding indexes early prepares the system for when it becomes bigger and prevents performance problems later on. Overall, I learned that indexes are not always helpful for tiny tables, but they are very important for real-world applications with large amounts of data.



