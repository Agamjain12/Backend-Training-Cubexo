mongo

# creating a user

create user ({
user : 'root',
pwd : 'password',
roles: ["root"]
})

# for creatinga a database

use mydatabase;

db.createCollection("myCollection") // creating a collection in database

db.myCollection.insertOne({title:"first",likes:1}); assuming we have to upload one record

db.myCollection.insertMany(); // for inserting many records

db.myCollection.insert(object) // assuming object contains the data to insert

db.myCollection.find();

db.myCollection.find({title:"first"}) // quering data

db.myCollection.find({},{\_id:0,title:1}); // extra object in parameter is called projection. 1 means inclusion 0 means exclusion, hybrid projection values is permissible only in id case, otherwise you should specify what to include or what to exclude

db.myCollection.find({},{title:1,likes:0}) // this will throw error

db.myCollection.updateOne({title:1},{$set : {title:2}}) // first object contains the query and the second object defines the updated data

###### you would like to insert the document if it is not found, you can use the upsert option.

db.myCollection.updateOne(
{ title: "Post Title 5" },
{
$set:
{
title: "Post Title 5",
body: "Body of post.",
category: "Event",
likes: 5,
tags: ["news", "events"],
date: Date()
}
},
{ upsert: true }
)

###### updating the filed names

db.myCollection.update({title:"Post Title 5"},{$rename : { likes : "Likes" }})

---

# for practice

    [
        {
            _id: ObjectId("64b267b4c648b9effc2d0773"),
            name: 'Deborah Allen',
            age: 22,
            city: 'Las Vegas, United States',
            location: [ 40.8584, 1.2945 ],
            hobbies: [ 'Swimming', 'Painting' ]
        },
        {
            _id: ObjectId("64b267b4c648b9effc2d0774"),
            name: 'Angela Perez',
            age: 25,
            city: 'New York, United States',
            location: [ 31.4782, 1.2245 ],
            hobbies: [ 'Woodworking', 'Reading' ]
        },
        {
            _id: ObjectId("64b267b4c648b9effc2d0775"),
            name: 'Michael Dsouza',
            age: 23,
            city: 'San Jose, United States',
            location: [ 40.6892, 74.0445 ],
            hobbies: [ 'Dancing' ],
            education: { university: 'calicut', start: '05-2017', end: '02-2019' }
        },
        {
            _id: ObjectId("64b267b4c648b9effc2d0776"),
            name: 'Lauren Shaw',
            age: 20,
            city: 'New Jersey, United States',
            location: [ 21.3387, 36.7645 ],
            hobbies: [ 'Cooking' ]
        },
        {
            _id: ObjectId("64b267b4c648b9effc2d0777"),
            name: 'Lewis Fisher',
            age: 33,
            city: 'San Jose, United States',
            location: [ 40.6892, 74.0445 ],
            hobbies: [ 'Dancing' ],
            education: { university: 'calicut', start: '05-2017', end: '02-2019' }
        },
        {
            _id: ObjectId("64b267b4c648b9effc2d0778"),
            name: 'Nina Jekins',
            age: 29,
            city: 'San Francisco, United States',
            location: [ 39.3367, 71.0345 ],
            hobbies: [ 'Coding' ],
            education: { university: 'california', start: '02-2015', end: '02-2016' }
        },
        {
            _id: ObjectId("64b267b4c648b9effc2d0779"),
            name: 'Michael Bura',
            age: 32,
            city: 'Utah, United States',
            location: [ 48.8584, 2.2945 ],
            hobbies: [ 'Writing', 'Dancing' ]
        },
        {
            _id: ObjectId("64b267b4c648b9effc2d077a"),
            name: 'Michael Baker',
            age: 39,
            city: 'San Francisco, United States',
            location: [ 39.3367, 71.0345 ],
            hobbies: [ 'Dancing' ],
            education: { university: 'california', start: '02-2015', end: '02-2016' }
        }
    ]

# embadded documents

    {
        _id: ObjectId("64b267b4c648b9effc2d0778"),
        name: 'Nina Jekins',
        age: 29,
        city: 'San Francisco, United States',
        location: [ 39.3367, 71.0345 ],
        hobbies: [ 'Coding' ],
        education:
            {
                university: 'california',
                start: '02-2015',
                end: '02-2016'
            }
    }

###### Quering embadded docuents

db.users.find({'education.university' : 'california'})

# quering arrays

$in keyword
fetches records matching any specified value in array

db.user.find({hobbies : {$in : ["Dancing","Coding"]}})

$all keyword
fetched records matching all specified values in array

db.user.find({hobbies : {$all : ["Dancing","Coding"]}})

# Using Query operators with MongoDB arrays

db.user.find({ location:{$elemMatch: { $gt: 39, $lt: 45 }} })

