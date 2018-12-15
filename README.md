<h1>Marios_Food_Products</h1>
<h2>Ruby: Week 4: Friday Test Project: Using Ruby on Rails develop a food product review and display site</h2>

<h3>Marios Food Product Website</h3>
Will show a listing of new products, product with the most reviews, allow for new review entry and edit, allow for new product entry and edit, display locally produced goods and sort.
By Daniel Burbach

<h3>Setup/Installation Requirements</h3>
<ul>
<li>Log in to GitHub</li>
<li>Copy this link to your clipboard (https://github.com/DanBurbach/Marios_Food_Products)</li>
<li>Clone GitHub URL in terminal</li></ul>

<ul>
If PSQL is installed, re-engage database using following commmands:
<li>- createdb Marios_Food_Products_development</li>
<li>- psql Marios_Food_Products_development < my_database.sql</li>
<li>- createdb Marios_Food_Products_test</li>
<li>- psql Marios_Food_Products_test < my_database_test.sql</li>
<li>- then type 'ruby app.rb' in your terminal. Then open your internet browser and type localhost:4567. You should now see the homepage.</li>
</ul>

<h3>Known Bugs</h3>
During test day there was issue of both databases being created, then having migration issues, and the end result of attempting to delete by dropping these databases only to have them not be recognized as being there (even though you could see them on the \l listing and could enter into them via psql).

Does not load up onto localhost:3000 (and therefore cannot be navigated through)

<h3>Future Planning</h3>
I would like to finish this project and I imagine the following being true when the project is completed:
<li>Home page loads correctly. Displaying a nav bar on the right side, a row for top reviewed products (3 of them), a row of new products (3 of them), and a navigation grid of the products by class or by type of product (vegitable, fruit, meat, cheese, grains, etc.)</li>
<li>A database holding all the information of said products AND the availability to look up, edit, create, and delete products.</li>
<li>A database holding all reviews. With the availablity to have the reviewer state their location and recommend products to them based on location.</li>
<li>Using CSS to "spice it up a little"</li>

<h3>Support and contact details</h3>
If you have any questions please contact Daniel Burbach via email: dburbach1982@gmail.com

<h3>Technologies Used</h3>
Github, Ruby 2.5.1, PostGres, Rails, and a Mac computer (more difficult with PostGres on a Windows PC)

<h3>License</h3>
Copyright (c) 2018, Daniel Burbach

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Copyright (c) 2018 Daniel Burbach
