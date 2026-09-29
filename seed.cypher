// Sample graph data will be added here.


MERGE (jk:Author {name: 'J.K. Rowling'})
MERGE (tolkien:Author {name: 'J.R.R. Tolkien'})
MERGE (lewis:Author {name: 'C.S. Lewis'})
MERGE (riordan:Author {name: 'Rick Riordan'})
MERGE (collins:Author {name: 'Suzanne Collins'})
MERGE (dashner:Author {name: 'James Dashner'})
MERGE (herbert:Author {name: 'Frank Herbert'})
MERGE (orwell:Author {name: 'George Orwell'})
MERGE (weir:Author {name: 'Andy Weir'})
MERGE (doyle:Author {name: 'Arthur Conan Doyle'})
MERGE (brown:Author {name: 'Dan Brown'})
MERGE (austen:Author {name: 'Jane Austen'})
MERGE (bronte:Author {name: 'Charlotte Bronte'})
MERGE (alcott:Author {name: 'Louisa May Alcott'})
MERGE (coelho:Author {name: 'Paulo Coelho'})
MERGE (zusak:Author {name: 'Markus Zusak'})
MERGE (fitzgerald:Author {name: 'F. Scott Fitzgerald'})
MERGE (lee:Author {name: 'Harper Lee'})
MERGE (green:Author {name: 'John Green'})
MERGE (fantasy:Genre {name: 'Fantasy'})
MERGE (mystery:Genre {name: 'Mystery'})
MERGE (scienceFiction:Genre {name: 'Science Fiction'})
MERGE (romance:Genre {name: 'Romance'})
MERGE (adventure:Genre {name: 'Adventure'})
MERGE (historicalFiction:Genre {name: 'Historical Fiction'})
MERGE (dystopian:Genre {name: 'Dystopian'})
MERGE (classic:Genre {name: 'Classic'})
MERGE (youngAdult:Genre {name: 'Young Adult'})
MERGE (magic:Topic {name: 'Magic'})
MERGE (friendship:Topic {name: 'Friendship'})
MERGE (quest:Topic {name: 'Quest'})
MERGE (mythology:Topic {name: 'Mythology'})
MERGE (survival:Topic {name: 'Survival'})
MERGE (rebellion:Topic {name: 'Rebellion'})
MERGE (space:Topic {name: 'Space'})
MERGE (technology:Topic {name: 'Technology'})
MERGE (detective:Topic {name: 'Detective'})
MERGE (conspiracy:Topic {name: 'Conspiracy'})
MERGE (love:Topic {name: 'Love'})
MERGE (family:Topic {name: 'Family'})
MERGE (war:Topic {name: 'War'})
MERGE (society:Topic {name: 'Society'})
MERGE (comingOfAge:Topic {name: 'Coming of Age'})
MERGE (justice:Topic {name: 'Justice'})
MERGE (death:Topic {name: 'Death'})
MERGE (selfDiscovery:Topic {name: 'Self Discovery'})
MERGE (harry:Book {title: "Harry Potter and the Philosopher's Stone"})
SET harry.year = 1997
MERGE (harry)-[:WRITTEN_BY]->(jk)
MERGE (harry)-[:HAS_GENRE]->(fantasy)
MERGE (harry)-[:HAS_TOPIC]->(magic)
MERGE (harry)-[:HAS_TOPIC]->(friendship)
MERGE (hobbit:Book {title: 'The Hobbit'})
SET hobbit.year = 1937
MERGE (hobbit)-[:WRITTEN_BY]->(tolkien)
MERGE (hobbit)-[:HAS_GENRE]->(fantasy)
MERGE (hobbit)-[:HAS_GENRE]->(adventure)
MERGE (hobbit)-[:HAS_TOPIC]->(quest)
MERGE (hobbit)-[:HAS_TOPIC]->(friendship)
MERGE (lotr:Book {title: 'The Lord of the Rings'})
SET lotr.year = 1954
MERGE (lotr)-[:WRITTEN_BY]->(tolkien)
MERGE (lotr)-[:HAS_GENRE]->(fantasy)
MERGE (lotr)-[:HAS_GENRE]->(adventure)
MERGE (lotr)-[:HAS_TOPIC]->(quest)
MERGE (lotr)-[:HAS_TOPIC]->(rebellion)
MERGE (narnia:Book {title: 'The Chronicles of Narnia'})
SET narnia.year = 1950
MERGE (narnia)-[:WRITTEN_BY]->(lewis)
MERGE (narnia)-[:HAS_GENRE]->(fantasy)
MERGE (narnia)-[:HAS_GENRE]->(adventure)
MERGE (narnia)-[:HAS_TOPIC]->(magic)
MERGE (narnia)-[:HAS_TOPIC]->(quest)
MERGE (percy:Book {title: 'Percy Jackson and the Lightning Thief'})
SET percy.year = 2005
MERGE (percy)-[:WRITTEN_BY]->(riordan)
MERGE (percy)-[:HAS_GENRE]->(fantasy)
MERGE (percy)-[:HAS_GENRE]->(youngAdult)
MERGE (percy)-[:HAS_TOPIC]->(mythology)
MERGE (percy)-[:HAS_TOPIC]->(quest)
MERGE (hungerGames:Book {title: 'The Hunger Games'})
SET hungerGames.year = 2008
MERGE (hungerGames)-[:WRITTEN_BY]->(collins)
MERGE (hungerGames)-[:HAS_GENRE]->(dystopian)
MERGE (hungerGames)-[:HAS_GENRE]->(youngAdult)
MERGE (hungerGames)-[:HAS_TOPIC]->(survival)
MERGE (hungerGames)-[:HAS_TOPIC]->(rebellion)
MERGE (mazeRunner:Book {title: 'The Maze Runner'})
SET mazeRunner.year = 2009
MERGE (mazeRunner)-[:WRITTEN_BY]->(dashner)
MERGE (mazeRunner)-[:HAS_GENRE]->(dystopian)
MERGE (mazeRunner)-[:HAS_GENRE]->(youngAdult)
MERGE (mazeRunner)-[:HAS_TOPIC]->(survival)
MERGE (mazeRunner)-[:HAS_TOPIC]->(technology)
MERGE (dune:Book {title: 'Dune'})
SET dune.year = 1965
MERGE (dune)-[:WRITTEN_BY]->(herbert)
MERGE (dune)-[:HAS_GENRE]->(scienceFiction)
MERGE (dune)-[:HAS_GENRE]->(adventure)
MERGE (dune)-[:HAS_TOPIC]->(space)
MERGE (dune)-[:HAS_TOPIC]->(rebellion)
MERGE (nineteenEightyFour:Book {title: '1984'})
SET nineteenEightyFour.year = 1949
MERGE (nineteenEightyFour)-[:WRITTEN_BY]->(orwell)
MERGE (nineteenEightyFour)-[:HAS_GENRE]->(dystopian)
MERGE (nineteenEightyFour)-[:HAS_GENRE]->(scienceFiction)
MERGE (nineteenEightyFour)-[:HAS_TOPIC]->(society)
MERGE (nineteenEightyFour)-[:HAS_TOPIC]->(technology)
MERGE (martian:Book {title: 'The Martian'})
SET martian.year = 2011
MERGE (martian)-[:WRITTEN_BY]->(weir)
MERGE (martian)-[:HAS_GENRE]->(scienceFiction)
MERGE (martian)-[:HAS_GENRE]->(adventure)
MERGE (martian)-[:HAS_TOPIC]->(space)
MERGE (martian)-[:HAS_TOPIC]->(survival)
MERGE (sherlock:Book {title: 'Sherlock Holmes'})
SET sherlock.year = 1887
MERGE (sherlock)-[:WRITTEN_BY]->(doyle)
MERGE (sherlock)-[:HAS_GENRE]->(mystery)
MERGE (sherlock)-[:HAS_GENRE]->(classic)
MERGE (sherlock)-[:HAS_TOPIC]->(detective)
MERGE (sherlock)-[:HAS_TOPIC]->(justice)
MERGE (daVinci:Book {title: 'The Da Vinci Code'})
SET daVinci.year = 2003
MERGE (daVinci)-[:WRITTEN_BY]->(brown)
MERGE (daVinci)-[:HAS_GENRE]->(mystery)
MERGE (daVinci)-[:HAS_GENRE]->(adventure)
MERGE (daVinci)-[:HAS_TOPIC]->(conspiracy)
MERGE (daVinci)-[:HAS_TOPIC]->(detective)
MERGE (pride:Book {title: 'Pride and Prejudice'})
SET pride.year = 1813
MERGE (pride)-[:WRITTEN_BY]->(austen)
MERGE (pride)-[:HAS_GENRE]->(romance)
MERGE (pride)-[:HAS_GENRE]->(classic)
MERGE (pride)-[:HAS_TOPIC]->(love)
MERGE (pride)-[:HAS_TOPIC]->(society)
MERGE (janeEyre:Book {title: 'Jane Eyre'})
SET janeEyre.year = 1847
MERGE (janeEyre)-[:WRITTEN_BY]->(bronte)
MERGE (janeEyre)-[:HAS_GENRE]->(romance)
MERGE (janeEyre)-[:HAS_GENRE]->(classic)
MERGE (janeEyre)-[:HAS_TOPIC]->(love)
MERGE (janeEyre)-[:HAS_TOPIC]->(comingOfAge)
MERGE (littleWomen:Book {title: 'Little Women'})
SET littleWomen.year = 1868
MERGE (littleWomen)-[:WRITTEN_BY]->(alcott)
MERGE (littleWomen)-[:HAS_GENRE]->(historicalFiction)
MERGE (littleWomen)-[:HAS_GENRE]->(classic)
MERGE (littleWomen)-[:HAS_TOPIC]->(family)
MERGE (littleWomen)-[:HAS_TOPIC]->(comingOfAge)
MERGE (alchemist:Book {title: 'The Alchemist'})
SET alchemist.year = 1988
MERGE (alchemist)-[:WRITTEN_BY]->(coelho)
MERGE (alchemist)-[:HAS_GENRE]->(fantasy)
MERGE (alchemist)-[:HAS_GENRE]->(adventure)
MERGE (alchemist)-[:HAS_TOPIC]->(quest)
MERGE (alchemist)-[:HAS_TOPIC]->(selfDiscovery)
MERGE (bookThief:Book {title: 'The Book Thief'})
SET bookThief.year = 2005
MERGE (bookThief)-[:WRITTEN_BY]->(zusak)
MERGE (bookThief)-[:HAS_GENRE]->(historicalFiction)
MERGE (bookThief)-[:HAS_TOPIC]->(war)
MERGE (bookThief)-[:HAS_TOPIC]->(death)
MERGE (gatsby:Book {title: 'The Great Gatsby'})
SET gatsby.year = 1925
MERGE (gatsby)-[:WRITTEN_BY]->(fitzgerald)
MERGE (gatsby)-[:HAS_GENRE]->(classic)
MERGE (gatsby)-[:HAS_GENRE]->(romance)
MERGE (gatsby)-[:HAS_TOPIC]->(love)
MERGE (gatsby)-[:HAS_TOPIC]->(society)
MERGE (mockingbird:Book {title: 'To Kill a Mockingbird'})
SET mockingbird.year = 1960
MERGE (mockingbird)-[:WRITTEN_BY]->(lee)
MERGE (mockingbird)-[:HAS_GENRE]->(historicalFiction)
MERGE (mockingbird)-[:HAS_GENRE]->(classic)
MERGE (mockingbird)-[:HAS_TOPIC]->(justice)
MERGE (mockingbird)-[:HAS_TOPIC]->(comingOfAge)
MERGE (fault:Book {title: 'The Fault in Our Stars'})
SET fault.year = 2012
MERGE (fault)-[:WRITTEN_BY]->(green)
MERGE (fault)-[:HAS_GENRE]->(romance)
MERGE (fault)-[:HAS_GENRE]->(youngAdult)
MERGE (fault)-[:HAS_TOPIC]->(love)
MERGE (fault)-[:HAS_TOPIC]->(death)

// ===================================================
// STAGE 1 ENRICHMENT: METADATA FOR ORIGINAL 20 BOOKS
// ===================================================

MERGE (b:Book {title: 'Harry Potter and the Philosopher\'s Stone'})
ON MATCH SET b.year = coalesce(b.year, 1997), b.isbn = coalesce(b.isbn, '0939173344'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 302), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/15155833-M.jpg'), b.rating = coalesce(b.rating, 4.22), b.ratingCount = coalesce(b.ratingCount, 1033);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Harry Potter and the Philosopher\'s Stone'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Valley View, Pottermore'})
MERGE (b:Book {title: 'Harry Potter and the Philosopher\'s Stone'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'The Hobbit'})
ON MATCH SET b.year = coalesce(b.year, 1937), b.isbn = coalesce(b.isbn, '9780563528807'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 310), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14627509-M.jpg'), b.rating = coalesce(b.rating, 4.29), b.ratingCount = coalesce(b.ratingCount, 500);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Hobbit'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Ballantine, 1973'})
MERGE (b:Book {title: 'The Hobbit'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'The Lord of the Rings'})
ON MATCH SET b.year = coalesce(b.year, 1954), b.isbn = coalesce(b.isbn, '4566023621'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 1193), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14625765-M.jpg'), b.rating = coalesce(b.rating, 4.45), b.ratingCount = coalesce(b.ratingCount, 118);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Lord of the Rings'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'HarperCollins Publishers'})
MERGE (b:Book {title: 'The Lord of the Rings'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'The Chronicles of Narnia'})
ON MATCH SET b.year = coalesce(b.year, 1970), b.isbn = coalesce(b.isbn, '0007528094'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 768), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/9321656-M.jpg'), b.rating = coalesce(b.rating, 4.2), b.ratingCount = coalesce(b.ratingCount, 86);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Chronicles of Narnia'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Collins'})
MERGE (b:Book {title: 'The Chronicles of Narnia'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'Percy Jackson and the Lightning Thief'})
ON MATCH SET b.year = coalesce(b.year, 2005), b.isbn = coalesce(b.isbn, '9780141319131'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 384), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/7239831-M.jpg'), b.rating = coalesce(b.rating, 4.29), b.ratingCount = coalesce(b.ratingCount, 415);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Percy Jackson and the Lightning Thief'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'NXB Văn học'})
MERGE (b:Book {title: 'Percy Jackson and the Lightning Thief'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'The Hunger Games'})
ON MATCH SET b.year = coalesce(b.year, 2008), b.isbn = coalesce(b.isbn, '9781407157863'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 397), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/12646537-M.jpg'), b.rating = coalesce(b.rating, 4.13), b.ratingCount = coalesce(b.ratingCount, 558);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Hunger Games'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Lectorum Publications, Incorporated'})
MERGE (b:Book {title: 'The Hunger Games'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'The Maze Runner'})
ON MATCH SET b.year = coalesce(b.year, 2009), b.isbn = coalesce(b.isbn, '9780385737944'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 375), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/10464801-M.jpg'), b.rating = coalesce(b.rating, 4.0), b.ratingCount = coalesce(b.ratingCount, 160);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Maze Runner'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Chicken House Ltd'})
MERGE (b:Book {title: 'The Maze Runner'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'Dune'})
ON MATCH SET b.year = coalesce(b.year, 1965), b.isbn = coalesce(b.isbn, '9780441013593'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 608), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/11481354-M.jpg'), b.rating = coalesce(b.rating, 4.3), b.ratingCount = coalesce(b.ratingCount, 446);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Dune'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Dom Wydawniczy REBIS Sp. z o.o.'})
MERGE (b:Book {title: 'Dune'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: '1984'})
ON MATCH SET b.year = coalesce(b.year, 2003), b.isbn = coalesce(b.isbn, '0582777313'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 72), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8745958-M.jpg'), b.rating = coalesce(b.rating, 4.67), b.ratingCount = coalesce(b.ratingCount, 15);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: '1984'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Pearson Education'})
MERGE (b:Book {title: '1984'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'The Martian'})
ON MATCH SET b.year = coalesce(b.year, 2011), b.isbn = coalesce(b.isbn, '9789045210841'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 407), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/11447888-M.jpg'), b.rating = coalesce(b.rating, 4.4), b.ratingCount = coalesce(b.ratingCount, 337);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Martian'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'DreamLitt'})
MERGE (b:Book {title: 'The Martian'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'Sherlock Holmes'})
ON MATCH SET b.year = coalesce(b.year, 1892), b.isbn = coalesce(b.isbn, '9781719901550'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 309), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/6717853-M.jpg'), b.rating = coalesce(b.rating, 4.16), b.ratingCount = coalesce(b.ratingCount, 171);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Sherlock Holmes'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Ulan Press'})
MERGE (b:Book {title: 'Sherlock Holmes'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'The Da Vinci Code'})
ON MATCH SET b.year = coalesce(b.year, 2003), b.isbn = coalesce(b.isbn, '8417031235'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 489), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/9255229-M.jpg'), b.rating = coalesce(b.rating, 3.92), b.ratingCount = coalesce(b.ratingCount, 193);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Da Vinci Code'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Planeta'})
MERGE (b:Book {title: 'The Da Vinci Code'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'Pride and Prejudice'})
ON MATCH SET b.year = coalesce(b.year, 1813), b.isbn = coalesce(b.isbn, '9798706361303'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 351), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14348537-M.jpg'), b.rating = coalesce(b.rating, 4.21), b.ratingCount = coalesce(b.ratingCount, 407);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Pride and Prejudice'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'IndyPublish.com'})
MERGE (b:Book {title: 'Pride and Prejudice'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'Jane Eyre'})
ON MATCH SET b.year = coalesce(b.year, 1847), b.isbn = coalesce(b.isbn, '9798509527777'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 480), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8235363-M.jpg'), b.rating = coalesce(b.rating, 4.03), b.ratingCount = coalesce(b.ratingCount, 183);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Jane Eyre'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Canterbury Classics'})
MERGE (b:Book {title: 'Jane Eyre'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'Little Women'})
ON MATCH SET b.year = coalesce(b.year, 1848), b.isbn = coalesce(b.isbn, '1537611453'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 423), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8775559-M.jpg'), b.rating = coalesce(b.rating, 4.05), b.ratingCount = coalesce(b.ratingCount, 125);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Little Women'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'the thames publishing'})
MERGE (b:Book {title: 'Little Women'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'The Alchemist'})
ON MATCH SET b.year = coalesce(b.year, 2010), b.isbn = coalesce(b.isbn, '9780007423200'), b.language = coalesce(b.language, 'English'), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/11556106-M.jpg'), b.rating = coalesce(b.rating, 4.0), b.ratingCount = coalesce(b.ratingCount, 5);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Alchemist'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'HarperOne'})
MERGE (b:Book {title: 'The Alchemist'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'The Book Thief'})
ON MATCH SET b.year = coalesce(b.year, 1998), b.isbn = coalesce(b.isbn, '9780385611466'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 560), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8153054-M.jpg'), b.rating = coalesce(b.rating, 4.16), b.ratingCount = coalesce(b.ratingCount, 145);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Book Thief'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Nan hai chu ban she'})
MERGE (b:Book {title: 'The Book Thief'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'The Great Gatsby'})
ON MATCH SET b.year = coalesce(b.year, 1920), b.isbn = coalesce(b.isbn, '8490628645'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 185), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/10590366-M.jpg'), b.rating = coalesce(b.rating, 3.99), b.ratingCount = coalesce(b.ratingCount, 246);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Great Gatsby'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Ren Kitap'})
MERGE (b:Book {title: 'The Great Gatsby'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'To Kill a Mockingbird'})
ON MATCH SET b.year = coalesce(b.year, 1960), b.isbn = coalesce(b.isbn, '1473549655'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 320), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14351077-M.jpg'), b.rating = coalesce(b.rating, 4.13), b.ratingCount = coalesce(b.ratingCount, 270);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'To Kill a Mockingbird'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'HarperCollins Publishers'})
MERGE (b:Book {title: 'To Kill a Mockingbird'})-[:PUBLISHED_BY]->(pub);