db.user.find({ location:{$elemMatch: { $gt: 39, $lt: 45 }} }): This query uses the $elemMatch operator to specify that the condition should be applied to each element in the "location" array individually.

It matches documents where the "location" array contains at least one element that is greater than 39 and less than 45.

db.user.find({ location: { $gt: 39, $lt: 45 } })

db.user.find({ location: { $gt: 39, $lt: 45 } }): This query does not use the $elemMatch operator. Instead, it specifies the condition directly on the "location" field.

However, when using this syntax without $elemMatch, it treats the "location" field as a whole, not individually evaluating each element of the array.

It matches documents where the "location" field itself is greater than 39 and less than 45.

In summary, the first query checks if any element within the "location" array satisfies the condition, while the second query checks if the "location" field as a whole satisfies the condition.

# $min

$min is used for if we want to update a value of a field with the minimum value.
Means it compare both value ( current value and given value), if the current value is already minimum then it won't update, if the current value is maximum it updates the value of the field with the given value.
Data = {
\_id: ObjectId("64b38aab7bb900f1bb11a847"),
name: 'jithu',
age: 17,
city: 'Thrissur',
location: [ 48.3453, 3.4535 ],
hobbies: [ 'Singing', 'Reading' ]
}

    db.users.updateOne({ name: 'jithu' }, { $min: { age: 20 }} ); # No change
    db.users.updateOne({ name: 'jithu' }, { $min: { age: 10 }} ); # It will update

# $max

$Max updates the value if the given value greater than the current value.
Data = {
\_id: ObjectId("64b38aab7bb900f1bb11a847"),
name: 'jithu',
age: 17,
city: 'Thrissur',
location: [ 48.3453, 3.4535 ],
hobbies: [ 'Singing', 'Reading' ]
}

    db.users.updateOne({ name: 'jithu' }, { $max: { age: 20 }} ); # It will update
    db.users.updateOne({ name: 'jithu' }, { $max: { age: 10 }} ); # No change

# $mul

It is used to update a field with the value which is multiplied value ( current value \* given value )

db.users.updateOne({ name: 'jithu' }, { $mul: { age: 2 }} );
(age become 2 \* current age)

# $unset

$unset is used to unset or delete a particular field that exist.

db.users.updateOne({ name: 'jithu' }, { $unset: { points: 1 }} );
(the field points removed from the document.)

# Delete document from MongoDB.

###### Delete a single document from MongoDB

db.users.deleteOne({ name: 'Michael Baker' }); # deleteOne is used to delete one document based on the given criteria

###### Delete multiple document from MongoDB

db.users.deleteMany({ age: { $gte: 30 } } ); # deleteMany is used to delete multiple documents based on the given criteria.

# Embedded vs Linked documents

###### Embedded documents.

MongoDB follows document approach where there are documents instead of rows as in SQL.
Embedded documents are documents where one document is stored inside another document.
{
"\_id": ObjectId("6123456789abcdef0123456"),
"title": "Article Title",
"content": "This is the content of the article.",
"author": {
"name": "John Doe",
"email": "johndoe@example.com"
},
"comments": [
{
"author": "Jane Smith",
"comment": "Great article!"
},
{
"author": "Bob Johnson",
"comment": "Well written!"
}
]
}

###### # Linked or Referenced documents.

Referenced documents are stored in a separate collection with references to each other.
{
"\_id": ObjectId("6123456789abcdef0123456"),
"title": "Article Title",
"content": "This is the content of the article.",
"author": ObjectId("a123456789abcdef01234567"),
"comments": [
ObjectId("c123456789abcdef01234567"),
ObjectId("c223456789abcdef01234567")
]
}

# INDEXING

db.user.createIndex({name : 1})
(1 implies index are created for ascending order retrieval, for descending do -1)

###### unique indexing

db.user.createIndex({location : 1}, {unique : true})
(value of this filed will be unique in every document)

###### partial indexing

db.blogPosts.createIndex({publishDate : 1}, { partialFilterExpression : {status : "published"}})
(indexes are created only for the fields(publishDate) where status is publised)

###### background option

db.collection.createIndex({ name: 1 }, { background: true });
(If true, the index creation will be performed in the background, allowing other operations on the database to continue.)

###### sparse

db.users.createIndex({ membershipExpiration: 1 }, { sparse: true });
(only creates index for the user who have an membersiExpiration date)

###### Expire after seconds

db.logs.createIndex({ createdAt: 1 }, { expireAfterSeconds: 3600 });
(records are deleted after specified time, useful for temporal data such as log,session,cache data)

### VIEW

db.createView("myView", "blogPosts", [{$match : {status : "published"}}, {$project : {_id:0}}])

### SORT

db.user.find().sort({ age : -1})
