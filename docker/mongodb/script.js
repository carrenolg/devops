// 1. show databases
show dbs
// 2. use appdb
use appdb
// 3. create collection
db.movies.insertOne({
    _id: 5,
    name: 'Star Trek',
    year: 2009,
    directors: ['J.J. Abrams'],
    writers: ['Roberto Orci', 'Alex Kurtzman'],
    boxOffice: {
        budget: 150000000,
        gross: 257704099
    }
})
// 4. show data
db.movies.find({})
// 5. Inser
db.movies.insertOne({
    name: 'The Dark Knight',
    year: 2008,
    directors: ['Christopher Nolan'],
    writers: ['Jonathan Nolan', 'Christopher Nolan'],
    boxOffice: {
        budget: 180000000,
        gross: 533316061
    }
})
// 6. return last document
db.movies.findOne()
// 7. fetch a document (filtering data)
db.movies.find({year: {$eq: 2008}})
db.movies.find({year: 2008})