MERGE (b:Book {title: 'The Fault in Our Stars'})
ON MATCH SET b.year = coalesce(b.year, 2010), b.isbn = coalesce(b.isbn, '1627653627'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 318), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/7418786-M.jpg'), b.rating = coalesce(b.rating, 4.21), b.ratingCount = coalesce(b.ratingCount, 223);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Fault in Our Stars'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Knopf Doubleday Publishing Group'})
MERGE (b:Book {title: 'The Fault in Our Stars'})-[:PUBLISHED_BY]->(pub);

// ===================================================
// STAGE 1 EXPANSION: NEW CATALOGUE BOOKS (OPEN LIBRARY)
// ===================================================

// Book 1: Harry Potter and the Chamber of Secrets
MERGE (b:Book {title: 'Harry Potter and the Chamber of Secrets'})
ON CREATE SET b.year = 1998, b.isbn = '0439064872', b.language = 'English', b.pageCount = 339, b.coverUrl = 'https://covers.openlibrary.org/b/id/15158664-M.jpg', b.rating = 4.18, b.ratingCount = 461
ON MATCH SET b.year = coalesce(b.year, 1998), b.isbn = coalesce(b.isbn, '0439064872'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 339), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/15158664-M.jpg'), b.rating = coalesce(b.rating, 4.18), b.ratingCount = coalesce(b.ratingCount, 461);
MERGE (a:Author {name: 'J. K. Rowling'})
MERGE (b:Book {title: 'Harry Potter and the Chamber of Secrets'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Harry Potter and the Chamber of Secrets'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Carlsen Verlag Gmbtl'})
MERGE (b:Book {title: 'Harry Potter and the Chamber of Secrets'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Harry Potter and the Chamber of Secrets'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Harry Potter and the Chamber of Secrets'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Family'})
MERGE (b:Book {title: 'Harry Potter and the Chamber of Secrets'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'Harry Potter and the Chamber of Secrets'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'Harry Potter and the Chamber of Secrets'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Harry Potter and the Chamber of Secrets'})-[:HAS_TOPIC]->(t);

// Book 2: Harry Potter and the Prisoner of Azkaban
MERGE (b:Book {title: 'Harry Potter and the Prisoner of Azkaban'})
ON CREATE SET b.year = 1999, b.isbn = '1439520615', b.language = 'English', b.pageCount = 416, b.coverUrl = 'https://covers.openlibrary.org/b/id/10580435-M.jpg', b.rating = 4.24, b.ratingCount = 639
ON MATCH SET b.year = coalesce(b.year, 1999), b.isbn = coalesce(b.isbn, '1439520615'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 416), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/10580435-M.jpg'), b.rating = coalesce(b.rating, 4.24), b.ratingCount = coalesce(b.ratingCount, 639);
MERGE (a:Author {name: 'J. K. Rowling'})
MERGE (b:Book {title: 'Harry Potter and the Prisoner of Azkaban'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Harry Potter and the Prisoner of Azkaban'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Moonhak Soochup Publishing'})
MERGE (b:Book {title: 'Harry Potter and the Prisoner of Azkaban'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Harry Potter and the Prisoner of Azkaban'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Harry Potter and the Prisoner of Azkaban'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Harry Potter and the Prisoner of Azkaban'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Family'})
MERGE (b:Book {title: 'Harry Potter and the Prisoner of Azkaban'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'Harry Potter and the Prisoner of Azkaban'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'Harry Potter and the Prisoner of Azkaban'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Harry Potter and the Prisoner of Azkaban'})-[:HAS_TOPIC]->(t);

// Book 3: Harry Potter and the Goblet of Fire
MERGE (b:Book {title: 'Harry Potter and the Goblet of Fire'})
ON CREATE SET b.year = 2000, b.isbn = '8498380154', b.language = 'English', b.pageCount = 672, b.coverUrl = 'https://covers.openlibrary.org/b/id/12059372-M.jpg', b.rating = 4.24, b.ratingCount = 352
ON MATCH SET b.year = coalesce(b.year, 2000), b.isbn = coalesce(b.isbn, '8498380154'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 672), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/12059372-M.jpg'), b.rating = coalesce(b.rating, 4.24), b.ratingCount = coalesce(b.ratingCount, 352);
MERGE (a:Author {name: 'J. K. Rowling'})
MERGE (b:Book {title: 'Harry Potter and the Goblet of Fire'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Harry Potter and the Goblet of Fire'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Lectorum Publications'})
MERGE (b:Book {title: 'Harry Potter and the Goblet of Fire'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Harry Potter and the Goblet of Fire'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Harry Potter and the Goblet of Fire'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Family'})
MERGE (b:Book {title: 'Harry Potter and the Goblet of Fire'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'Harry Potter and the Goblet of Fire'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'Harry Potter and the Goblet of Fire'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Harry Potter and the Goblet of Fire'})-[:HAS_TOPIC]->(t);

// Book 4: Harry Potter and the Order of the Phoenix
MERGE (b:Book {title: 'Harry Potter and the Order of the Phoenix'})
ON CREATE SET b.year = 2003, b.isbn = '9780807220313', b.language = 'English', b.pageCount = 870, b.coverUrl = 'https://covers.openlibrary.org/b/id/15158666-M.jpg', b.rating = 4.23, b.ratingCount = 317
ON MATCH SET b.year = coalesce(b.year, 2003), b.isbn = coalesce(b.isbn, '9780807220313'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 870), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/15158666-M.jpg'), b.rating = coalesce(b.rating, 4.23), b.ratingCount = coalesce(b.ratingCount, 317);
MERGE (a:Author {name: 'J. K. Rowling'})
MERGE (b:Book {title: 'Harry Potter and the Order of the Phoenix'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Harry Potter and the Order of the Phoenix'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'BLOOMSBURY PUBLISHING'})
MERGE (b:Book {title: 'Harry Potter and the Order of the Phoenix'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Harry Potter and the Order of the Phoenix'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Harry Potter and the Order of the Phoenix'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Coming of Age'})
MERGE (b:Book {title: 'Harry Potter and the Order of the Phoenix'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Family'})
MERGE (b:Book {title: 'Harry Potter and the Order of the Phoenix'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'Harry Potter and the Order of the Phoenix'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'Harry Potter and the Order of the Phoenix'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Harry Potter and the Order of the Phoenix'})-[:HAS_TOPIC]->(t);

// Book 5: Harry Potter and the Half-Blood Prince
MERGE (b:Book {title: 'Harry Potter and the Half-Blood Prince'})
ON CREATE SET b.year = 2005, b.isbn = '8478889906', b.language = 'English', b.pageCount = 640, b.coverUrl = 'https://covers.openlibrary.org/b/id/10716273-M.jpg', b.rating = 4.36, b.ratingCount = 213
ON MATCH SET b.year = coalesce(b.year, 2005), b.isbn = coalesce(b.isbn, '8478889906'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 640), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/10716273-M.jpg'), b.rating = coalesce(b.rating, 4.36), b.ratingCount = coalesce(b.ratingCount, 213);
MERGE (a:Author {name: 'J. K. Rowling'})
MERGE (b:Book {title: 'Harry Potter and the Half-Blood Prince'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Harry Potter and the Half-Blood Prince'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Nahdetmisr Publishing'})
MERGE (b:Book {title: 'Harry Potter and the Half-Blood Prince'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Harry Potter and the Half-Blood Prince'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Harry Potter and the Half-Blood Prince'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'Harry Potter and the Half-Blood Prince'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Coming of Age'})
MERGE (b:Book {title: 'Harry Potter and the Half-Blood Prince'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'Harry Potter and the Half-Blood Prince'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Family'})
MERGE (b:Book {title: 'Harry Potter and the Half-Blood Prince'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'Harry Potter and the Half-Blood Prince'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'Harry Potter and the Half-Blood Prince'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Harry Potter and the Half-Blood Prince'})-[:HAS_TOPIC]->(t);

// Book 6: Harry Potter and the Deathly Hallows
MERGE (b:Book {title: 'Harry Potter and the Deathly Hallows'})
ON CREATE SET b.year = 2007, b.isbn = '9781408869178', b.language = 'English', b.pageCount = 701, b.coverUrl = 'https://covers.openlibrary.org/b/id/15158660-M.jpg', b.rating = 4.26, b.ratingCount = 414
ON MATCH SET b.year = coalesce(b.year, 2007), b.isbn = coalesce(b.isbn, '9781408869178'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 701), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/15158660-M.jpg'), b.rating = coalesce(b.rating, 4.26), b.ratingCount = coalesce(b.ratingCount, 414);
MERGE (a:Author {name: 'J. K. Rowling'})
MERGE (b:Book {title: 'Harry Potter and the Deathly Hallows'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Harry Potter and the Deathly Hallows'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Makhaon'})
MERGE (b:Book {title: 'Harry Potter and the Deathly Hallows'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Harry Potter and the Deathly Hallows'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Harry Potter and the Deathly Hallows'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'Harry Potter and the Deathly Hallows'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'Harry Potter and the Deathly Hallows'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Coming of Age'})
MERGE (b:Book {title: 'Harry Potter and the Deathly Hallows'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Death'})
MERGE (b:Book {title: 'Harry Potter and the Deathly Hallows'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Family'})
MERGE (b:Book {title: 'Harry Potter and the Deathly Hallows'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'Harry Potter and the Deathly Hallows'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'Harry Potter and the Deathly Hallows'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Harry Potter and the Deathly Hallows'})-[:HAS_TOPIC]->(t);

// Book 7: The Silmarillion
MERGE (b:Book {title: 'The Silmarillion'})
ON CREATE SET b.year = 1977, b.isbn = '0618391118', b.language = 'English', b.pageCount = 424, b.coverUrl = 'https://covers.openlibrary.org/b/id/14627042-M.jpg', b.rating = 3.95, b.ratingCount = 121
ON MATCH SET b.year = coalesce(b.year, 1977), b.isbn = coalesce(b.isbn, '0618391118'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 424), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14627042-M.jpg'), b.rating = coalesce(b.rating, 3.95), b.ratingCount = coalesce(b.ratingCount, 121);
MERGE (a:Author {name: 'J.R.R. Tolkien'})
MERGE (b:Book {title: 'The Silmarillion'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Silmarillion'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Ballantine Books'})
MERGE (b:Book {title: 'The Silmarillion'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Silmarillion'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Silmarillion'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Mythology'})
MERGE (b:Book {title: 'The Silmarillion'})-[:HAS_TOPIC]->(t);

// Book 8: The Fellowship of the Ring
MERGE (b:Book {title: 'The Fellowship of the Ring'})
ON CREATE SET b.year = 1954, b.isbn = '8533613377', b.language = 'English', b.pageCount = 492, b.coverUrl = 'https://covers.openlibrary.org/b/id/14627060-M.jpg', b.rating = 4.34, b.ratingCount = 404
ON MATCH SET b.year = coalesce(b.year, 1954), b.isbn = coalesce(b.isbn, '8533613377'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 492), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14627060-M.jpg'), b.rating = coalesce(b.rating, 4.34), b.ratingCount = coalesce(b.ratingCount, 404);
MERGE (a:Author {name: 'J.R.R. Tolkien'})
MERGE (b:Book {title: 'The Fellowship of the Ring'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Fellowship of the Ring'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Zemorah-Bitan'})
MERGE (b:Book {title: 'The Fellowship of the Ring'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Fellowship of the Ring'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Fellowship of the Ring'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Fellowship of the Ring'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'The Fellowship of the Ring'})-[:HAS_TOPIC]->(t);

// Book 9: The Two Towers
MERGE (b:Book {title: 'The Two Towers'})
ON CREATE SET b.year = 1954, b.isbn = '0345008634', b.language = 'English', b.pageCount = 434, b.coverUrl = 'https://covers.openlibrary.org/b/id/14627564-M.jpg', b.rating = 4.35, b.ratingCount = 233
ON MATCH SET b.year = coalesce(b.year, 1954), b.isbn = coalesce(b.isbn, '0345008634'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 434), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14627564-M.jpg'), b.rating = coalesce(b.rating, 4.35), b.ratingCount = coalesce(b.ratingCount, 233);
MERGE (a:Author {name: 'J.R.R. Tolkien'})
MERGE (b:Book {title: 'The Two Towers'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Two Towers'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Ballantine Books, New York'})
MERGE (b:Book {title: 'The Two Towers'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Two Towers'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Two Towers'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'The Two Towers'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Mythology'})
MERGE (b:Book {title: 'The Two Towers'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Quest'})
MERGE (b:Book {title: 'The Two Towers'})-[:HAS_TOPIC]->(t);

// Book 10: The Return of the King
MERGE (b:Book {title: 'The Return of the King'})
ON CREATE SET b.year = 1950, b.isbn = '054792819X', b.language = 'English', b.pageCount = 495, b.coverUrl = 'https://covers.openlibrary.org/b/id/14627062-M.jpg', b.rating = 4.45, b.ratingCount = 107
ON MATCH SET b.year = coalesce(b.year, 1950), b.isbn = coalesce(b.isbn, '054792819X'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 495), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14627062-M.jpg'), b.rating = coalesce(b.rating, 4.45), b.ratingCount = coalesce(b.ratingCount, 107);
MERGE (a:Author {name: 'J.R.R. Tolkien'})
MERGE (b:Book {title: 'The Return of the King'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Return of the King'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Ballantine Books, New York'})
MERGE (b:Book {title: 'The Return of the King'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Return of the King'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Return of the King'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'The Return of the King'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Quest'})
MERGE (b:Book {title: 'The Return of the King'})-[:HAS_TOPIC]->(t);

// Book 11: The Lion, the Witch and the Wardrobe
MERGE (b:Book {title: 'The Lion, the Witch and the Wardrobe'})
ON CREATE SET b.year = 1950, b.isbn = '9780007115617', b.language = 'English', b.pageCount = 186, b.coverUrl = 'https://covers.openlibrary.org/b/id/8441376-M.jpg', b.rating = 4.13, b.ratingCount = 121
ON MATCH SET b.year = coalesce(b.year, 1950), b.isbn = coalesce(b.isbn, '9780007115617'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 186), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8441376-M.jpg'), b.rating = coalesce(b.rating, 4.13), b.ratingCount = coalesce(b.ratingCount, 121);
MERGE (a:Author {name: 'C. S. Lewis'})
MERGE (b:Book {title: 'The Lion, the Witch and the Wardrobe'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Lion, the Witch and the Wardrobe'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'HarperCollins Narnia'})
MERGE (b:Book {title: 'The Lion, the Witch and the Wardrobe'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Lion, the Witch and the Wardrobe'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'The Lion, the Witch and the Wardrobe'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Lion, the Witch and the Wardrobe'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'The Lion, the Witch and the Wardrobe'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'The Lion, the Witch and the Wardrobe'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'The Lion, the Witch and the Wardrobe'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'The Lion, the Witch and the Wardrobe'})-[:HAS_TOPIC]->(t);

// Book 12: Prince Caspian
MERGE (b:Book {title: 'Prince Caspian'})
ON CREATE SET b.year = 1951, b.isbn = '9780061227646', b.language = 'English', b.pageCount = 216, b.coverUrl = 'https://covers.openlibrary.org/b/id/45897-M.jpg', b.rating = 3.93, b.ratingCount = 98
ON MATCH SET b.year = coalesce(b.year, 1951), b.isbn = coalesce(b.isbn, '9780061227646'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 216), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/45897-M.jpg'), b.rating = coalesce(b.rating, 3.93), b.ratingCount = coalesce(b.ratingCount, 98);
MERGE (a:Author {name: 'C. S. Lewis'})
MERGE (b:Book {title: 'Prince Caspian'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Prince Caspian'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'HarperCollins Publishers'})
MERGE (b:Book {title: 'Prince Caspian'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Prince Caspian'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Prince Caspian'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'Prince Caspian'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Quest'})
MERGE (b:Book {title: 'Prince Caspian'})-[:HAS_TOPIC]->(t);

// Book 13: The Voyage of the Dawn Treader
MERGE (b:Book {title: 'The Voyage of the Dawn Treader'})
ON CREATE SET b.year = 1952, b.isbn = '9781589972964', b.language = 'English', b.pageCount = 228, b.coverUrl = 'https://covers.openlibrary.org/b/id/9184719-M.jpg', b.rating = 4.1, b.ratingCount = 108
ON MATCH SET b.year = coalesce(b.year, 1952), b.isbn = coalesce(b.isbn, '9781589972964'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 228), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/9184719-M.jpg'), b.rating = coalesce(b.rating, 4.1), b.ratingCount = coalesce(b.ratingCount, 108);
MERGE (a:Author {name: 'C. S. Lewis'})
MERGE (b:Book {title: 'The Voyage of the Dawn Treader'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Voyage of the Dawn Treader'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'HarperCollins Publishers'})
MERGE (b:Book {title: 'The Voyage of the Dawn Treader'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Voyage of the Dawn Treader'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Voyage of the Dawn Treader'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Voyage of the Dawn Treader'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'The Voyage of the Dawn Treader'})-[:HAS_TOPIC]->(t);

// Book 14: The Magician's Nephew
MERGE (b:Book {title: 'The Magician\'s Nephew'})
ON CREATE SET b.year = 1955, b.isbn = '0060595019', b.language = 'English', b.pageCount = 186, b.coverUrl = 'https://covers.openlibrary.org/b/id/1072931-M.jpg', b.rating = 4.02, b.ratingCount = 108
ON MATCH SET b.year = coalesce(b.year, 1955), b.isbn = coalesce(b.isbn, '0060595019'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 186), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/1072931-M.jpg'), b.rating = coalesce(b.rating, 4.02), b.ratingCount = coalesce(b.ratingCount, 108);
MERGE (a:Author {name: 'C. S. Lewis'})
MERGE (b:Book {title: 'The Magician\'s Nephew'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Magician\'s Nephew'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Longmans, Green & Co.'})
MERGE (b:Book {title: 'The Magician\'s Nephew'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Magician\'s Nephew'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Magician\'s Nephew'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Romance'})
MERGE (b:Book {title: 'The Magician\'s Nephew'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'The Magician\'s Nephew'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Magician\'s Nephew'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'The Magician\'s Nephew'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'The Magician\'s Nephew'})-[:HAS_TOPIC]->(t);

// Book 15: The Sea of Monsters
MERGE (b:Book {title: 'The Sea of Monsters'})
ON CREATE SET b.year = 2005, b.isbn = '0606265007', b.language = 'English', b.pageCount = 282, b.coverUrl = 'https://covers.openlibrary.org/b/id/108909-M.jpg', b.rating = 4.46, b.ratingCount = 188
ON MATCH SET b.year = coalesce(b.year, 2005), b.isbn = coalesce(b.isbn, '0606265007'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 282), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/108909-M.jpg'), b.rating = coalesce(b.rating, 4.46), b.ratingCount = coalesce(b.ratingCount, 188);
MERGE (a:Author {name: 'Rick Riordan'})
MERGE (b:Book {title: 'The Sea of Monsters'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Sea of Monsters'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Miramax Books/Hyperion Paperbacks for Children'})
MERGE (b:Book {title: 'The Sea of Monsters'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Sea of Monsters'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Sea of Monsters'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Sea of Monsters'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'The Sea of Monsters'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Mythology'})
MERGE (b:Book {title: 'The Sea of Monsters'})-[:HAS_TOPIC]->(t);

// Book 16: The Titan's Curse
MERGE (b:Book {title: 'The Titan\'s Curse'})
ON CREATE SET b.year = 2007, b.isbn = '0545057043', b.language = 'English', b.pageCount = 320, b.coverUrl = 'https://covers.openlibrary.org/b/id/14601475-M.jpg', b.rating = 4.47, b.ratingCount = 155
ON MATCH SET b.year = coalesce(b.year, 2007), b.isbn = coalesce(b.isbn, '0545057043'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 320), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14601475-M.jpg'), b.rating = coalesce(b.rating, 4.47), b.ratingCount = coalesce(b.ratingCount, 155);
MERGE (a:Author {name: 'Rick Riordan'})
MERGE (b:Book {title: 'The Titan\'s Curse'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Titan\'s Curse'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'disney'})
MERGE (b:Book {title: 'The Titan\'s Curse'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Titan\'s Curse'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Titan\'s Curse'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'The Titan\'s Curse'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Mythology'})
MERGE (b:Book {title: 'The Titan\'s Curse'})-[:HAS_TOPIC]->(t);

// Book 17: The Battle of the Labyrinth
MERGE (b:Book {title: 'The Battle of the Labyrinth'})
ON CREATE SET b.year = 2005, b.isbn = '9781484458945', b.language = 'English', b.pageCount = 367, b.coverUrl = 'https://covers.openlibrary.org/b/id/6274739-M.jpg', b.rating = 4.42, b.ratingCount = 139
ON MATCH SET b.year = coalesce(b.year, 2005), b.isbn = coalesce(b.isbn, '9781484458945'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 367), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/6274739-M.jpg'), b.rating = coalesce(b.rating, 4.42), b.ratingCount = coalesce(b.ratingCount, 139);
MERGE (a:Author {name: 'Rick Riordan'})
MERGE (b:Book {title: 'The Battle of the Labyrinth'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Battle of the Labyrinth'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'rick riordan'})
MERGE (b:Book {title: 'The Battle of the Labyrinth'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Battle of the Labyrinth'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Battle of the Labyrinth'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Battle of the Labyrinth'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'The Battle of the Labyrinth'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Mythology'})
MERGE (b:Book {title: 'The Battle of the Labyrinth'})-[:HAS_TOPIC]->(t);

// Book 18: The Last Olympian
MERGE (b:Book {title: 'The Last Olympian'})
ON CREATE SET b.year = 2008, b.isbn = '8418173661', b.language = 'English', b.pageCount = 381, b.coverUrl = 'https://covers.openlibrary.org/b/id/6624107-M.jpg', b.rating = 4.41, b.ratingCount = 158
ON MATCH SET b.year = coalesce(b.year, 2008), b.isbn = coalesce(b.isbn, '8418173661'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 381), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/6624107-M.jpg'), b.rating = coalesce(b.rating, 4.41), b.ratingCount = coalesce(b.ratingCount, 158);
MERGE (a:Author {name: 'Rick Riordan'})
MERGE (b:Book {title: 'The Last Olympian'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Last Olympian'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'me'})
MERGE (b:Book {title: 'The Last Olympian'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Last Olympian'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Last Olympian'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Last Olympian'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'The Last Olympian'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Mythology'})
MERGE (b:Book {title: 'The Last Olympian'})-[:HAS_TOPIC]->(t);

// Book 19: Catching Fire
MERGE (b:Book {title: 'Catching Fire'})
ON CREATE SET b.year = 2009, b.isbn = '9780545586177', b.language = 'English', b.pageCount = 400, b.coverUrl = 'https://covers.openlibrary.org/b/id/12646539-M.jpg', b.rating = 4.12, b.ratingCount = 297
ON MATCH SET b.year = coalesce(b.year, 2009), b.isbn = coalesce(b.isbn, '9780545586177'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 400), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/12646539-M.jpg'), b.rating = coalesce(b.rating, 4.12), b.ratingCount = coalesce(b.ratingCount, 297);
MERGE (a:Author {name: 'Suzanne Collins'})
MERGE (b:Book {title: 'Catching Fire'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Catching Fire'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Lectorum Publications, Incorporated'})
MERGE (b:Book {title: 'Catching Fire'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Catching Fire'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Dystopian'})
MERGE (b:Book {title: 'Catching Fire'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Catching Fire'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Catching Fire'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'Catching Fire'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Survival'})
MERGE (b:Book {title: 'Catching Fire'})-[:HAS_TOPIC]->(t);

// Book 20: Mockingjay
MERGE (b:Book {title: 'Mockingjay'})
ON CREATE SET b.year = 2010, b.isbn = '9788427248489', b.language = 'English', b.pageCount = 424, b.coverUrl = 'https://covers.openlibrary.org/b/id/12646459-M.jpg', b.rating = 3.79, b.ratingCount = 275
ON MATCH SET b.year = coalesce(b.year, 2010), b.isbn = coalesce(b.isbn, '9788427248489'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 424), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/12646459-M.jpg'), b.rating = coalesce(b.rating, 3.79), b.ratingCount = coalesce(b.ratingCount, 275);
MERGE (a:Author {name: 'Suzanne Collins'})
MERGE (b:Book {title: 'Mockingjay'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Mockingjay'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Lectorum Publications, Incorporated'})
MERGE (b:Book {title: 'Mockingjay'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Mockingjay'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Dystopian'})
MERGE (b:Book {title: 'Mockingjay'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Mockingjay'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'Mockingjay'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Survival'})
MERGE (b:Book {title: 'Mockingjay'})-[:HAS_TOPIC]->(t);

// Book 21: The Scorch Trials
MERGE (b:Book {title: 'The Scorch Trials'})
ON CREATE SET b.year = 2010, b.isbn = '9780553538229', b.language = 'English', b.pageCount = 384, b.coverUrl = 'https://covers.openlibrary.org/b/id/6636110-M.jpg', b.rating = 3.71, b.ratingCount = 59
ON MATCH SET b.year = coalesce(b.year, 2010), b.isbn = coalesce(b.isbn, '9780553538229'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 384), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/6636110-M.jpg'), b.rating = coalesce(b.rating, 3.71), b.ratingCount = coalesce(b.ratingCount, 59);
MERGE (a:Author {name: 'James Dashner'})
MERGE (b:Book {title: 'The Scorch Trials'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Scorch Trials'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Delacorte Press'})
MERGE (b:Book {title: 'The Scorch Trials'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Dystopian'})
MERGE (b:Book {title: 'The Scorch Trials'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'The Scorch Trials'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Scorch Trials'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Survival'})
MERGE (b:Book {title: 'The Scorch Trials'})-[:HAS_TOPIC]->(t);

// Book 22: The Death Cure
MERGE (b:Book {title: 'The Death Cure'})
ON CREATE SET b.year = 2011, b.isbn = '1615875875', b.language = 'English', b.pageCount = 358, b.coverUrl = 'https://covers.openlibrary.org/b/id/6935538-M.jpg', b.rating = 3.6, b.ratingCount = 40
ON MATCH SET b.year = coalesce(b.year, 2011), b.isbn = coalesce(b.isbn, '1615875875'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 358), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/6935538-M.jpg'), b.rating = coalesce(b.rating, 3.6), b.ratingCount = coalesce(b.ratingCount, 40);
MERGE (a:Author {name: 'James Dashner'})
MERGE (b:Book {title: 'The Death Cure'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Death Cure'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Chicken House, The'})
MERGE (b:Book {title: 'The Death Cure'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Death Cure'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'The Death Cure'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Death Cure'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Survival'})
MERGE (b:Book {title: 'The Death Cure'})-[:HAS_TOPIC]->(t);

// Book 23: The Kill Order
MERGE (b:Book {title: 'The Kill Order'})
ON CREATE SET b.year = 2012, b.isbn = '9780307979117', b.language = 'English', b.pageCount = 384, b.coverUrl = 'https://covers.openlibrary.org/b/id/8157057-M.jpg', b.rating = 3.25, b.ratingCount = 12
ON MATCH SET b.year = coalesce(b.year, 2012), b.isbn = coalesce(b.isbn, '9780307979117'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 384), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8157057-M.jpg'), b.rating = coalesce(b.rating, 3.25), b.ratingCount = coalesce(b.ratingCount, 12);
MERGE (a:Author {name: 'James Dashner'})
MERGE (b:Book {title: 'The Kill Order'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Kill Order'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Delacort Press'})
MERGE (b:Book {title: 'The Kill Order'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Kill Order'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'The Kill Order'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Kill Order'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Survival'})
MERGE (b:Book {title: 'The Kill Order'})-[:HAS_TOPIC]->(t);

// Book 24: Dune Messiah
MERGE (b:Book {title: 'Dune Messiah'})
ON CREATE SET b.year = 1969, b.isbn = '8418037679', b.language = 'English', b.pageCount = 279, b.coverUrl = 'https://covers.openlibrary.org/b/id/980253-M.jpg', b.rating = 3.94, b.ratingCount = 143
ON MATCH SET b.year = coalesce(b.year, 1969), b.isbn = coalesce(b.isbn, '8418037679'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 279), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/980253-M.jpg'), b.rating = coalesce(b.rating, 3.94), b.ratingCount = coalesce(b.ratingCount, 143);
MERGE (a:Author {name: 'Frank Herbert'})
MERGE (b:Book {title: 'Dune Messiah'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Dune Messiah'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Orion Publishing Group, Limited'})
MERGE (b:Book {title: 'Dune Messiah'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Dune Messiah'})-[:HAS_GENRE]->(g);

// Book 25: Children of Dune
MERGE (b:Book {title: 'Children of Dune'})
ON CREATE SET b.year = 1976, b.isbn = '1427202915', b.language = 'English', b.pageCount = 504, b.coverUrl = 'https://covers.openlibrary.org/b/id/6976407-M.jpg', b.rating = 4.0, b.ratingCount = 51
ON MATCH SET b.year = coalesce(b.year, 1976), b.isbn = coalesce(b.isbn, '1427202915'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 504), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/6976407-M.jpg'), b.rating = coalesce(b.rating, 4.0), b.ratingCount = coalesce(b.ratingCount, 51);
MERGE (a:Author {name: 'Frank Herbert'})
MERGE (b:Book {title: 'Children of Dune'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Children of Dune'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Berkley'})
MERGE (b:Book {title: 'Children of Dune'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Children of Dune'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Children of Dune'})-[:HAS_GENRE]->(g);

// Book 26: God Emperor of Dune
MERGE (b:Book {title: 'God Emperor of Dune'})
ON CREATE SET b.year = 1981, b.isbn = '2724215907', b.language = 'English', b.pageCount = 475, b.coverUrl = 'https://covers.openlibrary.org/b/id/6711531-M.jpg', b.rating = 3.91, b.ratingCount = 78
ON MATCH SET b.year = coalesce(b.year, 1981), b.isbn = coalesce(b.isbn, '2724215907'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 475), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/6711531-M.jpg'), b.rating = coalesce(b.rating, 3.91), b.ratingCount = coalesce(b.ratingCount, 78);
MERGE (a:Author {name: 'Frank Herbert'})
MERGE (b:Book {title: 'God Emperor of Dune'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'God Emperor of Dune'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'New English Library'})
MERGE (b:Book {title: 'God Emperor of Dune'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'God Emperor of Dune'})-[:HAS_GENRE]->(g);

// Book 27: Animal Farm
MERGE (b:Book {title: 'Animal Farm'})
ON CREATE SET b.year = 1945, b.isbn = '9781722837273', b.language = 'English', b.pageCount = 128, b.coverUrl = 'https://covers.openlibrary.org/b/id/11261770-M.jpg', b.rating = 4.17, b.ratingCount = 593
ON MATCH SET b.year = coalesce(b.year, 1945), b.isbn = coalesce(b.isbn, '9781722837273'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 128), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/11261770-M.jpg'), b.rating = coalesce(b.rating, 4.17), b.ratingCount = coalesce(b.ratingCount, 593);
MERGE (a:Author {name: 'George Orwell'})
MERGE (b:Book {title: 'Animal Farm'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Animal Farm'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Editora Globo'})
MERGE (b:Book {title: 'Animal Farm'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'Animal Farm'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Animal Farm'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Rebellion'})
MERGE (b:Book {title: 'Animal Farm'})-[:HAS_TOPIC]->(t);

// Book 28: Homage to Catalonia
MERGE (b:Book {title: 'Homage to Catalonia'})
ON CREATE SET b.year = 1938, b.isbn = '9798666194959', b.language = 'English', b.pageCount = 246, b.coverUrl = 'https://covers.openlibrary.org/b/id/7282177-M.jpg', b.rating = 4.21, b.ratingCount = 28
ON MATCH SET b.year = coalesce(b.year, 1938), b.isbn = coalesce(b.isbn, '9798666194959'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 246), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/7282177-M.jpg'), b.rating = coalesce(b.rating, 4.21), b.ratingCount = coalesce(b.ratingCount, 28);
MERGE (a:Author {name: 'George Orwell'})
MERGE (b:Book {title: 'Homage to Catalonia'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Homage to Catalonia'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Ariel'})
MERGE (b:Book {title: 'Homage to Catalonia'})-[:PUBLISHED_BY]->(pub);
MERGE (t:Topic {name: 'Society'})
MERGE (b:Book {title: 'Homage to Catalonia'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Homage to Catalonia'})-[:HAS_TOPIC]->(t);

// Book 29: Project Hail Mary
MERGE (b:Book {title: 'Project Hail Mary'})
ON CREATE SET b.year = 2021, b.isbn = '9781529157468', b.language = 'English', b.pageCount = 496, b.coverUrl = 'https://covers.openlibrary.org/b/id/11200092-M.jpg', b.rating = 4.51, b.ratingCount = 180
ON MATCH SET b.year = coalesce(b.year, 2021), b.isbn = coalesce(b.isbn, '9781529157468'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 496), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/11200092-M.jpg'), b.rating = coalesce(b.rating, 4.51), b.ratingCount = coalesce(b.ratingCount, 180);
MERGE (a:Author {name: 'Andy Weir'})
MERGE (b:Book {title: 'Project Hail Mary'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Project Hail Mary'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'B de Bolsillo'})
MERGE (b:Book {title: 'Project Hail Mary'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Project Hail Mary'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'Project Hail Mary'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Project Hail Mary'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Space'})
MERGE (b:Book {title: 'Project Hail Mary'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Survival'})
MERGE (b:Book {title: 'Project Hail Mary'})-[:HAS_TOPIC]->(t);

// Book 30: Artemis
MERGE (b:Book {title: 'Artemis'})
ON CREATE SET b.year = 2017, b.isbn = '8580419190', b.language = 'English', b.pageCount = 322, b.coverUrl = 'https://covers.openlibrary.org/b/id/8235551-M.jpg', b.rating = 3.68, b.ratingCount = 130
ON MATCH SET b.year = coalesce(b.year, 2017), b.isbn = coalesce(b.isbn, '8580419190'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 322), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8235551-M.jpg'), b.rating = coalesce(b.rating, 3.68), b.ratingCount = coalesce(b.ratingCount, 130);
MERGE (a:Author {name: 'Andy Weir'})
MERGE (b:Book {title: 'Artemis'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Artemis'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Newton Compton Editori'})
MERGE (b:Book {title: 'Artemis'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Artemis'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Artemis'})-[:HAS_GENRE]->(g);

// Book 31: A Study in Scarlet
MERGE (b:Book {title: 'A Study in Scarlet'})
ON CREATE SET b.year = 1887, b.isbn = '1688519998', b.language = 'English', b.pageCount = 162, b.coverUrl = 'https://covers.openlibrary.org/b/id/13405534-M.jpg', b.rating = 3.98, b.ratingCount = 121
ON MATCH SET b.year = coalesce(b.year, 1887), b.isbn = coalesce(b.isbn, '1688519998'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 162), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/13405534-M.jpg'), b.rating = coalesce(b.rating, 3.98), b.ratingCount = coalesce(b.ratingCount, 121);
MERGE (a:Author {name: 'Arthur Conan Doyle'})
MERGE (b:Book {title: 'A Study in Scarlet'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'A Study in Scarlet'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Brand: Grupo Editorial Tomo'})
MERGE (b:Book {title: 'A Study in Scarlet'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'A Study in Scarlet'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'A Study in Scarlet'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'A Study in Scarlet'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'A Study in Scarlet'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'A Study in Scarlet'})-[:HAS_TOPIC]->(t);

// Book 32: The Sign of Four
MERGE (b:Book {title: 'The Sign of Four'})
ON CREATE SET b.year = 1889, b.isbn = '9798532051270', b.language = 'English', b.pageCount = 156, b.coverUrl = 'https://covers.openlibrary.org/b/id/9247987-M.jpg', b.rating = 4.24, b.ratingCount = 91
ON MATCH SET b.year = coalesce(b.year, 1889), b.isbn = coalesce(b.isbn, '9798532051270'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 156), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/9247987-M.jpg'), b.rating = coalesce(b.rating, 4.24), b.ratingCount = coalesce(b.ratingCount, 91);
MERGE (a:Author {name: 'Arthur Conan Doyle'})
MERGE (b:Book {title: 'The Sign of Four'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Sign of Four'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'AD Classic'})
MERGE (b:Book {title: 'The Sign of Four'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Sign of Four'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'The Sign of Four'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'The Sign of Four'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'The Sign of Four'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Rebellion'})
MERGE (b:Book {title: 'The Sign of Four'})-[:HAS_TOPIC]->(t);

// Book 33: The Hound of the Baskervilles
MERGE (b:Book {title: 'The Hound of the Baskervilles'})
ON CREATE SET b.year = 1900, b.isbn = '1444807137', b.language = 'English', b.pageCount = 207, b.coverUrl = 'https://covers.openlibrary.org/b/id/8063264-M.jpg', b.rating = 4.0, b.ratingCount = 62
ON MATCH SET b.year = coalesce(b.year, 1900), b.isbn = coalesce(b.isbn, '1444807137'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 207), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8063264-M.jpg'), b.rating = coalesce(b.rating, 4.0), b.ratingCount = coalesce(b.ratingCount, 62);
MERGE (a:Author {name: 'Arthur Conan Doyle'})
MERGE (b:Book {title: 'The Hound of the Baskervilles'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Hound of the Baskervilles'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Editions Zulma'})
MERGE (b:Book {title: 'The Hound of the Baskervilles'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'The Hound of the Baskervilles'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'The Hound of the Baskervilles'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'The Hound of the Baskervilles'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Society'})
MERGE (b:Book {title: 'The Hound of the Baskervilles'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'The Hound of the Baskervilles'})-[:HAS_TOPIC]->(t);

// Book 34: The Valley of Fear
MERGE (b:Book {title: 'The Valley of Fear'})
ON CREATE SET b.year = 1914, b.isbn = '9798492890810', b.language = 'English', b.pageCount = 206, b.coverUrl = 'https://covers.openlibrary.org/b/id/8350377-M.jpg', b.rating = 4.1, b.ratingCount = 29
ON MATCH SET b.year = coalesce(b.year, 1914), b.isbn = coalesce(b.isbn, '9798492890810'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 206), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8350377-M.jpg'), b.rating = coalesce(b.rating, 4.1), b.ratingCount = coalesce(b.ratingCount, 29);
MERGE (a:Author {name: 'Arthur Conan Doyle'})
MERGE (b:Book {title: 'The Valley of Fear'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Valley of Fear'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'AD Classic'})
MERGE (b:Book {title: 'The Valley of Fear'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Valley of Fear'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'The Valley of Fear'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'The Valley of Fear'})-[:HAS_TOPIC]->(t);

// Book 35: Angels & Demons
MERGE (b:Book {title: 'Angels & Demons'})
ON CREATE SET b.year = 2000, b.isbn = '9789984350578', b.language = 'English', b.pageCount = 575, b.coverUrl = 'https://covers.openlibrary.org/b/id/11408459-M.jpg', b.rating = 3.63, b.ratingCount = 266
ON MATCH SET b.year = coalesce(b.year, 2000), b.isbn = coalesce(b.isbn, '9789984350578'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 575), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/11408459-M.jpg'), b.rating = coalesce(b.rating, 3.63), b.ratingCount = coalesce(b.ratingCount, 266);
MERGE (a:Author {name: 'Dan Brown'})
MERGE (b:Book {title: 'Angels & Demons'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Angels & Demons'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Li︠u︡ks'})
MERGE (b:Book {title: 'Angels & Demons'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Angels & Demons'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'Angels & Demons'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'Angels & Demons'})-[:HAS_TOPIC]->(t);

// Book 36: The Lost Symbol
MERGE (b:Book {title: 'The Lost Symbol'})
ON CREATE SET b.year = 2009, b.isbn = '9584261908', b.language = 'English', b.pageCount = 604, b.coverUrl = 'https://covers.openlibrary.org/b/id/8373389-M.jpg', b.rating = 3.63, b.ratingCount = 102
ON MATCH SET b.year = coalesce(b.year, 2009), b.isbn = coalesce(b.isbn, '9584261908'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 604), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8373389-M.jpg'), b.rating = coalesce(b.rating, 3.63), b.ratingCount = coalesce(b.ratingCount, 102);
MERGE (a:Author {name: 'Dan Brown'})
MERGE (b:Book {title: 'The Lost Symbol'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Lost Symbol'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Dwarsligger®'})
MERGE (b:Book {title: 'The Lost Symbol'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Lost Symbol'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Historical Fiction'})
MERGE (b:Book {title: 'The Lost Symbol'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'The Lost Symbol'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'The Lost Symbol'})-[:HAS_TOPIC]->(t);

// Book 37: Inferno
MERGE (b:Book {title: 'Inferno'})
ON CREATE SET b.year = 2013, b.isbn = '8375088323', b.language = 'English', b.pageCount = 576, b.coverUrl = 'https://covers.openlibrary.org/b/id/9322673-M.jpg', b.rating = 3.72, b.ratingCount = 69
ON MATCH SET b.year = coalesce(b.year, 2013), b.isbn = coalesce(b.isbn, '8375088323'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 576), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/9322673-M.jpg'), b.rating = coalesce(b.rating, 3.72), b.ratingCount = coalesce(b.ratingCount, 69);
MERGE (a:Author {name: 'Dan Brown'})
MERGE (b:Book {title: 'Inferno'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Inferno'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Dwarsligger®'})
MERGE (b:Book {title: 'Inferno'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Inferno'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'Inferno'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'Inferno'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'Inferno'})-[:HAS_TOPIC]->(t);

// Book 38: Emma
MERGE (b:Book {title: 'Emma'})
ON CREATE SET b.year = 1815, b.isbn = '9780395051153', b.language = 'English', b.pageCount = 457, b.coverUrl = 'https://covers.openlibrary.org/b/id/9278312-M.jpg', b.rating = 3.97, b.ratingCount = 65
ON MATCH SET b.year = coalesce(b.year, 1815), b.isbn = coalesce(b.isbn, '9780395051153'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 457), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/9278312-M.jpg'), b.rating = coalesce(b.rating, 3.97), b.ratingCount = coalesce(b.ratingCount, 65);
MERGE (a:Author {name: 'Jane Austen'})
MERGE (b:Book {title: 'Emma'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Emma'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Pomona Press'})
MERGE (b:Book {title: 'Emma'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'Emma'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Historical Fiction'})
MERGE (b:Book {title: 'Emma'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Romance'})
MERGE (b:Book {title: 'Emma'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Coming of Age'})
MERGE (b:Book {title: 'Emma'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'Emma'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Love'})
MERGE (b:Book {title: 'Emma'})-[:HAS_TOPIC]->(t);

// Book 39: Mansfield Park
MERGE (b:Book {title: 'Mansfield Park'})
ON CREATE SET b.year = 1814, b.isbn = '9798592786044', b.language = 'English', b.pageCount = 443, b.coverUrl = 'https://covers.openlibrary.org/b/id/14618737-M.jpg', b.rating = 3.83, b.ratingCount = 6
ON MATCH SET b.year = coalesce(b.year, 1814), b.isbn = coalesce(b.isbn, '9798592786044'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 443), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14618737-M.jpg'), b.rating = coalesce(b.rating, 3.83), b.ratingCount = coalesce(b.ratingCount, 6);
MERGE (a:Author {name: 'Jane Austen'})
MERGE (b:Book {title: 'Mansfield Park'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Mansfield Park'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Xist Publishing'})
MERGE (b:Book {title: 'Mansfield Park'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'Mansfield Park'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Historical Fiction'})
MERGE (b:Book {title: 'Mansfield Park'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Romance'})
MERGE (b:Book {title: 'Mansfield Park'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Coming of Age'})
MERGE (b:Book {title: 'Mansfield Park'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Family'})
MERGE (b:Book {title: 'Mansfield Park'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Love'})
MERGE (b:Book {title: 'Mansfield Park'})-[:HAS_TOPIC]->(t);

// Book 40: Northanger Abbey
MERGE (b:Book {title: 'Northanger Abbey'})
ON CREATE SET b.year = 1818, b.isbn = '9780393978506', b.language = 'English', b.pageCount = 251, b.coverUrl = 'https://covers.openlibrary.org/b/id/12567961-M.jpg', b.rating = 3.87, b.ratingCount = 47
ON MATCH SET b.year = coalesce(b.year, 1818), b.isbn = coalesce(b.isbn, '9780393978506'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 251), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/12567961-M.jpg'), b.rating = coalesce(b.rating, 3.87), b.ratingCount = coalesce(b.ratingCount, 47);
MERGE (a:Author {name: 'Jane Austen'})
MERGE (b:Book {title: 'Northanger Abbey'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Northanger Abbey'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Hodder & Stoughton General Division'})
MERGE (b:Book {title: 'Northanger Abbey'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'Northanger Abbey'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Historical Fiction'})
MERGE (b:Book {title: 'Northanger Abbey'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Romance'})
MERGE (b:Book {title: 'Northanger Abbey'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'Northanger Abbey'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Love'})
MERGE (b:Book {title: 'Northanger Abbey'})-[:HAS_TOPIC]->(t);

// Book 41: Little men
MERGE (b:Book {title: 'Little men'})
ON CREATE SET b.year = 1885, b.isbn = '1075368499', b.language = 'English', b.pageCount = 286, b.coverUrl = 'https://covers.openlibrary.org/b/id/8043576-M.jpg', b.rating = 3.84, b.ratingCount = 19
ON MATCH SET b.year = coalesce(b.year, 1885), b.isbn = coalesce(b.isbn, '1075368499'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 286), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8043576-M.jpg'), b.rating = coalesce(b.rating, 3.84), b.ratingCount = coalesce(b.ratingCount, 19);
MERGE (a:Author {name: 'Louisa May Alcott'})
MERGE (b:Book {title: 'Little men'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Little men'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'HarperCollins Publishers'})
MERGE (b:Book {title: 'Little men'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'Little men'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Historical Fiction'})
MERGE (b:Book {title: 'Little men'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Family'})
MERGE (b:Book {title: 'Little men'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'Little men'})-[:HAS_TOPIC]->(t);

// Book 42: Jo's Boys
MERGE (b:Book {title: 'Jo\'s Boys'})
ON CREATE SET b.year = 1886, b.isbn = '1548784273', b.language = 'English', b.pageCount = 328, b.coverUrl = 'https://covers.openlibrary.org/b/id/13166184-M.jpg', b.rating = 3.67, b.ratingCount = 12
ON MATCH SET b.year = coalesce(b.year, 1886), b.isbn = coalesce(b.isbn, '1548784273'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 328), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/13166184-M.jpg'), b.rating = coalesce(b.rating, 3.67), b.ratingCount = coalesce(b.ratingCount, 12);
MERGE (a:Author {name: 'Louisa May Alcott'})
MERGE (b:Book {title: 'Jo\'s Boys'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Jo\'s Boys'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Littlehampton Book Services Ltd'})
MERGE (b:Book {title: 'Jo\'s Boys'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Jo\'s Boys'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'Jo\'s Boys'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Historical Fiction'})
MERGE (b:Book {title: 'Jo\'s Boys'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'Jo\'s Boys'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Coming of Age'})
MERGE (b:Book {title: 'Jo\'s Boys'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Family'})
MERGE (b:Book {title: 'Jo\'s Boys'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'Jo\'s Boys'})-[:HAS_TOPIC]->(t);

// Book 43: Veronika decides to die
MERGE (b:Book {title: 'Veronika decides to die'})
ON CREATE SET b.year = 2000, b.isbn = '9780007639588', b.language = 'English', b.pageCount = 191, b.coverUrl = 'https://covers.openlibrary.org/b/id/10199502-M.jpg', b.rating = 3.4, b.ratingCount = 5
ON MATCH SET b.year = coalesce(b.year, 2000), b.isbn = coalesce(b.isbn, '9780007639588'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 191), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/10199502-M.jpg'), b.rating = coalesce(b.rating, 3.4), b.ratingCount = coalesce(b.ratingCount, 5);
MERGE (a:Author {name: 'Paulo Coelho'})
MERGE (b:Book {title: 'Veronika decides to die'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Veronika decides to die'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Thorsons'})
MERGE (b:Book {title: 'Veronika decides to die'})-[:PUBLISHED_BY]->(pub);

// Book 44: Eleven Minutes
MERGE (b:Book {title: 'Eleven Minutes'})
ON CREATE SET b.year = 2003, b.isbn = '9780007166039', b.language = 'English', b.pageCount = 304, b.coverUrl = 'https://covers.openlibrary.org/b/id/31228-M.jpg', b.rating = 3.85, b.ratingCount = 26
ON MATCH SET b.year = coalesce(b.year, 2003), b.isbn = coalesce(b.isbn, '9780007166039'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 304), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/31228-M.jpg'), b.rating = coalesce(b.rating, 3.85), b.ratingCount = coalesce(b.ratingCount, 26);
MERGE (a:Author {name: 'Paulo Coelho'})
MERGE (b:Book {title: 'Eleven Minutes'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Eleven Minutes'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'HarperCollins Publishers Ltd'})
MERGE (b:Book {title: 'Eleven Minutes'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Romance'})
MERGE (b:Book {title: 'Eleven Minutes'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Love'})
MERGE (b:Book {title: 'Eleven Minutes'})-[:HAS_TOPIC]->(t);

// Book 45: I Am the Messenger
MERGE (b:Book {title: 'I Am the Messenger'})
ON CREATE SET b.year = 2002, b.isbn = '9781909531369', b.language = 'English', b.pageCount = 384, b.coverUrl = 'https://covers.openlibrary.org/b/id/4319082-M.jpg', b.rating = 4.36, b.ratingCount = 11
ON MATCH SET b.year = coalesce(b.year, 2002), b.isbn = coalesce(b.isbn, '9781909531369'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 384), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/4319082-M.jpg'), b.rating = coalesce(b.rating, 4.36), b.ratingCount = coalesce(b.ratingCount, 11);
MERGE (a:Author {name: 'Markus Zusak'})
MERGE (b:Book {title: 'I Am the Messenger'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'I Am the Messenger'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Macmillan publishers'})
MERGE (b:Book {title: 'I Am the Messenger'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'I Am the Messenger'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'I Am the Messenger'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'I Am the Messenger'})-[:HAS_TOPIC]->(t);

// Book 46: Bridge of Clay
MERGE (b:Book {title: 'Bridge of Clay'})
ON CREATE SET b.year = 2018, b.isbn = '846635011X', b.language = 'English', b.pageCount = 592, b.coverUrl = 'https://covers.openlibrary.org/b/id/9144699-M.jpg', b.rating = 5.0, b.ratingCount = 1
ON MATCH SET b.year = coalesce(b.year, 2018), b.isbn = coalesce(b.isbn, '846635011X'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 592), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/9144699-M.jpg'), b.rating = coalesce(b.rating, 5.0), b.ratingCount = coalesce(b.ratingCount, 1);
MERGE (a:Author {name: 'Markus Zusak'})
MERGE (b:Book {title: 'Bridge of Clay'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Bridge of Clay'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Alfred A. Knopf'})
MERGE (b:Book {title: 'Bridge of Clay'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'Bridge of Clay'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Coming of Age'})
MERGE (b:Book {title: 'Bridge of Clay'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Death'})
MERGE (b:Book {title: 'Bridge of Clay'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Family'})
MERGE (b:Book {title: 'Bridge of Clay'})-[:HAS_TOPIC]->(t);

// Book 47: This Side of Paradise
MERGE (b:Book {title: 'This Side of Paradise'})
ON CREATE SET b.year = 1920, b.isbn = '1692995219', b.language = 'English', b.pageCount = 270, b.coverUrl = 'https://covers.openlibrary.org/b/id/8243609-M.jpg', b.rating = 3.83, b.ratingCount = 18
ON MATCH SET b.year = coalesce(b.year, 1920), b.isbn = coalesce(b.isbn, '1692995219'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 270), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8243609-M.jpg'), b.rating = coalesce(b.rating, 3.83), b.ratingCount = coalesce(b.ratingCount, 18);
MERGE (a:Author {name: 'F. Scott Fitzgerald'})
MERGE (b:Book {title: 'This Side of Paradise'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'This Side of Paradise'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'ICON Classics'})
MERGE (b:Book {title: 'This Side of Paradise'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'This Side of Paradise'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Historical Fiction'})
MERGE (b:Book {title: 'This Side of Paradise'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Romance'})
MERGE (b:Book {title: 'This Side of Paradise'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'This Side of Paradise'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Coming of Age'})
MERGE (b:Book {title: 'This Side of Paradise'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Love'})
MERGE (b:Book {title: 'This Side of Paradise'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'This Side of Paradise'})-[:HAS_TOPIC]->(t);

// Book 48: Tender is the Night
MERGE (b:Book {title: 'Tender is the Night'})
ON CREATE SET b.year = 1933, b.isbn = '0582097169', b.language = 'English', b.pageCount = 352, b.coverUrl = 'https://covers.openlibrary.org/b/id/6984433-M.jpg', b.rating = 3.85, b.ratingCount = 20
ON MATCH SET b.year = coalesce(b.year, 1933), b.isbn = coalesce(b.isbn, '0582097169'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 352), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/6984433-M.jpg'), b.rating = coalesce(b.rating, 3.85), b.ratingCount = coalesce(b.ratingCount, 20);
MERGE (a:Author {name: 'F. Scott Fitzgerald'})
MERGE (b:Book {title: 'Tender is the Night'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Tender is the Night'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Macmillan'})
MERGE (b:Book {title: 'Tender is the Night'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'Tender is the Night'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Historical Fiction'})
MERGE (b:Book {title: 'Tender is the Night'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Romance'})
MERGE (b:Book {title: 'Tender is the Night'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Family'})
MERGE (b:Book {title: 'Tender is the Night'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Love'})
MERGE (b:Book {title: 'Tender is the Night'})-[:HAS_TOPIC]->(t);

// Book 49: Go Set A Watchman
MERGE (b:Book {title: 'Go Set A Watchman'})
ON CREATE SET b.year = 2015, b.isbn = '9780062409904', b.language = 'English', b.pageCount = 304, b.coverUrl = 'https://covers.openlibrary.org/b/id/7383195-M.jpg', b.rating = 3.21, b.ratingCount = 19
ON MATCH SET b.year = coalesce(b.year, 2015), b.isbn = coalesce(b.isbn, '9780062409904'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 304), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/7383195-M.jpg'), b.rating = coalesce(b.rating, 3.21), b.ratingCount = coalesce(b.ratingCount, 19);
MERGE (a:Author {name: 'Harper Lee'})
MERGE (b:Book {title: 'Go Set A Watchman'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Go Set A Watchman'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'HarperCollins Publishers'})
MERGE (b:Book {title: 'Go Set A Watchman'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Historical Fiction'})
MERGE (b:Book {title: 'Go Set A Watchman'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Family'})
MERGE (b:Book {title: 'Go Set A Watchman'})-[:HAS_TOPIC]->(t);

// Book 50: Paper Towns
MERGE (b:Book {title: 'Paper Towns'})
ON CREATE SET b.year = 2008, b.isbn = '9780525478188', b.language = 'English', b.pageCount = 367, b.coverUrl = 'https://covers.openlibrary.org/b/id/5731773-M.jpg', b.rating = 3.84, b.ratingCount = 77
ON MATCH SET b.year = coalesce(b.year, 2008), b.isbn = coalesce(b.isbn, '9780525478188'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 367), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/5731773-M.jpg'), b.rating = coalesce(b.rating, 3.84), b.ratingCount = coalesce(b.ratingCount, 77);
MERGE (a:Author {name: 'John Green'})
MERGE (b:Book {title: 'Paper Towns'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Paper Towns'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Intrínseca'})
MERGE (b:Book {title: 'Paper Towns'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'Paper Towns'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Romance'})
MERGE (b:Book {title: 'Paper Towns'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'Paper Towns'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Coming of Age'})
MERGE (b:Book {title: 'Paper Towns'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'Paper Towns'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'Paper Towns'})-[:HAS_TOPIC]->(t);

// Book 51: An Abundance of Katherines
MERGE (b:Book {title: 'An Abundance of Katherines'})
ON CREATE SET b.year = 2006, b.isbn = '2092555715', b.language = 'English', b.pageCount = 283, b.coverUrl = 'https://covers.openlibrary.org/b/id/14559681-M.jpg', b.rating = 3.81, b.ratingCount = 37
ON MATCH SET b.year = coalesce(b.year, 2006), b.isbn = coalesce(b.isbn, '2092555715'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 283), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14559681-M.jpg'), b.rating = coalesce(b.rating, 3.81), b.ratingCount = coalesce(b.ratingCount, 37);
MERGE (a:Author {name: 'John Green'})
MERGE (b:Book {title: 'An Abundance of Katherines'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'An Abundance of Katherines'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Penguin Young Readers Group'})
MERGE (b:Book {title: 'An Abundance of Katherines'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Romance'})
MERGE (b:Book {title: 'An Abundance of Katherines'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'An Abundance of Katherines'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'An Abundance of Katherines'})-[:HAS_TOPIC]->(t);

// Book 52: Turtles All the Way Down
MERGE (b:Book {title: 'Turtles All the Way Down'})
ON CREATE SET b.year = 2017, b.isbn = '0525555374', b.language = 'English', b.pageCount = 304, b.coverUrl = 'https://covers.openlibrary.org/b/id/8283871-M.jpg', b.rating = 4.31, b.ratingCount = 64
ON MATCH SET b.year = coalesce(b.year, 2017), b.isbn = coalesce(b.isbn, '0525555374'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 304), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8283871-M.jpg'), b.rating = coalesce(b.rating, 4.31), b.ratingCount = coalesce(b.ratingCount, 64);
MERGE (a:Author {name: 'John Green'})
MERGE (b:Book {title: 'Turtles All the Way Down'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Turtles All the Way Down'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Penguin Books, Limited'})
MERGE (b:Book {title: 'Turtles All the Way Down'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'Turtles All the Way Down'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Coming of Age'})
MERGE (b:Book {title: 'Turtles All the Way Down'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'Turtles All the Way Down'})-[:HAS_TOPIC]->(t);

// Book 53: Fahrenheit 451
MERGE (b:Book {title: 'Fahrenheit 451'})
ON CREATE SET b.year = 1953, b.isbn = '841825260X', b.language = 'English', b.pageCount = 188, b.coverUrl = 'https://covers.openlibrary.org/b/id/12993656-M.jpg', b.rating = 3.98, b.ratingCount = 451
ON MATCH SET b.year = coalesce(b.year, 1953), b.isbn = coalesce(b.isbn, '841825260X'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 188), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/12993656-M.jpg'), b.rating = coalesce(b.rating, 3.98), b.ratingCount = coalesce(b.ratingCount, 451);
MERGE (a:Author {name: 'Ray Bradbury'})
MERGE (b:Book {title: 'Fahrenheit 451'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Fahrenheit 451'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Suntup Editions'})
MERGE (b:Book {title: 'Fahrenheit 451'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Dystopian'})
MERGE (b:Book {title: 'Fahrenheit 451'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Fahrenheit 451'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Rebellion'})
MERGE (b:Book {title: 'Fahrenheit 451'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Fahrenheit 451'})-[:HAS_TOPIC]->(t);

// Book 54: The Martian Chronicles
MERGE (b:Book {title: 'The Martian Chronicles'})
ON CREATE SET b.year = 1950, b.isbn = '2070500829', b.language = 'English', b.pageCount = 262, b.coverUrl = 'https://covers.openlibrary.org/b/id/9346537-M.jpg', b.rating = 4.11, b.ratingCount = 114
ON MATCH SET b.year = coalesce(b.year, 1950), b.isbn = coalesce(b.isbn, '2070500829'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 262), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/9346537-M.jpg'), b.rating = coalesce(b.rating, 4.11), b.ratingCount = coalesce(b.ratingCount, 114);
MERGE (a:Author {name: 'Ray Bradbury'})
MERGE (b:Book {title: 'The Martian Chronicles'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Martian Chronicles'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Jin ri shi jie she'})
MERGE (b:Book {title: 'The Martian Chronicles'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'The Martian Chronicles'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Martian Chronicles'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Space'})
MERGE (b:Book {title: 'The Martian Chronicles'})-[:HAS_TOPIC]->(t);

// Book 55: Brave New World
MERGE (b:Book {title: 'Brave New World'})
ON CREATE SET b.year = 1932, b.isbn = '9575450205', b.language = 'English', b.pageCount = 240, b.coverUrl = 'https://covers.openlibrary.org/b/id/8231823-M.jpg', b.rating = 3.97, b.ratingCount = 482
ON MATCH SET b.year = coalesce(b.year, 1932), b.isbn = coalesce(b.isbn, '9575450205'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 240), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8231823-M.jpg'), b.rating = coalesce(b.rating, 3.97), b.ratingCount = coalesce(b.ratingCount, 482);
MERGE (a:Author {name: 'Aldous Huxley'})
MERGE (b:Book {title: 'Brave New World'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Brave New World'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Neal-schuman publishing'})
MERGE (b:Book {title: 'Brave New World'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'Brave New World'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Dystopian'})
MERGE (b:Book {title: 'Brave New World'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Brave New World'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Rebellion'})
MERGE (b:Book {title: 'Brave New World'})-[:HAS_TOPIC]->(t);

// Book 56: Do Androids Dream of Electric Sheep?
MERGE (b:Book {title: 'Do Androids Dream of Electric Sheep?'})
ON CREATE SET b.year = 1968, b.isbn = '0194216853', b.language = 'English', b.pageCount = 224, b.coverUrl = 'https://covers.openlibrary.org/b/id/207515-M.jpg', b.rating = 4.04, b.ratingCount = 161
ON MATCH SET b.year = coalesce(b.year, 1968), b.isbn = coalesce(b.isbn, '0194216853'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 224), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/207515-M.jpg'), b.rating = coalesce(b.rating, 4.04), b.ratingCount = coalesce(b.ratingCount, 161);
MERGE (a:Author {name: 'Philip K. Dick'})
MERGE (b:Book {title: 'Do Androids Dream of Electric Sheep?'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Do Androids Dream of Electric Sheep?'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Voyager'})
MERGE (b:Book {title: 'Do Androids Dream of Electric Sheep?'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Do Androids Dream of Electric Sheep?'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Do Androids Dream of Electric Sheep?'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Do Androids Dream of Electric Sheep?'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Technology'})
MERGE (b:Book {title: 'Do Androids Dream of Electric Sheep?'})-[:HAS_TOPIC]->(t);

// Book 57: Ubik
MERGE (b:Book {title: 'Ubik'})
ON CREATE SET b.year = 1969, b.isbn = '9788445008232', b.language = 'English', b.pageCount = 224, b.coverUrl = 'https://covers.openlibrary.org/b/id/5018327-M.jpg', b.rating = 3.96, b.ratingCount = 78
ON MATCH SET b.year = coalesce(b.year, 1969), b.isbn = coalesce(b.isbn, '9788445008232'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 224), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/5018327-M.jpg'), b.rating = coalesce(b.rating, 3.96), b.ratingCount = coalesce(b.ratingCount, 78);
MERGE (a:Author {name: 'Philip K. Dick'})
MERGE (b:Book {title: 'Ubik'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Ubik'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Voyager'})
MERGE (b:Book {title: 'Ubik'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Ubik'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Death'})
MERGE (b:Book {title: 'Ubik'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'Ubik'})-[:HAS_TOPIC]->(t);

// Book 58: Foundation
MERGE (b:Book {title: 'Foundation'})
ON CREATE SET b.year = 1951, b.isbn = '0307749711', b.language = 'English', b.pageCount = 240, b.coverUrl = 'https://covers.openlibrary.org/b/id/14612610-M.jpg', b.rating = 4.09, b.ratingCount = 308
ON MATCH SET b.year = coalesce(b.year, 1951), b.isbn = coalesce(b.isbn, '0307749711'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 240), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14612610-M.jpg'), b.rating = coalesce(b.rating, 4.09), b.ratingCount = coalesce(b.ratingCount, 308);
MERGE (a:Author {name: 'Isaac Asimov'})
MERGE (b:Book {title: 'Foundation'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Foundation'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Collins'})
MERGE (b:Book {title: 'Foundation'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Foundation'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Foundation'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Technology'})
MERGE (b:Book {title: 'Foundation'})-[:HAS_TOPIC]->(t);

// Book 59: Foundation and Empire
MERGE (b:Book {title: 'Foundation and Empire'})
ON CREATE SET b.year = 1945, b.isbn = '0586013555', b.language = 'English', b.pageCount = 253, b.coverUrl = 'https://covers.openlibrary.org/b/id/9300695-M.jpg', b.rating = 4.1, b.ratingCount = 153
ON MATCH SET b.year = coalesce(b.year, 1945), b.isbn = coalesce(b.isbn, '0586013555'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 253), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/9300695-M.jpg'), b.rating = coalesce(b.rating, 4.1), b.ratingCount = coalesce(b.ratingCount, 153);
MERGE (a:Author {name: 'Isaac Asimov'})
MERGE (b:Book {title: 'Foundation and Empire'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Foundation and Empire'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Doubleday & Company'})
MERGE (b:Book {title: 'Foundation and Empire'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Foundation and Empire'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Foundation and Empire'})-[:HAS_TOPIC]->(t);

// Book 60: Second Foundation
MERGE (b:Book {title: 'Second Foundation'})
ON CREATE SET b.year = 1953, b.isbn = '9780553900361', b.language = 'English', b.pageCount = 235, b.coverUrl = 'https://covers.openlibrary.org/b/id/9261324-M.jpg', b.rating = 4.35, b.ratingCount = 141
ON MATCH SET b.year = coalesce(b.year, 1953), b.isbn = coalesce(b.isbn, '9780553900361'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 235), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/9261324-M.jpg'), b.rating = coalesce(b.rating, 4.35), b.ratingCount = coalesce(b.ratingCount, 141);
MERGE (a:Author {name: 'Isaac Asimov'})
MERGE (b:Book {title: 'Second Foundation'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Second Foundation'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Random House Audio'})
MERGE (b:Book {title: 'Second Foundation'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Second Foundation'})-[:HAS_GENRE]->(g);

// Book 61: 2001 A SPACE ODYSSEY
MERGE (b:Book {title: '2001 A SPACE ODYSSEY'})
ON CREATE SET b.year = 1968, b.language = 'English', b.pageCount = 213, b.coverUrl = 'https://covers.openlibrary.org/b/id/15170836-M.jpg', b.rating = 4.0, b.ratingCount = 1
ON MATCH SET b.year = coalesce(b.year, 1968), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 213), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/15170836-M.jpg'), b.rating = coalesce(b.rating, 4.0), b.ratingCount = coalesce(b.ratingCount, 1);
MERGE (a:Author {name: 'Arthur C. Clarke'})
MERGE (b:Book {title: '2001 A SPACE ODYSSEY'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: '2001 A SPACE ODYSSEY'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'New American Library'})
MERGE (b:Book {title: '2001 A SPACE ODYSSEY'})-[:PUBLISHED_BY]->(pub);

// Book 62: Rendezvous with Rama
MERGE (b:Book {title: 'Rendezvous with Rama'})
ON CREATE SET b.year = 1973, b.isbn = '9780345350565', b.language = 'English', b.pageCount = 256, b.coverUrl = 'https://covers.openlibrary.org/b/id/13472608-M.jpg', b.rating = 4.16, b.ratingCount = 102
ON MATCH SET b.year = coalesce(b.year, 1973), b.isbn = coalesce(b.isbn, '9780345350565'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 256), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/13472608-M.jpg'), b.rating = coalesce(b.rating, 4.16), b.ratingCount = coalesce(b.ratingCount, 102);
MERGE (a:Author {name: 'Arthur C. Clarke'})
MERGE (b:Book {title: 'Rendezvous with Rama'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Rendezvous with Rama'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Del Rey'})
MERGE (b:Book {title: 'Rendezvous with Rama'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Rendezvous with Rama'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'Rendezvous with Rama'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Space'})
MERGE (b:Book {title: 'Rendezvous with Rama'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Rendezvous with Rama'})-[:HAS_TOPIC]->(t);

// Book 63: The Left Hand of Darkness
MERGE (b:Book {title: 'The Left Hand of Darkness'})
ON CREATE SET b.year = 1969, b.isbn = '9780441478026', b.language = 'English', b.pageCount = 304, b.coverUrl = 'https://covers.openlibrary.org/b/id/10618463-M.jpg', b.rating = 4.27, b.ratingCount = 56
ON MATCH SET b.year = coalesce(b.year, 1969), b.isbn = coalesce(b.isbn, '9780441478026'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 304), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/10618463-M.jpg'), b.rating = coalesce(b.rating, 4.27), b.ratingCount = coalesce(b.ratingCount, 56);
MERGE (a:Author {name: 'Ursula K. Le Guin'})
MERGE (b:Book {title: 'The Left Hand of Darkness'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Left Hand of Darkness'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Raig Verd'})
MERGE (b:Book {title: 'The Left Hand of Darkness'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'The Left Hand of Darkness'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Left Hand of Darkness'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'The Left Hand of Darkness'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Left Hand of Darkness'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Self Discovery'})
MERGE (b:Book {title: 'The Left Hand of Darkness'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Space'})
MERGE (b:Book {title: 'The Left Hand of Darkness'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'The Left Hand of Darkness'})-[:HAS_TOPIC]->(t);

// Book 64: The Dispossessed
MERGE (b:Book {title: 'The Dispossessed'})
ON CREATE SET b.year = 1974, b.isbn = '1473228417', b.language = 'English', b.pageCount = 352, b.coverUrl = 'https://covers.openlibrary.org/b/id/6979680-M.jpg', b.rating = 4.49, b.ratingCount = 37
ON MATCH SET b.year = coalesce(b.year, 1974), b.isbn = coalesce(b.isbn, '1473228417'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 352), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/6979680-M.jpg'), b.rating = coalesce(b.rating, 4.49), b.ratingCount = coalesce(b.ratingCount, 37);
MERGE (a:Author {name: 'Ursula K. Le Guin'})
MERGE (b:Book {title: 'The Dispossessed'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Dispossessed'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Cactus'})
MERGE (b:Book {title: 'The Dispossessed'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Dystopian'})
MERGE (b:Book {title: 'The Dispossessed'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Dispossessed'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'The Dispossessed'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Dispossessed'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Space'})
MERGE (b:Book {title: 'The Dispossessed'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Technology'})
MERGE (b:Book {title: 'The Dispossessed'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'The Dispossessed'})-[:HAS_TOPIC]->(t);

// Book 65: A Wizard of Earthsea
MERGE (b:Book {title: 'A Wizard of Earthsea'})
ON CREATE SET b.year = 1968, b.isbn = '9785552898169', b.language = 'English', b.pageCount = 205, b.coverUrl = 'https://covers.openlibrary.org/b/id/13617691-M.jpg', b.rating = 3.94, b.ratingCount = 119
ON MATCH SET b.year = coalesce(b.year, 1968), b.isbn = coalesce(b.isbn, '9785552898169'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 205), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/13617691-M.jpg'), b.rating = coalesce(b.rating, 3.94), b.ratingCount = coalesce(b.ratingCount, 119);
MERGE (a:Author {name: 'Ursula K. Le Guin'})
MERGE (b:Book {title: 'A Wizard of Earthsea'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'A Wizard of Earthsea'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Perfection Learning Prebound'})
MERGE (b:Book {title: 'A Wizard of Earthsea'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'A Wizard of Earthsea'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'A Wizard of Earthsea'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'A Wizard of Earthsea'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'A Wizard of Earthsea'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'A Wizard of Earthsea'})-[:HAS_TOPIC]->(t);

// Book 66: Ender's Game
MERGE (b:Book {title: 'Ender\'s Game'})
ON CREATE SET b.year = 1985, b.isbn = '0792733592', b.language = 'English', b.pageCount = 330, b.coverUrl = 'https://covers.openlibrary.org/b/id/12996033-M.jpg', b.rating = 4.35, b.ratingCount = 417
ON MATCH SET b.year = coalesce(b.year, 1985), b.isbn = coalesce(b.isbn, '0792733592'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 330), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/12996033-M.jpg'), b.rating = coalesce(b.rating, 4.35), b.ratingCount = coalesce(b.ratingCount, 417);
MERGE (a:Author {name: 'Orson Scott Card'})
MERGE (b:Book {title: 'Ender\'s Game'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Ender\'s Game'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'EDB FICCION'})
MERGE (b:Book {title: 'Ender\'s Game'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Ender\'s Game'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Space'})
MERGE (b:Book {title: 'Ender\'s Game'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Technology'})
MERGE (b:Book {title: 'Ender\'s Game'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Ender\'s Game'})-[:HAS_TOPIC]->(t);

// Book 67: Speaker for the Dead
MERGE (b:Book {title: 'Speaker for the Dead'})
ON CREATE SET b.year = 1986, b.isbn = '0792738071', b.language = 'English', b.pageCount = 415, b.coverUrl = 'https://covers.openlibrary.org/b/id/9315123-M.jpg', b.rating = 4.06, b.ratingCount = 109
ON MATCH SET b.year = coalesce(b.year, 1986), b.isbn = coalesce(b.isbn, '0792738071'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 415), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/9315123-M.jpg'), b.rating = coalesce(b.rating, 4.06), b.ratingCount = coalesce(b.ratingCount, 109);
MERGE (a:Author {name: 'Orson Scott Card'})
MERGE (b:Book {title: 'Speaker for the Dead'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Speaker for the Dead'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'TOR'})
MERGE (b:Book {title: 'Speaker for the Dead'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Speaker for the Dead'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Speaker for the Dead'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'Speaker for the Dead'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Space'})
MERGE (b:Book {title: 'Speaker for the Dead'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Speaker for the Dead'})-[:HAS_TOPIC]->(t);

// Book 68: Hyperion
MERGE (b:Book {title: 'Hyperion'})
ON CREATE SET b.year = 1989, b.isbn = '1491514973', b.language = 'English', b.pageCount = 481, b.coverUrl = 'https://covers.openlibrary.org/b/id/380332-M.jpg', b.rating = 4.17, b.ratingCount = 156
ON MATCH SET b.year = coalesce(b.year, 1989), b.isbn = coalesce(b.isbn, '1491514973'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 481), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/380332-M.jpg'), b.rating = coalesce(b.rating, 4.17), b.ratingCount = coalesce(b.ratingCount, 156);
MERGE (a:Author {name: 'Dan Simmons'})
MERGE (b:Book {title: 'Hyperion'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Hyperion'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Wydawnictwo MAG'})
MERGE (b:Book {title: 'Hyperion'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Hyperion'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Hyperion'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Hyperion'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'Hyperion'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Space'})
MERGE (b:Book {title: 'Hyperion'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Hyperion'})-[:HAS_TOPIC]->(t);

// Book 69: Snow Crash
MERGE (b:Book {title: 'Snow Crash'})
ON CREATE SET b.year = 1992, b.isbn = '849620832X', b.language = 'English', b.pageCount = 460, b.coverUrl = 'https://covers.openlibrary.org/b/id/392508-M.jpg', b.rating = 4.07, b.ratingCount = 200
ON MATCH SET b.year = coalesce(b.year, 1992), b.isbn = coalesce(b.isbn, '849620832X'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 460), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/392508-M.jpg'), b.rating = coalesce(b.rating, 4.07), b.ratingCount = coalesce(b.ratingCount, 200);
MERGE (a:Author {name: 'Neal Stephenson'})
MERGE (b:Book {title: 'Snow Crash'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Snow Crash'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Goldmann'})
MERGE (b:Book {title: 'Snow Crash'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Snow Crash'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Snow Crash'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Mythology'})
MERGE (b:Book {title: 'Snow Crash'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Space'})
MERGE (b:Book {title: 'Snow Crash'})-[:HAS_TOPIC]->(t);

// Book 70: The Time Machine [adaptation]
MERGE (b:Book {title: 'The Time Machine [adaptation]'})
ON CREATE SET b.year = 2003, b.isbn = '2894952120', b.language = 'English', b.pageCount = 241, b.coverUrl = 'https://covers.openlibrary.org/b/id/14525923-M.jpg'
ON MATCH SET b.year = coalesce(b.year, 2003), b.isbn = coalesce(b.isbn, '2894952120'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 241), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14525923-M.jpg');
MERGE (a:Author {name: 'Shirley Bogart'})
MERGE (b:Book {title: 'The Time Machine [adaptation]'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Time Machine [adaptation]'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Editions ABC'})
MERGE (b:Book {title: 'The Time Machine [adaptation]'})-[:PUBLISHED_BY]->(pub);

// Book 71: War of the Worlds
MERGE (b:Book {title: 'War of the Worlds'})
ON CREATE SET b.year = 2019, b.isbn = '9781671281370', b.language = 'English', b.pageCount = 464, b.coverUrl = 'https://covers.openlibrary.org/b/id/14265131-M.jpg'
ON MATCH SET b.year = coalesce(b.year, 2019), b.isbn = coalesce(b.isbn, '9781671281370'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 464), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14265131-M.jpg');
MERGE (a:Author {name: 'H. G. Wells'})
MERGE (b:Book {title: 'War of the Worlds'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'War of the Worlds'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Independently Published'})
MERGE (b:Book {title: 'War of the Worlds'})-[:PUBLISHED_BY]->(pub);

// Book 72: Slaughterhouse-Five
MERGE (b:Book {title: 'Slaughterhouse-Five'})
ON CREATE SET b.year = 1956, b.isbn = '3590126108', b.language = 'English', b.pageCount = 203, b.coverUrl = 'https://covers.openlibrary.org/b/id/12727001-M.jpg', b.rating = 4.17, b.ratingCount = 259
ON MATCH SET b.year = coalesce(b.year, 1956), b.isbn = coalesce(b.isbn, '3590126108'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 203), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/12727001-M.jpg'), b.rating = coalesce(b.rating, 4.17), b.ratingCount = coalesce(b.ratingCount, 259);
MERGE (a:Author {name: 'Kurt Vonnegut'})
MERGE (b:Book {title: 'Slaughterhouse-Five'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Slaughterhouse-Five'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Anagrama'})
MERGE (b:Book {title: 'Slaughterhouse-Five'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'Slaughterhouse-Five'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Slaughterhouse-Five'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Historical Fiction'})
MERGE (b:Book {title: 'Slaughterhouse-Five'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Slaughterhouse-Five'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'Slaughterhouse-Five'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Technology'})
MERGE (b:Book {title: 'Slaughterhouse-Five'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Slaughterhouse-Five'})-[:HAS_TOPIC]->(t);

// Book 73: Cat's Cradle
MERGE (b:Book {title: 'Cat\'s Cradle'})
ON CREATE SET b.year = 1963, b.isbn = '9789756006870', b.language = 'English', b.pageCount = 231, b.coverUrl = 'https://covers.openlibrary.org/b/id/12709654-M.jpg', b.rating = 3.96, b.ratingCount = 106
ON MATCH SET b.year = coalesce(b.year, 1963), b.isbn = coalesce(b.isbn, '9789756006870'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 231), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/12709654-M.jpg'), b.rating = coalesce(b.rating, 3.96), b.ratingCount = coalesce(b.ratingCount, 106);
MERGE (a:Author {name: 'Kurt Vonnegut'})
MERGE (b:Book {title: 'Cat\'s Cradle'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Cat\'s Cradle'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'April'})
MERGE (b:Book {title: 'Cat\'s Cradle'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'Cat\'s Cradle'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Cat\'s Cradle'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Cat\'s Cradle'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Cat\'s Cradle'})-[:HAS_TOPIC]->(t);

// Book 74: The Handmaid's Tale
MERGE (b:Book {title: 'The Handmaid\'s Tale'})
ON CREATE SET b.year = 1985, b.isbn = '9781984899668', b.language = 'English', b.pageCount = 352, b.coverUrl = 'https://covers.openlibrary.org/b/id/8231851-M.jpg', b.rating = 3.97, b.ratingCount = 136
ON MATCH SET b.year = coalesce(b.year, 1985), b.isbn = coalesce(b.isbn, '9781984899668'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 352), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8231851-M.jpg'), b.rating = coalesce(b.rating, 3.97), b.ratingCount = coalesce(b.ratingCount, 136);
MERGE (a:Author {name: 'Margaret Atwood'})
MERGE (b:Book {title: 'The Handmaid\'s Tale'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Handmaid\'s Tale'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Jonathan Cape'})
MERGE (b:Book {title: 'The Handmaid\'s Tale'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Dystopian'})
MERGE (b:Book {title: 'The Handmaid\'s Tale'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Handmaid\'s Tale'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'The Handmaid\'s Tale'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Rebellion'})
MERGE (b:Book {title: 'The Handmaid\'s Tale'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'The Handmaid\'s Tale'})-[:HAS_TOPIC]->(t);

// Book 75: Oryx and Crake
MERGE (b:Book {title: 'Oryx and Crake'})
ON CREATE SET b.year = 2002, b.isbn = '9780747562597', b.language = 'English', b.pageCount = 389, b.coverUrl = 'https://covers.openlibrary.org/b/id/12507658-M.jpg', b.rating = 4.17, b.ratingCount = 48
ON MATCH SET b.year = coalesce(b.year, 2002), b.isbn = coalesce(b.isbn, '9780747562597'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 389), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/12507658-M.jpg'), b.rating = coalesce(b.rating, 4.17), b.ratingCount = coalesce(b.ratingCount, 48);
MERGE (a:Author {name: 'Margaret Atwood'})
MERGE (b:Book {title: 'Oryx and Crake'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Oryx and Crake'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Dogan Kitap'})
MERGE (b:Book {title: 'Oryx and Crake'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Oryx and Crake'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Romance'})
MERGE (b:Book {title: 'Oryx and Crake'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Oryx and Crake'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'Oryx and Crake'})-[:HAS_TOPIC]->(t);

// Book 76: The Road
MERGE (b:Book {title: 'The Road'})
ON CREATE SET b.year = 2006, b.isbn = '9781436100793', b.language = 'English', b.pageCount = 256, b.coverUrl = 'https://covers.openlibrary.org/b/id/198120-M.jpg', b.rating = 3.89, b.ratingCount = 176
ON MATCH SET b.year = coalesce(b.year, 2006), b.isbn = coalesce(b.isbn, '9781436100793'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 256), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/198120-M.jpg'), b.rating = coalesce(b.rating, 3.89), b.ratingCount = coalesce(b.ratingCount, 176);
MERGE (a:Author {name: 'Cormac McCarthy'})
MERGE (b:Book {title: 'The Road'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Road'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Vintage International'})
MERGE (b:Book {title: 'The Road'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Road'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Dystopian'})
MERGE (b:Book {title: 'The Road'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'The Road'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Road'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Survival'})
MERGE (b:Book {title: 'The Road'})-[:HAS_TOPIC]->(t);

// Book 77: Never Let Me Go
MERGE (b:Book {title: 'Never Let Me Go'})
ON CREATE SET b.year = 2005, b.isbn = '0307400999', b.language = 'English', b.pageCount = 319, b.coverUrl = 'https://covers.openlibrary.org/b/id/1047334-M.jpg', b.rating = 3.84, b.ratingCount = 76
ON MATCH SET b.year = coalesce(b.year, 2005), b.isbn = coalesce(b.isbn, '0307400999'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 319), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/1047334-M.jpg'), b.rating = coalesce(b.rating, 3.84), b.ratingCount = coalesce(b.ratingCount, 76);
MERGE (a:Author {name: 'Kazuo Ishiguro'})
MERGE (b:Book {title: 'Never Let Me Go'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Never Let Me Go'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Knopf Doubleday Publishing Group'})
MERGE (b:Book {title: 'Never Let Me Go'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Never Let Me Go'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'Never Let Me Go'})-[:HAS_TOPIC]->(t);

// Book 78: Klara and the Sun
MERGE (b:Book {title: 'Klara and the Sun'})
ON CREATE SET b.year = 2019, b.isbn = '0593318188', b.language = 'English', b.pageCount = 334, b.coverUrl = 'https://covers.openlibrary.org/b/id/10648686-M.jpg', b.rating = 3.79, b.ratingCount = 48
ON MATCH SET b.year = coalesce(b.year, 2019), b.isbn = coalesce(b.isbn, '0593318188'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 334), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/10648686-M.jpg'), b.rating = coalesce(b.rating, 3.79), b.ratingCount = coalesce(b.ratingCount, 48);
MERGE (a:Author {name: 'Kazuo Ishiguro'})
MERGE (b:Book {title: 'Klara and the Sun'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Klara and the Sun'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Yapı Kredi Yayınları'})
MERGE (b:Book {title: 'Klara and the Sun'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Dystopian'})
MERGE (b:Book {title: 'Klara and the Sun'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Romance'})
MERGE (b:Book {title: 'Klara and the Sun'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Klara and the Sun'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Friendship'})
MERGE (b:Book {title: 'Klara and the Sun'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Love'})
MERGE (b:Book {title: 'Klara and the Sun'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Technology'})
MERGE (b:Book {title: 'Klara and the Sun'})-[:HAS_TOPIC]->(t);

// Book 79: Dark Matter
MERGE (b:Book {title: 'Dark Matter'})
ON CREATE SET b.year = 2016, b.isbn = '9781447297567', b.language = 'English', b.pageCount = 366, b.coverUrl = 'https://covers.openlibrary.org/b/id/7436634-M.jpg', b.rating = 4.0, b.ratingCount = 91
ON MATCH SET b.year = coalesce(b.year, 2016), b.isbn = coalesce(b.isbn, '9781447297567'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 366), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/7436634-M.jpg'), b.rating = coalesce(b.rating, 4.0), b.ratingCount = coalesce(b.ratingCount, 91);
MERGE (a:Author {name: 'Blake Crouch'})
MERGE (b:Book {title: 'Dark Matter'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Dark Matter'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Bantam Books'})
MERGE (b:Book {title: 'Dark Matter'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'Dark Matter'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Dark Matter'})-[:HAS_GENRE]->(g);

// Book 80: Recursion
MERGE (b:Book {title: 'Recursion'})
ON CREATE SET b.year = 2019, b.isbn = '1984826018', b.language = 'English', b.pageCount = 352, b.coverUrl = 'https://covers.openlibrary.org/b/id/8748478-M.jpg', b.rating = 4.0, b.ratingCount = 78
ON MATCH SET b.year = coalesce(b.year, 2019), b.isbn = coalesce(b.isbn, '1984826018'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 352), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8748478-M.jpg'), b.rating = coalesce(b.rating, 4.0), b.ratingCount = coalesce(b.ratingCount, 78);
MERGE (a:Author {name: 'Blake Crouch'})
MERGE (b:Book {title: 'Recursion'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Recursion'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Knopf Doubleday Publishing Group'})
MERGE (b:Book {title: 'Recursion'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Recursion'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'Recursion'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Recursion'})-[:HAS_GENRE]->(g);

// Book 81: A Game of Thrones
MERGE (b:Book {title: 'A Game of Thrones'})
ON CREATE SET b.year = 1996, b.isbn = '9789137139623', b.language = 'English', b.pageCount = 801, b.coverUrl = 'https://covers.openlibrary.org/b/id/9269962-M.jpg', b.rating = 4.22, b.ratingCount = 762
ON MATCH SET b.year = coalesce(b.year, 1996), b.isbn = coalesce(b.isbn, '9789137139623'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 801), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/9269962-M.jpg'), b.rating = coalesce(b.rating, 4.22), b.ratingCount = coalesce(b.ratingCount, 762);
MERGE (a:Author {name: 'George R. R. Martin'})
MERGE (b:Book {title: 'A Game of Thrones'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'A Game of Thrones'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Unbranded'})
MERGE (b:Book {title: 'A Game of Thrones'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'A Game of Thrones'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'A Game of Thrones'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'A Game of Thrones'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'A Game of Thrones'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Family'})
MERGE (b:Book {title: 'A Game of Thrones'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'A Game of Thrones'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Society'})
MERGE (b:Book {title: 'A Game of Thrones'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'A Game of Thrones'})-[:HAS_TOPIC]->(t);

// Book 82: A Clash of Kings
MERGE (b:Book {title: 'A Clash of Kings'})
ON CREATE SET b.year = 1998, b.isbn = '9896370486', b.language = 'English', b.pageCount = 761, b.coverUrl = 'https://covers.openlibrary.org/b/id/8231751-M.jpg', b.rating = 4.29, b.ratingCount = 193
ON MATCH SET b.year = coalesce(b.year, 1998), b.isbn = coalesce(b.isbn, '9896370486'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 761), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8231751-M.jpg'), b.rating = coalesce(b.rating, 4.29), b.ratingCount = coalesce(b.ratingCount, 193);
MERGE (a:Author {name: 'George R. R. Martin'})
MERGE (b:Book {title: 'A Clash of Kings'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'A Clash of Kings'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Oscar Mondadori'})
MERGE (b:Book {title: 'A Clash of Kings'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'A Clash of Kings'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Dystopian'})
MERGE (b:Book {title: 'A Clash of Kings'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'A Clash of Kings'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'A Clash of Kings'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'A Clash of Kings'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'A Clash of Kings'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'A Clash of Kings'})-[:HAS_TOPIC]->(t);

// Book 83: The Name of the Wind
MERGE (b:Book {title: 'The Name of the Wind'})
ON CREATE SET b.year = 2007, b.isbn = '0575081406', b.language = 'English', b.pageCount = 736, b.coverUrl = 'https://covers.openlibrary.org/b/id/11480483-M.jpg', b.rating = 4.34, b.ratingCount = 255
ON MATCH SET b.year = coalesce(b.year, 2007), b.isbn = coalesce(b.isbn, '0575081406'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 736), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/11480483-M.jpg'), b.rating = coalesce(b.rating, 4.34), b.ratingCount = coalesce(b.ratingCount, 255);
MERGE (a:Author {name: 'Patrick Rothfuss'})
MERGE (b:Book {title: 'The Name of the Wind'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Name of the Wind'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Vintage Espanol'})
MERGE (b:Book {title: 'The Name of the Wind'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'The Name of the Wind'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Name of the Wind'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'The Name of the Wind'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Name of the Wind'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Death'})
MERGE (b:Book {title: 'The Name of the Wind'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'The Name of the Wind'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'The Name of the Wind'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Quest'})
MERGE (b:Book {title: 'The Name of the Wind'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'The Name of the Wind'})-[:HAS_TOPIC]->(t);

// Book 84: The Wise Man’s Fear
MERGE (b:Book {title: 'The Wise Man’s Fear'})
ON CREATE SET b.year = 2011, b.isbn = '9781423389392', b.language = 'English', b.pageCount = 1008, b.coverUrl = 'https://covers.openlibrary.org/b/id/8294024-M.jpg', b.rating = 4.36, b.ratingCount = 161
ON MATCH SET b.year = coalesce(b.year, 2011), b.isbn = coalesce(b.isbn, '9781423389392'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 1008), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8294024-M.jpg'), b.rating = coalesce(b.rating, 4.36), b.ratingCount = coalesce(b.ratingCount, 161);
MERGE (a:Author {name: 'Patrick Rothfuss'})
MERGE (b:Book {title: 'The Wise Man’s Fear'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Wise Man’s Fear'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Vintage Espanol'})
MERGE (b:Book {title: 'The Wise Man’s Fear'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Wise Man’s Fear'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'The Wise Man’s Fear'})-[:HAS_TOPIC]->(t);

// Book 85: The Way of Kings
MERGE (b:Book {title: 'The Way of Kings'})
ON CREATE SET b.year = 2010, b.isbn = '9782253191230', b.language = 'English', b.pageCount = 1008, b.coverUrl = 'https://covers.openlibrary.org/b/id/14658316-M.jpg', b.rating = 4.51, b.ratingCount = 165
ON MATCH SET b.year = coalesce(b.year, 2010), b.isbn = coalesce(b.isbn, '9782253191230'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 1008), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14658316-M.jpg'), b.rating = coalesce(b.rating, 4.51), b.ratingCount = coalesce(b.ratingCount, 165);
MERGE (a:Author {name: 'Brandon Sanderson'})
MERGE (b:Book {title: 'The Way of Kings'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Way of Kings'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Tom Doherty Associates'})
MERGE (b:Book {title: 'The Way of Kings'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Way of Kings'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'The Way of Kings'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'The Way of Kings'})-[:HAS_TOPIC]->(t);

// Book 86: Brandon Sanderson's Fantasy Firsts : (the Way of Kings, Mistborn: the Final Empire, Rithmatist, Alcatraz vs. the Evil Librarians)
MERGE (b:Book {title: 'Brandon Sanderson\'s Fantasy Firsts : (the Way of Kings, Mistborn: the Final Empire, Rithmatist, Alcatraz vs. the Evil Librarians)'})
ON CREATE SET b.year = 2017, b.isbn = '9780765399557', b.language = 'English', b.rating = 4.0, b.ratingCount = 1
ON MATCH SET b.year = coalesce(b.year, 2017), b.isbn = coalesce(b.isbn, '9780765399557'), b.language = coalesce(b.language, 'English'), b.rating = coalesce(b.rating, 4.0), b.ratingCount = coalesce(b.ratingCount, 1);
MERGE (a:Author {name: 'Brandon Sanderson'})
MERGE (b:Book {title: 'Brandon Sanderson\'s Fantasy Firsts : (the Way of Kings, Mistborn: the Final Empire, Rithmatist, Alcatraz vs. the Evil Librarians)'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Brandon Sanderson\'s Fantasy Firsts : (the Way of Kings, Mistborn: the Final Empire, Rithmatist, Alcatraz vs. the Evil Librarians)'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Doherty Associates, LLC, Tom'})
MERGE (b:Book {title: 'Brandon Sanderson\'s Fantasy Firsts : (the Way of Kings, Mistborn: the Final Empire, Rithmatist, Alcatraz vs. the Evil Librarians)'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Brandon Sanderson\'s Fantasy Firsts : (the Way of Kings, Mistborn: the Final Empire, Rithmatist, Alcatraz vs. the Evil Librarians)'})-[:HAS_GENRE]->(g);

// Book 87: The Golden Compass Graphic Novel, Volume 2
MERGE (b:Book {title: 'The Golden Compass Graphic Novel, Volume 2'})
ON CREATE SET b.year = 2016, b.isbn = '9780857534637', b.language = 'English', b.pageCount = 80, b.coverUrl = 'https://covers.openlibrary.org/b/id/7896630-M.jpg', b.rating = 4.0, b.ratingCount = 1
ON MATCH SET b.year = coalesce(b.year, 2016), b.isbn = coalesce(b.isbn, '9780857534637'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 80), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/7896630-M.jpg'), b.rating = coalesce(b.rating, 4.0), b.ratingCount = coalesce(b.ratingCount, 1);
MERGE (a:Author {name: 'Philip Pullman'})
MERGE (b:Book {title: 'The Golden Compass Graphic Novel, Volume 2'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Golden Compass Graphic Novel, Volume 2'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Random House Children\'s Books'})
MERGE (b:Book {title: 'The Golden Compass Graphic Novel, Volume 2'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Golden Compass Graphic Novel, Volume 2'})-[:HAS_GENRE]->(g);

// Book 88: The Subtle Knife
MERGE (b:Book {title: 'The Subtle Knife'})
ON CREATE SET b.year = 1997, b.isbn = '0439950473', b.language = 'English', b.pageCount = 350, b.coverUrl = 'https://covers.openlibrary.org/b/id/12614549-M.jpg', b.rating = 3.99, b.ratingCount = 108
ON MATCH SET b.year = coalesce(b.year, 1997), b.isbn = coalesce(b.isbn, '0439950473'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 350), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/12614549-M.jpg'), b.rating = coalesce(b.rating, 3.99), b.ratingCount = coalesce(b.ratingCount, 108);
MERGE (a:Author {name: 'Philip Pullman'})
MERGE (b:Book {title: 'The Subtle Knife'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Subtle Knife'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Listening Library (Audio)'})
MERGE (b:Book {title: 'The Subtle Knife'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'The Subtle Knife'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Subtle Knife'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'The Subtle Knife'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Subtle Knife'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'The Subtle Knife'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Quest'})
MERGE (b:Book {title: 'The Subtle Knife'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Space'})
MERGE (b:Book {title: 'The Subtle Knife'})-[:HAS_TOPIC]->(t);

// Book 89: Good Omens
MERGE (b:Book {title: 'Good Omens'})
ON CREATE SET b.year = 1990, b.isbn = '5041604827', b.language = 'English', b.pageCount = 400, b.coverUrl = 'https://covers.openlibrary.org/b/id/10482258-M.jpg', b.rating = 4.42, b.ratingCount = 90
ON MATCH SET b.year = coalesce(b.year, 1990), b.isbn = coalesce(b.isbn, '5041604827'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 400), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/10482258-M.jpg'), b.rating = coalesce(b.rating, 4.42), b.ratingCount = coalesce(b.ratingCount, 90);
MERGE (a:Author {name: 'Terry Pratchett'})
MERGE (b:Book {title: 'Good Omens'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Good Omens'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Bertrand Brasil'})
MERGE (b:Book {title: 'Good Omens'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Good Omens'})-[:HAS_GENRE]->(g);

// Book 90: American Gods
MERGE (b:Book {title: 'American Gods'})
ON CREATE SET b.year = 2001, b.isbn = '9788484316275', b.language = 'English', b.pageCount = 576, b.coverUrl = 'https://covers.openlibrary.org/b/id/8494659-M.jpg', b.rating = 4.22, b.ratingCount = 60
ON MATCH SET b.year = coalesce(b.year, 2001), b.isbn = coalesce(b.isbn, '9788484316275'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 576), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8494659-M.jpg'), b.rating = coalesce(b.rating, 4.22), b.ratingCount = coalesce(b.ratingCount, 60);
MERGE (a:Author {name: 'Neil Gaiman'})
MERGE (b:Book {title: 'American Gods'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'American Gods'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'William Morrow & Company'})
MERGE (b:Book {title: 'American Gods'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'American Gods'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'American Gods'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Mythology'})
MERGE (b:Book {title: 'American Gods'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'American Gods'})-[:HAS_TOPIC]->(t);

// Book 91: Neverwhere
MERGE (b:Book {title: 'Neverwhere'})
ON CREATE SET b.year = 1996, b.isbn = '9783455023077', b.language = 'English', b.pageCount = 388, b.coverUrl = 'https://covers.openlibrary.org/b/id/1008998-M.jpg', b.rating = 4.11, b.ratingCount = 129
ON MATCH SET b.year = coalesce(b.year, 1996), b.isbn = coalesce(b.isbn, '9783455023077'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 388), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/1008998-M.jpg'), b.rating = coalesce(b.rating, 4.11), b.ratingCount = coalesce(b.ratingCount, 129);
MERGE (a:Author {name: 'Neil Gaiman'})
MERGE (b:Book {title: 'Neverwhere'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Neverwhere'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Laguna'})
MERGE (b:Book {title: 'Neverwhere'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Neverwhere'})-[:HAS_GENRE]->(g);

// Book 92: Coraline
MERGE (b:Book {title: 'Coraline'})
ON CREATE SET b.year = 2001, b.isbn = '9780060571528', b.language = 'English', b.pageCount = 176, b.coverUrl = 'https://covers.openlibrary.org/b/id/14171421-M.jpg', b.rating = 4.06, b.ratingCount = 207
ON MATCH SET b.year = coalesce(b.year, 2001), b.isbn = coalesce(b.isbn, '9780060571528'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 176), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14171421-M.jpg'), b.rating = coalesce(b.rating, 4.06), b.ratingCount = coalesce(b.ratingCount, 207);
MERGE (a:Author {name: 'Neil Gaiman'})
MERGE (b:Book {title: 'Coraline'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Coraline'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Arena'})
MERGE (b:Book {title: 'Coraline'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Coraline'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'Coraline'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Coraline'})-[:HAS_TOPIC]->(t);

// Book 93: Stardust
MERGE (b:Book {title: 'Stardust'})
ON CREATE SET b.year = 1997, b.isbn = '0606192689', b.language = 'English', b.pageCount = 232, b.coverUrl = 'https://covers.openlibrary.org/b/id/8216379-M.jpg', b.rating = 3.91, b.ratingCount = 86
ON MATCH SET b.year = coalesce(b.year, 1997), b.isbn = coalesce(b.isbn, '0606192689'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 232), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8216379-M.jpg'), b.rating = coalesce(b.rating, 3.91), b.ratingCount = coalesce(b.ratingCount, 86);
MERGE (a:Author {name: 'Neil Gaiman'})
MERGE (b:Book {title: 'Stardust'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Stardust'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Roca Editorial'})
MERGE (b:Book {title: 'Stardust'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Stardust'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Stardust'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Historical Fiction'})
MERGE (b:Book {title: 'Stardust'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Romance'})
MERGE (b:Book {title: 'Stardust'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'Stardust'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Love'})
MERGE (b:Book {title: 'Stardust'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'Stardust'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Quest'})
MERGE (b:Book {title: 'Stardust'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Stardust'})-[:HAS_TOPIC]->(t);

// Book 94: The Graveyard Book
MERGE (b:Book {title: 'The Graveyard Book'})
ON CREATE SET b.year = 2008, b.isbn = '2226189548', b.language = 'English', b.pageCount = 304, b.coverUrl = 'https://covers.openlibrary.org/b/id/7099583-M.jpg', b.rating = 4.2, b.ratingCount = 123
ON MATCH SET b.year = coalesce(b.year, 2008), b.isbn = coalesce(b.isbn, '2226189548'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 304), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/7099583-M.jpg'), b.rating = coalesce(b.rating, 4.2), b.ratingCount = coalesce(b.ratingCount, 123);
MERGE (a:Author {name: 'Neil Gaiman'})
MERGE (b:Book {title: 'The Graveyard Book'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Graveyard Book'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'HarperCollins Children\'s Books'})
MERGE (b:Book {title: 'The Graveyard Book'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Graveyard Book'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'The Graveyard Book'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Death'})
MERGE (b:Book {title: 'The Graveyard Book'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Family'})
MERGE (b:Book {title: 'The Graveyard Book'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'The Graveyard Book'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'The Graveyard Book'})-[:HAS_TOPIC]->(t);

// Book 95: The Colour of Magic
MERGE (b:Book {title: 'The Colour of Magic'})
ON CREATE SET b.year = 1983, b.isbn = '0060855924', b.language = 'English', b.pageCount = 240, b.coverUrl = 'https://covers.openlibrary.org/b/id/14647238-M.jpg', b.rating = 3.99, b.ratingCount = 156
ON MATCH SET b.year = coalesce(b.year, 1983), b.isbn = coalesce(b.isbn, '0060855924'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 240), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14647238-M.jpg'), b.rating = coalesce(b.rating, 3.99), b.ratingCount = coalesce(b.ratingCount, 156);
MERGE (a:Author {name: 'Terry Pratchett'})
MERGE (b:Book {title: 'The Colour of Magic'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Colour of Magic'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Random House Audio'})
MERGE (b:Book {title: 'The Colour of Magic'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'The Colour of Magic'})-[:HAS_GENRE]->(g);

// Book 96: Mort
MERGE (b:Book {title: 'Mort'})
ON CREATE SET b.year = 1987, b.isbn = '9783492280648', b.language = 'English', b.pageCount = 297, b.coverUrl = 'https://covers.openlibrary.org/b/id/14648805-M.jpg', b.rating = 4.21, b.ratingCount = 132
ON MATCH SET b.year = coalesce(b.year, 1987), b.isbn = coalesce(b.isbn, '9783492280648'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 297), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14648805-M.jpg'), b.rating = coalesce(b.rating, 4.21), b.ratingCount = coalesce(b.ratingCount, 132);
MERGE (a:Author {name: 'Terry Pratchett'})
MERGE (b:Book {title: 'Mort'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Mort'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'TALPRESS, spol. s r.o.'})
MERGE (b:Book {title: 'Mort'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Mort'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Mort'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Death'})
MERGE (b:Book {title: 'Mort'})-[:HAS_TOPIC]->(t);

// Book 97: Eragon
MERGE (b:Book {title: 'Eragon'})
ON CREATE SET b.year = 2000, b.isbn = '9783442366064', b.language = 'English', b.pageCount = 576, b.coverUrl = 'https://covers.openlibrary.org/b/id/13921600-M.jpg', b.rating = 3.78, b.ratingCount = 229
ON MATCH SET b.year = coalesce(b.year, 2000), b.isbn = coalesce(b.isbn, '9783442366064'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 576), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/13921600-M.jpg'), b.rating = coalesce(b.rating, 3.78), b.ratingCount = coalesce(b.ratingCount, 229);
MERGE (a:Author {name: 'Christopher Paolini'})
MERGE (b:Book {title: 'Eragon'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Eragon'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Roca Editorial'})
MERGE (b:Book {title: 'Eragon'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Adventure'})
MERGE (b:Book {title: 'Eragon'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Fantasy'})
MERGE (b:Book {title: 'Eragon'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Science Fiction'})
MERGE (b:Book {title: 'Eragon'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'Eragon'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Magic'})
MERGE (b:Book {title: 'Eragon'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'War'})
MERGE (b:Book {title: 'Eragon'})-[:HAS_TOPIC]->(t);

// Book 98: And Then There Were None
MERGE (b:Book {title: 'And Then There Were None'})
ON CREATE SET b.year = 1939, b.isbn = '9780060736330', b.language = 'English', b.pageCount = 222, b.coverUrl = 'https://covers.openlibrary.org/b/id/11172296-M.jpg', b.rating = 4.25, b.ratingCount = 173
ON MATCH SET b.year = coalesce(b.year, 1939), b.isbn = coalesce(b.isbn, '9780060736330'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 222), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/11172296-M.jpg'), b.rating = coalesce(b.rating, 4.25), b.ratingCount = coalesce(b.ratingCount, 173);
MERGE (a:Author {name: 'Agatha Christie'})
MERGE (b:Book {title: 'And Then There Were None'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'And Then There Were None'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Agatha Christie Ltd'})
MERGE (b:Book {title: 'And Then There Were None'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Historical Fiction'})
MERGE (b:Book {title: 'And Then There Were None'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'And Then There Were None'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Young Adult'})
MERGE (b:Book {title: 'And Then There Were None'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'And Then There Were None'})-[:HAS_TOPIC]->(t);

// Book 99: Murder on the Orient Express
MERGE (b:Book {title: 'Murder on the Orient Express'})
ON CREATE SET b.year = 1933, b.isbn = '3442000629', b.language = 'English', b.pageCount = 240, b.coverUrl = 'https://covers.openlibrary.org/b/id/11100465-M.jpg', b.rating = 4.15, b.ratingCount = 130
ON MATCH SET b.year = coalesce(b.year, 1933), b.isbn = coalesce(b.isbn, '3442000629'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 240), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/11100465-M.jpg'), b.rating = coalesce(b.rating, 4.15), b.ratingCount = coalesce(b.ratingCount, 130);
MERGE (a:Author {name: 'Agatha Christie'})
MERGE (b:Book {title: 'Murder on the Orient Express'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Murder on the Orient Express'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Librairie des Champs-Elysses'})
MERGE (b:Book {title: 'Murder on the Orient Express'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'Murder on the Orient Express'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'Murder on the Orient Express'})-[:HAS_TOPIC]->(t);

// Book 100: The Murder of Roger Ackroyd
MERGE (b:Book {title: 'The Murder of Roger Ackroyd'})
ON CREATE SET b.year = 1926, b.isbn = '0060593539', b.language = 'English', b.pageCount = 256, b.coverUrl = 'https://covers.openlibrary.org/b/id/13151356-M.jpg', b.rating = 4.23, b.ratingCount = 83
ON MATCH SET b.year = coalesce(b.year, 1926), b.isbn = coalesce(b.isbn, '0060593539'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 256), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/13151356-M.jpg'), b.rating = coalesce(b.rating, 4.23), b.ratingCount = coalesce(b.ratingCount, 83);
MERGE (a:Author {name: 'Agatha Christie'})
MERGE (b:Book {title: 'The Murder of Roger Ackroyd'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Murder of Roger Ackroyd'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Editora Globo'})
MERGE (b:Book {title: 'The Murder of Roger Ackroyd'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Historical Fiction'})
MERGE (b:Book {title: 'The Murder of Roger Ackroyd'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'The Murder of Roger Ackroyd'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'The Murder of Roger Ackroyd'})-[:HAS_TOPIC]->(t);

// Book 101: Death on the Nile
MERGE (b:Book {title: 'Death on the Nile'})
ON CREATE SET b.year = 1937, b.isbn = '9788498675801', b.language = 'English', b.pageCount = 276, b.coverUrl = 'https://covers.openlibrary.org/b/id/14066646-M.jpg', b.rating = 4.2, b.ratingCount = 25
ON MATCH SET b.year = coalesce(b.year, 1937), b.isbn = coalesce(b.isbn, '9788498675801'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 276), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14066646-M.jpg'), b.rating = coalesce(b.rating, 4.2), b.ratingCount = coalesce(b.ratingCount, 25);
MERGE (a:Author {name: 'Agatha Christie'})
MERGE (b:Book {title: 'Death on the Nile'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'Death on the Nile'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Random House Audio'})
MERGE (b:Book {title: 'Death on the Nile'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'Death on the Nile'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Historical Fiction'})
MERGE (b:Book {title: 'Death on the Nile'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'Death on the Nile'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Romance'})
MERGE (b:Book {title: 'Death on the Nile'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'Death on the Nile'})-[:HAS_TOPIC]->(t);
MERGE (t:Topic {name: 'Family'})
MERGE (b:Book {title: 'Death on the Nile'})-[:HAS_TOPIC]->(t);

// Book 102: The A.B.C. Murders
MERGE (b:Book {title: 'The A.B.C. Murders'})
ON CREATE SET b.year = 1936, b.isbn = '9780613636315', b.language = 'English', b.pageCount = 227, b.coverUrl = 'https://covers.openlibrary.org/b/id/14573514-M.jpg', b.rating = 4.03, b.ratingCount = 62
ON MATCH SET b.year = coalesce(b.year, 1936), b.isbn = coalesce(b.isbn, '9780613636315'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 227), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/14573514-M.jpg'), b.rating = coalesce(b.rating, 4.03), b.ratingCount = coalesce(b.ratingCount, 62);
MERGE (a:Author {name: 'Agatha Christie'})
MERGE (b:Book {title: 'The A.B.C. Murders'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The A.B.C. Murders'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'HarperCollins Publishers and Blackstone Audio'})
MERGE (b:Book {title: 'The A.B.C. Murders'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Classic'})
MERGE (b:Book {title: 'The A.B.C. Murders'})-[:HAS_GENRE]->(g);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'The A.B.C. Murders'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'The A.B.C. Murders'})-[:HAS_TOPIC]->(t);

// Book 103: The Big Sleep
MERGE (b:Book {title: 'The Big Sleep'})
ON CREATE SET b.year = 1939, b.isbn = '8119007093', b.language = 'English', b.pageCount = 229, b.coverUrl = 'https://covers.openlibrary.org/b/id/7268475-M.jpg', b.rating = 3.98, b.ratingCount = 50
ON MATCH SET b.year = coalesce(b.year, 1939), b.isbn = coalesce(b.isbn, '8119007093'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 229), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/7268475-M.jpg'), b.rating = coalesce(b.rating, 3.98), b.ratingCount = coalesce(b.ratingCount, 50);
MERGE (a:Author {name: 'Raymond Chandler'})
MERGE (b:Book {title: 'The Big Sleep'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Big Sleep'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Knopf Doubleday Publishing Group'})
MERGE (b:Book {title: 'The Big Sleep'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'The Big Sleep'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'The Big Sleep'})-[:HAS_TOPIC]->(t);

// Book 104: The Maltese Falcon
MERGE (b:Book {title: 'The Maltese Falcon'})
ON CREATE SET b.year = 1929, b.isbn = '8474446112', b.language = 'English', b.pageCount = 254, b.coverUrl = 'https://covers.openlibrary.org/b/id/998587-M.jpg', b.rating = 3.41, b.ratingCount = 32
ON MATCH SET b.year = coalesce(b.year, 1929), b.isbn = coalesce(b.isbn, '8474446112'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 254), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/998587-M.jpg'), b.rating = coalesce(b.rating, 3.41), b.ratingCount = coalesce(b.ratingCount, 32);
MERGE (a:Author {name: 'Dashiell Hammett'})
MERGE (b:Book {title: 'The Maltese Falcon'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Maltese Falcon'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'Alianza Editorial'})
MERGE (b:Book {title: 'The Maltese Falcon'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'The Maltese Falcon'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'The Maltese Falcon'})-[:HAS_TOPIC]->(t);

// Book 105: The Silence of the Lambs
MERGE (b:Book {title: 'The Silence of the Lambs'})
ON CREATE SET b.year = 1988, b.isbn = '3550100337', b.language = 'English', b.pageCount = 352, b.coverUrl = 'https://covers.openlibrary.org/b/id/8580475-M.jpg', b.rating = 4.23, b.ratingCount = 52
ON MATCH SET b.year = coalesce(b.year, 1988), b.isbn = coalesce(b.isbn, '3550100337'), b.language = coalesce(b.language, 'English'), b.pageCount = coalesce(b.pageCount, 352), b.coverUrl = coalesce(b.coverUrl, 'https://covers.openlibrary.org/b/id/8580475-M.jpg'), b.rating = coalesce(b.rating, 4.23), b.ratingCount = coalesce(b.ratingCount, 52);
MERGE (a:Author {name: 'Thomas Harris'})
MERGE (b:Book {title: 'The Silence of the Lambs'})-[:WRITTEN_BY]->(a);
MERGE (lang:Language {name: 'English'})
MERGE (b:Book {title: 'The Silence of the Lambs'})-[:IN_LANGUAGE]->(lang);
MERGE (pub:Publisher {name: 'St Martins Press Inc  (M/M)'})
MERGE (b:Book {title: 'The Silence of the Lambs'})-[:PUBLISHED_BY]->(pub);
MERGE (g:Genre {name: 'Mystery'})
MERGE (b:Book {title: 'The Silence of the Lambs'})-[:HAS_GENRE]->(g);
MERGE (t:Topic {name: 'Detective'})
MERGE (b:Book {title: 'The Silence of the Lambs'})-[:HAS_TOPIC]->(t);
