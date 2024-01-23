# Mongod DB

MongoDB is a popular NoSQL database that stores and manages data in a flexible, document-oriented format, making it easy to work with dynamic and evolving data structures.

## Roadmap

1. Installation

2. What is database?

3. How would we access data?

4. What is DBMS?

5. Different type of databases

6. Relational databases

7. Non-Relational databases

8. Relationships and Normalization

9. What is MongodDB?

10. MongoDB Features:

11. MongoDB Benefits:

12. NoSQL vs SQL

13. BSON and JSON

14. How does MongoDB work?

15. MongoDB Databases

16. Query operators in MongoDB

17. Embedded document

18. Querying Arrays in MongoDB documents

19. Using Query operators with MongoDB arrays

20. MongoDB Projections

21. Working with cursor in MongoDB

22. Update operators

23. What is upsert option?

24. Delete document from MongoDB.

25. What is data modeling?

26. How does data modeling work for relational databases?

27. Advantages of data modeling with MongoDB

28. Things to remember about the data models.

29. Datatypes in MongoDB

30. Modeling our database.

31. Embedded vs Linked documents

32. One to One Relationship.

33. One to Many Relationships

34. Aggregation in MongoDB?

35. Aggregation framework.

36. What is an aggregation pipeline?

37. Operators in aggregators

38. $lookup

39. $out

40. Evaluating query performance in MongoDB

41. What is indexing?

42. Create Index

43. Delete Index

44. What are the different index options

45. Indexes and their types

46. Compound indexes

47. Index performance

48. ESR rule

## 1. Installation

<a href="https://tecadmin.net/how-to-install-mongodb-on-ubuntu-22-04/">
MongoDB Installation Ubuntu 1
</a>
<br>
<a href="https://www.fosstechnix.com/how-to-install-mongodb-on-ubuntu-22-04-lts/">
MongoDB Installation Ubuntu 2
</a>
<br>
<a href="https://itnixpro.com/install-mongodb-compass-gui-on-ubuntu-22-04/">
MongoDB Compass installation
</a>

## 2. What is a database?

- Database is a place where data related to our users and product is stored.
- Databases are typically used to store data and maintain the state of our application.

## 3. How would we access data?

- Data stored in database can be accessed using a language called SQL.
- SQL stands for structured query language which is typically written by data analysts and programmers.

## 4. What is DBMS?

- A database typically requires a comprehensive database software program know as a database management system (DBMS).
- A DBMS serves as an interface between the database and its end users, allowing users to retrieve, update, and manage the information.
- A DBMS enables us to do a variety of administrative operations such as performance monitoring , taking backup and recovery.

## 5. Different type of databases

There are 2 types of databases.

- Relational and Non Relational.

## 6. Relational databases

- Relational databases store data in the form of rows and columns, and the format is similar to excel spreadsheet.
- we can store data there in rows and column.
- Structure of the database is known as schema and one row of information is known as a record.
- Some of the popular example of relational databases are : MySQL, Microsoft Access, Microsoft SQL Server, sqlite, Oracle database, postgres.

## 7. Non-Relational databases

- Non relational databases don't follow this approach of storing data in form of rows and columns.
- They don't have a fixed structure.
- Non relational databases are used in scenarios where we need more flexibility over structure.
- Data stored here is in the form of documents which is nothing but a JSON string.

## 8. Relationships and Normalization

- Linking between customer and orders table is known as relationship between 2 tables.
- The process of eliminating the redundant data from our database is known as normalization.

## 9. What is MongodDB?

- MongoDB is document-based database program that works on JSON like documents.
- This JSON like format for storing data is also known as BSON format.
- MongoDB is the most popular NoSQL database out there, that is widely used in a wide range of applications and has a strong developer community across the world.
- It has given developers an unprecedented level of flexibility and scalability.
- MongoDB is classified as a NoSQL database because of the schema-less approach to storing and managing data.

## 10. MongoDB Features:

### STRUCTURE-LESS

- MongoDB is a document-oriented database, which means that data in MongoDB is stored in the form of a document, which is different from databases like SQL, where data is stored in form of rows and columns.
- These documents are then grouped as collections and stored.
- The relational database has rows and columns, which define the structure in which the data is to be stored.

### SHARDING

- Sharding involves storing data in parts at different sources of databases.
- This is done to divide the data into small manageable chunks known as shards which can be accessed from different sources.
- Now every source here is a separate instance of databases which is managed separately.
- Sharding allows databases to scale horizontally when data grows large in size.
- MongoDB allows sharding which makes it very much scalable and powerful.

### INDEXING

- Searching for data is one of the most common features that modern applications offer to their users.
- MongoDB offers indexing, which helps applications improve search speed and performance.
- MongoDB offers a variety of indexes and features with language-specific features to help developers improve application performance.

### SECURITY

- MongoDB has strong authentication which only allows only authorized users to access the data.

### REPLICATION

- Replication is the process of having the same set of data available across multiple servers.
- The purpose of replication is to make sure that there is data redundancy, this is done to ensure that if anything happens to the primary source of data then we have a backup.
- MongoDB has the concept of Replica sets, which allows us to define secondary service, which could be elected as primary server if anything happens to our current primary server.
- Whenever there is any write operation on our primary server, MongoDB allows us to apply those write operations to our secondary servers as well with in our replica sets so that the data is synchronized.
- Data synchronization ensures that the data on the secondary servers is consistent with the data on the primary server.
- Replication is one of the powerful features, because it makes sure that our application has high availability, and is protected from data loss in case of any unforeseen events of failures.
- This is all handled by MongoDB making the life easy for developers like you and me.

### LOAD BALANCING

- Balancing the load of all the incoming data requests is one of the most important things when it comes to building a high-scale database or web application.
- We might have data spread across different servers. Without proper load balancing, there can be a delay if there is a data request.
- It is important that there is a proper load balancing to ensure faster responses to all client requests.
- MongoDB provides an inbuilt load-balancing mechanism that helps manage high traffic.

## 11. MongoDB Benefits:

### FLEXIBLE

- One of the major benefits of using MongoDB is flexibility in terms of data storage.
- As I mentioned, that MongoDB follows a schema-less approach to storing data, This enables developers to iterate faster and not worry too much about the structure.
- This schemaless approach is very much helpful for developers when the requirements are not fixed and the application is just being developed.
- Since developers can, later on, iterate and make necessary changes as the application evolves.

### HIGHLY SCALABLE

- MongodDB offers highly scalable features like load balancing, sharding, and replication that can scale as the traffic on our application using MongoDB grows.
- MongoDB can support high number of concurrent of read and write operations easily.

### DEVELOPER-FRIENDLY

- MongoDB make sure that they offer an amazing experience to all the developers.
- MongoDB has drivers that support popular programming languages like C, C#, C++, Python, java, Node JS, and more along with comprehensive documentation making it easy to use.

## 12. NoSQL vs SQL

|              | SQL                                                                                                                      | NoSQL                                                                                                                                                              |
| ------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Data Storage | SQL databases, also known as relational databases, consist of tables that contain rows and columns where data is stored. | NoSQL databases consist of documents where data is stored in the form of a JSON-like structure that most developers are familiar with.                             |
| Schema       | SQL databases have a predefined schema that is fixed.                                                                    | NoSQL databases are schemaless and don't have any predefined structure. This enables developers to store data in a flexible way without worrying about the schema. |
| Examples     | Popular examples of SQL databases include MySQL, Oracle, and PostgreSQL.                                                 | Popular examples of NoSQL databases include MongoDB, BigTable, Cassandra, and CouchDB.                                                                             |
| Querying     | SQL databases are suited for complex queries.                                                                            | NoSQL databases are not as good with complex queries compared to SQL databases.                                                                                    |
| Scaling      | Enables vertical scaling. Vertical scaling involves increasing the capacity of the server to a more powerful one.        | Enables horizontal scaling, where the database is scaled across different servers.                                                                                 |

## 13. BSON and JSON

- MongoDB is not using instead it is using BSON ( JSON like format )
- BSON means Binary JSON

### Why use BSON and not JSON?

- BSON allows developers to store data in native types like dates. Which is not possible in JSON.
- This is an important part since we are dealing with data, it would be useful to represent data in native types.
- BSON is optimized for speed, space, and efficiency which impacts the overall performance of the database.

### Things to know

- BSON format is used by MongoDB to work with data both internally and over the network.
- Drivers are responsible to convert data into BSON format that MongoDB can use and vice versa.

## 14. How does MongoDB work?

### Storage Engine

MongoDB utilizes different storage engines to manage data storage on disk. The two primary storage engines are:

- **MMAPv1**: Maps data files directly into memory, enabling efficient read operations. It employs disk-based locking for concurrent write operations.

- **WiredTiger**: Default storage engine since MongoDB 3.2. Offers improved performance, compression, and concurrency control. It utilizes document-level locking and provides advanced features.

### Data Model

MongoDB stores data in a flexible and schema-less format called BSON (Binary JSON). BSON allows for storing various data types, including strings, numbers, arrays, and nested documents. This flexible data model allows developers to iterate quickly and adapt to changing requirements without strict schema constraints.

### Memory

MongoDB leverages memory for various operations:

- **Working Set**: MongoDB keeps frequently accessed data in memory to enhance read performance. The portion of data and indexes frequently accessed by the application is known as the "working set."

- **Caching**: MongoDB employs a cache mechanism to store recently accessed data, reducing disk I/O and improving overall performance.

- **Indexes**: Indexes, used for efficient data retrieval, are stored in memory to facilitate quick lookup and retrieval of data.

These internal components play a crucial role in MongoDB's performance, reliability, and scalability. The choice of storage engine impacts data storage and retrieval efficiency, while the flexible data model and memory management techniques contribute to MongoDB's agility and speed.

### When a query is executed in MongoDB, the flow generally follows these steps:

- The query is received by the MongoDB server.
- The server checks the in-memory cache (working set) to determine if the requested data is available. If found in memory, the server retrieves the data from there, providing faster access.
- If the data is not in memory, the server accesses the storage engine to retrieve the data from disk. This involves reading the required data blocks from the disk into memory.
- The server processes the query and performs the necessary operations (e.g., filtering, aggregating) using the data in memory.
- The query result is sent back to the client.

## 15. MongoDB Databases

- A collection in MongoDB is a group of documents.
- A database is group of collections that exists.

## CRUD Operations

### Use the below data for practice.

```bash
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

```

### Insert document

#### - Insert 1 document

```bash
    db.collectionName.insertOne(data);
```

- Example

```bash

    db.user.insertOne({
        name: 'Babu',
        age: 44,
        city: 'Thrissur',
        location: [48.3453, 5.32345],
        hobies: ['swirming', 'playing']
    });
```

#### - Insert many document

```bash
    db.collectionName.insertMany(Array of data);
```

- Example

```bash
    db.user.insertMany(
        [
            {
                name: 'Nina Jekins',
                age: '29',
                city: 'San Francisco, United States',
                location: [40.6892, 74.0445],
                hobbies: ['Coding']
            },
            {
                name: 'Michael bura',
                age: '32',
                city: 'Utah, United States',
                location: [48.8584, 2.2945],
                hobbies: ['Writing', 'Dancing']
            }
        ]
    );

```

### Retrieve document

#### Retrieve all documents

```bash
    db.collectionName.find();
```

- Example

```bash
    db.user.find();
```

#### Filter documents

```bash
    db.collectionName.find(query);
```

- Example

```bash
    db.user.find({ name: 'Aljith' });
```

### Update document

#### Update one document

```bash
    db.collectionName.updateOne(<query>, <update>);
```

- Example

```bash
    db.user.updateOne(
        {
            name: 'Michael bura'
        },
        {
            $set: {  name: 'Jithu' }
        }
    );
```

#### update multiple documents

```bash
    db.collectionName.updateMany(<query>, <update>);
```

- Example

```bash
    db.user.updateMany(
        {
            name: 'Jithu'
        },
        {
            $set: {  state: 'Kerala' }
        }
    );
```

## 16. Query operators in MongoDB

- MongoDB operators are special keywords or symbols that have been made available by MongoDB for the use of developers.
- They add additional functionality by allowing developers to write complex queries.
- Operators starts with $ sign.

### some of the important operators

- $in, $nin, $not
- $gt , $lt, $gte, $lte , $eq, $ne
- $and, $or
- $all, $elemMatch ( Arrays )

## 17. Embedded document

- MongoDB allows us to store document within the document.
- An embedded document looks like :

```bash
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
```

### Embedded document has some limitations as well

- We can only nest up to 100 levels.
- Document size cannot exceed 16 MB.

### Querying embedded documents

```bash
    db.user.find({ 'education.university' : 'calicut' })
```

## 18. Querying Arrays in MongoDB documents

#### There are 2 ways in which we can filter.

1. Exact match

- We may want to retrieve data by filtering value that is an exact match to an array including order of elements.

```bash
    db.user.find({ hobbies: ['Dancing', 'Swimming'] })
```

2. Not Exact match

- we way want to retrieve data by filtering value that contains specified elements without considering the order

```bash
    db.user.find({ hobbies: 'Dancing' })
    db.user.find({ hobbies: { $in:  ['Dancing', 'Swimming'] } })
    # To retrieve data regardless of order
    db.user.find({ hobbies:{ $all:  ['Swimming', 'Dancing'] } })
    db.user.find({ hobbies:{ $all:  ['Dancing', 'Swimming'] } })

```

## 19. Using Query operators with MongoDB arrays

```bash
    db.user.find({ location:{$elemMatch: { $gt: 39, $lt: 45 }} })
```

- db.user.find({ location:{$elemMatch: { $gt: 39, $lt: 45 }} }): This query uses the $elemMatch operator to specify that the condition should be applied to each element in the "location" array individually.
- It matches documents where the "location" array contains at least one element that is greater than 39 and less than 45.

```bash
    db.user.find({ location: { $gt: 39, $lt: 45 } })
```

- db.user.find({ location: { $gt: 39, $lt: 45 } }): This query does not use the $elemMatch operator. Instead, it specifies the condition directly on the "location" field.
- However, when using this syntax without $elemMatch, it treats the "location" field as a whole, not individually evaluating each element of the array.
- It matches documents where the "location" field itself is greater than 39 and less than 45.

- In summary, the first query checks if any element within the "location" array satisfies the condition, while the second query checks if the "location" field as a whole satisfies the condition.

## 20. MongoDB Projections

- In MongoDB, projection refers to the process of specifying which fields of a document should be returned in the query results.
- It allows you to retrieve only the necessary data, reducing network overhead and improving performance.
- By defining a projection, you can include or exclude specific fields from the query results, shaping the structure and content of the returned documents.
- This selective retrieval helps optimize resource usage and minimizes data transfer, enabling more efficient data access and manipulation in MongoDB applications.

```bash
    # To include only name and age
    db.user.find({ name: 'Lauren Shaw' }, { name: 1, _id: 0, age: 1 });

    # We can't do like this. either both should be inclusion or exclusion (Not for _id)
    db.user.find({ name: 'Lauren Shaw' }, { name: 1, age: 0 });

    # 1 is for include projection, 0 for exclude projection


```

## 21. Working with cursor in MongoDB

### What is cursor?

- When ever we use find method we may get list of documents that match the criteria that we specified.
- However behind the scenes find method returns a pointer which points to the document object of the collection.
- This pointer is known as cursor.
- By default cursor prints the output up to 20 documents on the console.
- If there are more than 20 documents then we may have to press the key to view the results above 20.
- We can also assign the cursor in to variable and iterate manually.

```bash
    let cursor = db.user.find();

    while( cursor.hasNext()) {
        printjson( cursor.next());
    }
    # This is how we can iterate our data inside the cursor.
```

## 22. Update operators

### $currentDate

- It sets the value of field to current data, either as a date or a timestamp.

```bash
    db.users.updateOne({ name: 'Michael Baker'}, {$currentDate: { updatedAt: true}})
```

### $inc

- It is used to increment or decrement value of a particular field.
- We can increment multiple fields as well.

```bash
    db.users.updateOne({ name: 'Michael Baker' }, { $inc: { age: -2 } })
    db.users.updateOne({ name: 'Michael Baker' }, { $inc: { age: 2 } })
    db.users.updateOne({ name: 'Michael Baker' }, { $inc: { age: 10 } })
    db.users.updateOne({ name: 'Michael Baker' }, { $inc: { age: 2, score: 10 } })

```

### $min

- $min is used for if we want to update a value of a field with the minimum value.
- Means it compare both value ( current value and given value), if the current value is already minimum then it won't update, if the current value is maximum it updates the value of the field with the given value.

```bash
    Data = {
                _id: ObjectId("64b38aab7bb900f1bb11a847"),
                name: 'jithu',
                age: 17,
                city: 'Thrissur',
                location: [ 48.3453, 3.4535 ],
                hobbies: [ 'Singing', 'Reading' ]
            }

    db.users.updateOne({ name: 'jithu' }, { $min: { age: 20 }} ); # No change
    db.users.updateOne({ name: 'jithu' }, { $min: { age: 10 }} ); # It will update

```

### $max

- $Max updates the value if the given value greater than the current value.

```bash
    Data = {
                _id: ObjectId("64b38aab7bb900f1bb11a847"),
                name: 'jithu',
                age: 17,
                city: 'Thrissur',
                location: [ 48.3453, 3.4535 ],
                hobbies: [ 'Singing', 'Reading' ]
            }

    db.users.updateOne({ name: 'jithu' }, { $max: { age: 20 }} ); # It will update
    db.users.updateOne({ name: 'jithu' }, { $max: { age: 10 }} ); # No change

```

### $mul

- It is used to update a field with the value which is multiplied value ( current value \* given value )

```bash
    db.users.updateOne({ name: 'jithu' }, { $mul: { age: 2 }} );
    # age become 2 * current age

```

### $rename

- $rename is basically used for rename a specific field.

```bash
    db.users.updateOne({ name: 'jithu' }, { $rename: { score: "points" }} );
    # the field score renamed to points.

```

### $unset

- $unset is used to unset or delete a particular field that exist.

```bash
    db.users.updateOne({ name: 'jithu' }, { $unset: { points: 1 }} );
    # the field points removed from the document.

```

## 23. What is upsert option?

- upsert is used to if we are trying to update a document but if the document doesn't exist it won't update.
- In this case, we want to create a document if the document is not present
  then we can use upsert.
- upsert will create the document if couldn't able to find.
- If there is no matching results then inserts the document.

```bash
   db.users.updateOne({ name: 'ivan'}, { $set: { age: 23 } }, { upsert: true } );

```

## 24. Delete document from MongoDB.

### Delete a single document from MongoDB

```bash
    db.users.deleteOne({ name: 'Michael Baker' });
    # deleteOne is used to delete one document based on the given criteria
```

### Delete multiple document from MongoDB

```bash
    db.users.deleteMany({ age: { $gte: 30 } } );
    # deleteMany is used to delete multiple documents based on the given criteria.
```

## 25. What is data modeling?

- Data modeling is the process of understanding and analyzing our business requirements and then defining structure for our data.
- This would comprise of how we are defining the structure of data, how our data is stored, and relationships between our data.

## 26. How does data modeling work for relational databases?

- We define a schema which would dictate how our data is stored.
- We then normalize our schema to reduce the duplicates or to eliminate redundancy of data.

## 27. Advantages of data modeling with MongoDB

- Since the schema we are working with is flexible, it does not forces us to define the structure of data at the beginning itself.
- We as a developer have the leverage of iterating our data model as our application evolves and grows.
- With MongoDB, we have multiple design options that we can choose from depending on our requirements and needs.
- Changing the data model later on once our application evolves is very easy, since there is no defined structure or schema that MongoDB has. Remember it's NoSQL database.
- Flexible structure enables developers to focus on what's important and that is the working of an application.

## 28. Things to remember about the data models.

- Data modelling is a continuous and iterative process.
- Data model and schema designs are important when it comes to MongoDB or NoSQL databases.

## 29. Datatypes in MongoDB

- Double
- String
- Integer
- Boolean
- Object ID ( It is used to store document id )
- Null
- Array
- Timestamp
- Date ( it stores time in Unix time format )
- Code

## 30. Modeling our database.

- Before we think about modeling our own database, it is important that we understand our business.

### Data modeling is a 3 step process.

1. Evaluate application and requirements.
2. Defining entities and relationships.
3. Finalize the data model.

### 1. Evaluate application and requirements.

#### If our application has not yet launched:

- We need to understand who will be the stakeholders.
- What data they would like to see.
- How frequent will be the access to the data they wish to see?
- How big is the data in terms of size?
  <br>
  ( Here we are keeping in mind the frequency and the size of the data is being accessed )

#### If our application is already live:

- We need to understand who are the current stakeholders in our system.
- How are they currently using the data ?
- What is the frequency and size of the data that they are accessing

#### Getting answers to these questions will help us to understand the following

- What data is actually important from the system stand point.
- If any data is important what is the frequency in which it is accessed?
- Until what date in the past we need to have data for?

### 2. Defining entities and relationships.

- MongoDB allows data to be stored in 2 ways.
  1. Embedded
  2. Linked
- We can define relationships as below.
  1. One to One relationships having embedded documents.
  2. One to Many relationships having embedded documents.
  3. One to Many relationships having document references.

### 3. Finalize the data model.

- Here we define the model for the database, along with indexes, fields and so on.

## 31. Embedded vs Linked documents

### Embedded documents.

- MongoDB follows document approach where there are documents instead of rows as in SQL.
- Embedded documents are documents where one document is stored inside another document.

```bash
    {
        "_id": ObjectId("6123456789abcdef0123456"),
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
```

### Linked or Referenced documents.

- Referenced documents are stored in a separate collection with references to each other.

```bash
    {
        "_id": ObjectId("6123456789abcdef0123456"),
        "title": "Article Title",
        "content": "This is the content of the article.",
        "author": ObjectId("a123456789abcdef01234567"),
        "comments": [
            ObjectId("c123456789abcdef01234567"),
            ObjectId("c223456789abcdef01234567")
        ]
    }
```

### Considerations

- If the data is going to be fetched and updated together then it makes sense to embed them.
- If we will be doing lot of write operations on embedded documents, we should consider storing them as references because this would make things slower.
- If there is a need for accessing subset of data then we can mix both the approaches.
- If there are lots of informations being stored as embedded, we might even want to consider referencing.

## 32. One to One Relationship.

- One to one relationship is a type of relationship where in 1 entity is related to exactly instance of another entity and vice versa.

```bash
    // User document
    {
        "_id": ObjectId("6123456789abcdef0123456"),
        "name": "John Doe",
        "email": "johndoe@example.com",
        "profileId": ObjectId("7123456789abcdef0123456")
    }

    // Profile document
    {
        "_id": ObjectId("7123456789abcdef0123456"),
        "dob": "1990-01-01",
        "address": "123 Main Street",
        "city": "New York",
        "country": "USA"
    }
```

## 33. One to Many Relationships

- A One to Many relationship is a type of relationship when one entity has one or many related data with other entity.

```bash
    # User document
    {
        "_id": "615c1d7889a3b6b08425a7a1",
        "username": "JohnDoe",
        "email": "john@example.com",
        "posts": [
            "615c1d7889a3b6b08425a7a2",
            "615c1d7889a3b6b08425a7a3"
        ]
    }

    // First Post Document
    {
        "_id": "615c1d7889a3b6b08425a7a2",
        "title": "First Blog Post",
        "content": "This is my first blog post!",
        "author": "615c1d7889a3b6b08425a7a1"
    }

    // Second Post Document
    {
        "_id": "615c1d7889a3b6b08425a7a3",
        "title": "Second Blog Post",
        "content": "Another exciting blog post!",
        "author": "615c1d7889a3b6b08425a7a1"
    }
```

## 34. Aggregation in MongoDB?

- Aggregation means processing multiple documents in a collection to get computed results.
- Aggregation is very useful, when we have lot of data stored and we wished to process it.
- If we want to get a list of users for a particular query we may use find.
- But if we want to get list of users along with the count, in that case we will have to use aggregation.

## 35. Aggregation framework.

- While find() has its own use-case, MongoDB has an aggregation framework that allows developers to get aggregated results.
- It provides an aggregate() method using which we can get computed results.
- The aggregation framework breaks logic into simpler parts and processes each part one by one.
- This might resemble a waterfall model where the out of one stage is given as input to the next stage.
- The MongoDB Aggregation Framework is a powerful feature that allows users to perform data processing and transformation operations on documents within a collection. It offers a set of stages, such as $match, $group, $sort, $project, etc., that can be combined to create complex data pipelines for data analysis, reporting, and business intelligence tasks.

## 36. What is an aggregation pipeline?

- the aggregation pipeline in MongoDB is a powerful framework that allows you to process and transform data in a step-by-step manner.
- It's like an assembly line for data, where each stage performs a specific operation on the data and passes it to the next stage until the final result is obtained.

```bash
    db.users.aggregate( [ { $match: { age: { $lt: 25 } } }, { $group: { _id: "$city", totalUsers: { $sum: 1} } } ] )
    # $match filter the data first and pass the data to $group
    # Hers $sum is an accumulator that is used when data is grouped together
```

### The primary reasons for using MongoDB aggregation framework.

1. Data Transformation: The Aggregation Framework enables you to transform and reshape data in various ways. You can perform calculations, extract specific fields, group data, and even create entirely new documents based on the existing data.

2. Aggregations and Analytics: It is an essential tool for performing various types of aggregations, such as sum, average, count, min, max, etc., to derive meaningful insights from the data.

3. Flexibility: The Aggregation Framework is quite flexible and can handle complex data processing tasks. It allows you to chain multiple stages together in a pipeline to achieve sophisticated data transformations and analysis.

4. Performance: In many cases, using the Aggregation Framework is more efficient and faster than retrieving all the data and processing it on the client-side. It can leverage MongoDB's indexing capabilities and optimize the execution of the aggregation pipeline.

5. Reduced Network Traffic: By using the Aggregation Framework, you can reduce the amount of data transferred over the network, as you can perform data operations directly on the server side.

6. Real-time Reporting: The Aggregation Framework can be very useful for generating real-time reports and summaries of data stored in MongoDB collections.

### $match

- This is one of the stage, which is responsible for filter the data according to the criteria.

```bash
    db.users.aggregate( [ { $match: { age: { $lt: 25 } } } ] )

    db.users.find({ age: { $lt: 25 }})

    # These 2 queries will return same data
```

#### There are multiple stage operators are exist

| Aggregation Stage | Description                                           |
| ----------------- | ----------------------------------------------------- |
| $match            | Filters documents that are needed for the next stage. |
| $group            | Groups documents based on the specified field(s).     |
| $sort             | Sorts the documents in the specified order.           |
| $project          | Selects specified fields to display in the output.    |
| $skip             | Skips a specified number of documents.                |
| $limit            | Limits the number of documents in the output.         |
| $out              | Writes the resulting documents to a new collection.   |
| $unwind           | Unwinds arrays into individual documents.             |

#### There are multiple accumulators as well

| Aggregation Stage | Description                                                               |
| ----------------- | ------------------------------------------------------------------------- |
| $match            | Filters documents that are needed for the next stage.                     |
| $group            | Groups documents based on the specified field(s).                         |
| $sort             | Sorts the documents in the specified order.                               |
| $project          | Selects specified fields to display in the output.                        |
| $skip             | Skips a specified number of documents.                                    |
| $limit            | Limits the number of documents in the output.                             |
| $out              | Writes the resulting documents to a new collection.                       |
| $unwind           | Unwinds arrays into individual documents.                                 |
| $sum              | Returns the calculated sum of the specified value from all documents.     |
| $avg              | Returns the calculated average of the specified value from all documents. |
| $count            | Returns the count of documents in the aggregation pipeline.               |
| $min              | Returns the minimum value of the specified field from all documents.      |
| $max              | Returns the maximum value of the specified field from all documents.      |
| $first            | Returns the first document from the group.                                |
| $last             | Returns the last document from the group.                                 |

## 37. Operators in aggregators

- $sum

```bash
    db.users.aggregate([ { $group: { _id: '$city', totalAge: { $sum: '$age'}}}])
    # To get sum of ages city wise

    # output
    [
        { _id: 'San Jose, United States', totalAge: 23 },
        { _id: 'San Francisco, United States', totalAge: 29 },
        { _id: 'New Jersey, United States', totalAge: 20 },
        { _id: 'Las Vegas, United States', totalAge: 44 },
        { _id: 'New York, United States', totalAge: 25 }
    ]

```

- $avg

```bash
    db.users.aggregate([{ $group: { _id: '$city', average: { $avg: '$age' } } }])
    # To get average of ages city wise
```

#### For practice use this data

```bash
[
    {
    _id: ObjectId("63b50a86c7751e99599c63f7"),
    name: 'Deborah Allen',
    age: 22,
    city: 'Las Vegas, United States',
    location: [ 40.8584, 1.2945 ],
    hobbies: [ 'Swimming', 'Painting' ],
    lastApplication: ISODate("2022-08-15T09:05:00.000Z")
  },
  {
    _id: ObjectId("63b50a86c7751e99599c63f8"),
    name: 'Angela Perez',
    age: 25,
    city: 'New York, United States',
    location: [ 31.4782, 1.2245 ],
    hobbies: [ 'Woodworking', 'Reading' ],
    lastApplication: ISODate("2019-05-15T09:05:00.000Z")
  },
  {
    _id: ObjectId("63b50a86c7751e99599c63f9"),
    name: 'Michael Dsouza',
    age: 23,
    city: 'San Jose, United States',
    location: [ 40.6892, 74.0445 ],
    hobbies: [ 'Dancing' ],
    education: {
      university: 'Calfornia university',
      start: '02-2015',
      end: '02-2016',
      degree: 'BBA'
    },
    lastApplication: ISODate("2022-03-15T09:05:00.000Z")
  },
  {
    _id: ObjectId("63b50a86c7751e99599c63fa"),
    name: 'Lauren Shaw',
    age: 20,
    city: 'New Jersey, United States',
    location: [ 21.3387, 36.7645 ],
    hobbies: [ 'Cooking' ],
    lastApplication: ISODate("2022-04-15T09:05:00.000Z")
  },
  {
    _id: ObjectId("63b50a86c7751e99599c63fb"),
    name: 'Lewis Fisher',
    age: 33,
    city: 'San Jose, United States',
    location: [ 40.6892, 74.0445 ],
    hobbies: [ 'Dancing' ],
    education: {
      university: 'Calfornia university',
      start: '02-2015',
      end: '02-2016',
      degree: 'BBA'
    },
    lastApplication: ISODate("2020-02-15T09:05:00.000Z")
  },
  {
    _id: ObjectId("63b50a86c7751e99599c63fc"),
    name: 'Nina Jekins',
    age: 29,
    city: 'San Francisco, United States',
    location: [ 39.3367, 71.0345 ],
    hobbies: [ 'Coding' ],
    lastApplication: ISODate("2022-06-15T09:05:00.000Z")
  },
  {
    _id: ObjectId("63b50a86c7751e99599c63fd"),
    name: 'Michael Bura',
    age: 32,
    city: 'Utah, United States',
    location: [ 48.8584, 2.2945 ],
    hobbies: [ 'Writing', 'Dancing' ],
    lastApplication: ISODate("2020-08-15T09:05:00.000Z")
  },
  {
    _id: ObjectId("63b50a86c7751e99599c63fe"),
    name: 'Michael Baker',
    age: 39,
    city: 'San Francisco, United States',
    location: [ 39.3367, 71.0345 ],
    hobbies: [ 'Dancing' ],
    lastApplication: ISODate("2022-04-15T09:05:00.000Z")
  },
  {
    _id: ObjectId("63b50efcc7751e99599c6400"),
    name: 'Tim Johnson',
    age: 34,
    city: 'San Jose, United States',
    location: [ 40.6892, 74.0445 ],
    hobbies: [ 'Dancing', 'Swimming' ],
    education: {
      university: 'Calfornia university',
      start: '02-2015',
      end: '02-2016',
      degree: 'BBA'
    },
    lastApplication: ISODate("2022-01-15T09:05:00.000Z")
  }
]
```

- $first

```bash
    # We want to get the date of the first job application received from certain city
    db.users.aggregate([{$group: { _id: '$city', firstApplication: { $first: '$lastApplication'}}}])

    # In this case we won't get the first application based on the exact date or time for that we have to sort the field.

    db.users.aggregate([{ $sort: { lastApplication: 1 } }, { $group: { _id: '$city', firstApplication: { $first: '$lastApplication' } } }])

```

- $last

```bash
    db.users.aggregate([{ $sort: { lastApplication: -1 } }, { $group: { _id: '$city', firstApplication: { $last: '$lastApplication' } } }])
```

- $project

```bash
    db.users.aggregate([{ $project: { name: 1, age: 1 }}, { $match: { age: { $lt: 30 }}}] );
    # $project is used to exclude or include certain fields.

    db.users.aggregate([{ $project: { appliedMonth: { $month: '$lastApplication' }}}])
    # To get, in which month the user applied for the job.

    db.users.aggregate([{ $project: { appliedMonth: { $month: '$lastApplication' }, appliedYear: { $year: '$lastApplication'}}}])
    # To get, in which year the user applied for the job.

    db.users.aggregate([{ $project: { name: 1, appliedMonth: { $month: '$lastApplication'}} }, { $group: { _id: { appliedMonth: '$appliedMonth'}, count: {$sum: 1} }}])
    # To get the count of users who applied for the job in the same month.

    db.users.aggregate([{ $match: {city: 'San Jose, United States'} }, { $project: { city: 1, appliedYear: {$year: '$lastApplication'} }}, { $group: { _id: { appliedYear: '$appliedYear'}, count: { $sum: 1}}}])
    # To get the count of users who applied for job in a particular year from a particular place.

    # Output look like this
    [
        { _id: { appliedYear: 2022 }, count: 2 },
        { _id: { appliedYear: 2020 }, count: 1 }
    ]


    db.users.aggregate([{ $match: {city: 'San Jose, United States'} }, { $project: { city: 1, appliedMonth: {$month: '$lastApplication'} }}, { $group: { _id: { appliedMonth: '$appliedMonth'}, count: { $sum: 1}}}])
    # To get the count of users who applied for job in a particular month from a particular place.

    # Output look like this
    [
        { _id: { appliedMonth: 2 }, count: 1 },
        { _id: { appliedMonth: 1 }, count: 1 },
        { _id: { appliedMonth: 3 }, count: 1 }
    ]

```

```bash
    db.users.aggregate([{ $project: { year: {$year: '$lastApplication'} } }, { $group: { _id: { year: '$year'}, count: {$sum: 1} }}]);
    # To get the stats of users who applied the job in a particular year.

    # Output look like this
    [
        { _id: { year: 2020 }, count: 2 },
        { _id: { year: 2022 }, count: 6 },
        { _id: { year: 2019 }, count: 1 }
    ]

    db.users.aggregate([{ $project: { year: {$year: '$lastApplication'}, month: { $month: '$lastApplication'} } }, {$match: { year: 2022 }}, { $group: { _id: { month: '$month'}, count: {$sum: 1} }}])
    # To get the stats of users who applied the job in a particular month in the specified year.

    # Output look like this
    [
        { _id: { month: 6 }, count: 1 },
        { _id: { month: 1 }, count: 1 },
        { _id: { month: 4 }, count: 2 },
        { _id: { month: 3 }, count: 1 },
        { _id: { month: 8 }, count: 1 }
    ]

```

- $limit

```bash
    db.users.aggregate([{ $group: { _id: '$city', totalUsers: { $sum: 1}}}, { $sort: { totalUsers: -1}}, { $limit: 3}])
    # To get the top 3 cities having highest users available.
```

- $skip

```bash
    db.users.aggregate([{ $group: { _id: '$city', totalUsers: { $sum: 1}}}, { $sort: { totalUsers: -1}}, { $skip: 3}])
    # To get the top cities having highest users available except the first 3
```

## 38. $lookup

- $lookup is a powerful stage using which we can combine the information of 2 collection.
- If you are coming from SQL background you can think of lookup as left out join.
- With lookup we will get all the fields from the left of the collection, with the matching entries on the right of the collection.

```bash
    # Syntax
    {
        $lookup: {
            from: <Collection to join>,
            localField: <field from the input documents>,
            foreignField: <field from the documents of the 'from' collection>,
            as: <output array field'
        }
    }

    # Example
    {
        $lookup: {
            from: 'fairs',
            localField: 'city',
            foreignField: 'location',
            as: 'fairInfo'
        }
    }
```

```bash
    db.users.aggregate({ $lookup: { from: 'fairs', localField: 'city', foreignField: 'location', as: 'fairsDoc' } })

    # This is how 1 document looks like
    {
        _id: ObjectId("63b50efcc7751e99599c6400"),
        name: 'Tim Johnson',
        age: 34,
        city: 'San Jose, United States',
        location: [ 40.6892, 74.0445 ],
        hobbies: [ 'Dancing', 'Swimming' ],
        education: {
            university: 'Calfornia university',
            start: '02-2015',
            end: '02-2016',
            degree: 'BBA'
        },
        lastApplication: ISODate("2022-01-15T09:05:00.000Z"),
        fairsDoc: [
            {
                _id: ObjectId("64bcb3673601f743752b16a7"),
                name: 'California Fair',
                location: 'San Jose, United States',
                type: 'Open to all',
                date: ISODate("2022-08-15T09:05:00.000Z")
            }
        ]
    }

```

### Something we have to notice while using $lookup

- The 'from' collection that is specified has to be in the same database on which we are running the aggregation.
- The values in 'localfield' and 'foreignfield' are matched basis of equality.
- The 'as' we specify should be a valid document name.
- if any value pre-exist in the name we specified in the document then that field will be overridden.

## 39. $out

- $out is a stage in aggregation which allows us to create a new collection from the existing one.
- What it does is it will take the copy of all the records from the current collection and create a new collection with the copied documents
- basically it creates a duplicated collection.

```bash
    # syntax
    {
        $out: <new collection name>
    }

    # Example
    db.users.aggregate({ $out: 'temp' });
    # If the collection already exist with the name temp, in that case it replace the data with the new data.

    db.users.aggregate({ $match: { _id: ObjectId("63b50efcc7751e99599c6400")}}, { $out: 'temp' } );
    # To create a new collection with the filtered document

```

### How can we specify collection to be created in new database?

```bash
    # Syntax
    {
        $out: {
            db: <"output db">,
            coll: <"output collection">
        }
    }

    # Example
    db.users.aggregate({ $out: { db: 'tempDB', coll: 'temp' } });

```

## 40. Evaluating query performance in MongoDB

### MongoDB provides a method called 'explain'

- This method enables us to see the performance of a query
- And this method provide some stats which enables us to check how much work our query did.

```bash
    db.indexDemo.explain().find({ name: 'Elvin_0'})

```

### There are different mode in which we can run explain

#### 1. execution stats mode

- it gives us some more information around the parameters and what exactly this query did.

```bash
db.indexDemo.explain('executionStats').find({ name: 'Elvin_0'})

```

## 41. What is indexing?

- A real world database will usually consist of lots of data around our application.
- With lots of data it is important that we should be able to quickly find the result that we need.

```bash
    # Query
    db.users.find({ name: 'Elvin_0' })

    # stats
    docsExamined: 20000
```

- In the above scenario to find a user by name it iterated over the database 20k times. which is not an ideal way to find it.
- If the database size increases our queries will become super slow.
- How do we solve this problem ? well using indexes.

### Indexes

- Indexes organize the data in such a way that they are ordered, making it easier to retrieve and work with.

### How does indexes work

- Index behind the scene stored as a separate object, which can be used to query data.
- Indexes do not modify the order of the data, that is stored in the database.
- But instead it creates a pointer which points to the existing document.
- Indexes in MongoDB use B-TREE data structure to store indexes.
- B-TREE stands for balance tree.

#### Things to know

- Indexes make accessing data easier and faster. It improves overall system performance.
- Without indexes to retrieve any information, the whole collection wil be scanned.
- MongoDB uses a B-TREE data structure to store indexes.
- This structure resembles the form of a tree and it points to the actual data.
- Indexes stores data in an organized way for easy access. Here, actual data is not organized, but indexes are stored separately and it consists of points to actual data.

### The default Index in MongoDB

- MongoDB has an index by default created on the collection, and that is on the \_id field.

```bash
    # To get indexes
    db.users.getIndexes();

    { v: 2, key: { _id: 1 }, name: '_id_' }
    # key: { _id: 1 } is the sorting order
    # name: '_id_' is the index name
```

#### Observations

- Here, name generated is the default name that is given to the index
- Key is the key in the collection based on which the indexing is done.
- The value for this key defines the sorting order in which the indexes are sorted. 1 stands for small to big ascending and -1 means reverse.

## 42. Create Index

- MongoDB allows us to create indexes for the fields that we need.

```bash
    # syntax
    db.<"collection-name">.createIndex({ <"key-name">: [-1 | 1]}, <Options>)

    # Example
    db.users.createIndex({ name: 1 });

```

## 43. Delete Index

```bash
    # syntax
    db.users.dropIndex(<"index-name">);

    # Example
    db.users.dropIndex('city_-1');
```

## 44. What are the different index options

- option is nothing but 1 more parameter which enables us to specify more informations about indexes.

#### 1. Name option

- by default mongodb gives a name to the index.
- But in some scenario we might need to give a specific name for the index.
- This is where name option comes in to the picture.

```bash
    db.users.createIndex({ city: 1 }, { name: 'city_index' } );
    # name option enables us to specify the name of the index
```

#### 2. Unique option

- Using unique option, we can make sure that the underlying key has no duplicate values in the specified collection.

```bash
    db.users.createIndex({ city: 1 }, { name: 'city_index', unique: true } );
    # either we can combine name and unique or even if we only specify unique, still it works fine.
```

#### 3. background option

- If we have an application that has huge data in the database or collection. if we wish to create indexes, so index creation is a process and it is very resource intensive and time consuming operation.
- Because of these while the index creation process is on going the whole database would be unavailable.
- So if our application is live we cannot afford downtime while our indexes have been created.
- MongoDB has this option called "background", which we can specify to get indexes been created in the background.
- This is very very helpful if our collection is really huge and we wish to create indexes without effecting the database availability and the application uptime.

```bash
    db.users.createIndex({ city: 1 }, { name: 'city_index', background: true } );
```

## 45. Indexes and their types

### There are 3 types of indexes

#### 1. Single field indexes

- Single field indexes are indexes that exist on a single field.

#### 2. Compound indexes

- These are the indexes where the single index hold references to multiple fields in the document.

#### 3. Multikey indexes

- This is for arrays where index key is created for each element in an array, and it helps in efficient and faster queries in terms of performance against arrays.

## 46. Compound indexes

- In MongoDB we are allowed to create indexes on multiple fields and these indexes are known as compound indexes.

```bash
    # Syntax
    db.collection.createIndex({
        <"key-name"> : [ -1 | 1 ],
         <"key-name"> : [-1 | 1],
         ....
    })

    # Example
    db.users.createIndex({ name: 1, city: 1})
```

### Conclusion

- Compound indexes are indexes that are created using multiple fields which are used to make queries using multiple fields faster.
- Compound indexes are helpful in queries that involve sorting too.
- With compound indexing, the order of fields specified in indexing matters since that will also decide the performance of queries too.

## 47. Index performance

- when ever we are using indexes to fetch results, there are generally 3 types queries that we write.
- The queries can be:
  1. based on equality
  2. based on sorting
  3. based on range

### 1. Equality

- Equality involves we writing something to fetch the exact results to a value that we specify.

```bash
    # Example
    db.users.find({ name: 'Aljith KJ' })
    db.users.find({ name: { $eq: 'Aljith KJ' } })
```

- Order in which we create index does not matter, we will get the same performance.

### 2. Sorting

- Sorting in queries determines the order of results
- Usually, when writing queries, sorting follows equality matches, because equality matches reduces the number of documents that need to be sorted.

### 3. Range

- Range involves the queries where we want to get data that meet a particular range.
- These fields scan documents and fields and look for matches that satisfy the bound specified in the query.

```bash
    # Example
    db.users.find({ salary: { $gte: 20000 }})
```

## 48. ESR rule

- MongoDB has an ESR which stands for Equality, Sorting, and Range
- It says that whenever we have a query using all 3 functions, the index fields are to be specified in the ESR order.

```bash
    db.users.find({ city: 'Bangalore', salary: { $gt: 20000}}).sort({ name: -1})
    # If we have a query like this, In that case we should create an index like below one

    db.users.createIndex({ city: 1, name: -1, salary: 1 })
    # This is the index created by using ESR rule
```

- This is the rule which will enable us to have optimum performance.

---

**Scale Up:** Suitable when a system's workload is expected to grow within the capacity limits of a single, powerful machine. This is common in databases that benefit from more resources like RAM or CPU.
**Scale Out:** Suitable when a system needs to handle a rapidly growing workload or when fault tolerance and redundancy are crucial. Web applications, cloud services, and distributed databases often benefit from scaling out.

# NOSQL

NoSQL (“non SQL” or “not only SQL”) databases were developed in the late 2000s with a focus on scaling, fast queries, allowing for frequent application changes, and making programming simpler for developers. Relational databases accessed with SQL (Structured Query Language) were developed in the 1970s with a focus on reducing data duplication as storage was much more costly than developer time. SQL databases tend to have rigid, complex, tabular schemas and typically require expensive vertical scaling.

# What are the benefits of NoSQL databases?

# Flexible data models

NoSQL databases typically have very flexible schemas. A flexible schema allows you to easily make changes to your database as requirements change. You can iterate quickly and continuously integrate new application features to provide value to your users faster.

# Horizontal scaling

Most SQL databases require you to scale-up vertically (migrate to a larger, more expensive server) when you exceed the capacity requirements of your current server. Conversely, most NoSQL databases allow you to scale-out horizontally, meaning you can add cheaper commodity servers whenever you need to.

# Fast queries

Queries in NoSQL databases can be faster than SQL databases. Why? Data in SQL databases is typically normalized, so queries for a single object or entity require you to join data from multiple tables. As your tables grow in size, the joins can become expensive. However, data in NoSQL databases is typically stored in a way that is optimized for queries. The rule of thumb when you use MongoDB is data that is accessed together should be stored together. Queries typically do not require joins, so the queries are very fast.

# Easy for developers

Some NoSQL databases like MongoDB map their data structures to those of popular programming languages. This mapping allows developers to store their data in the same way that they use it in their application code. While it may seem like a trivial advantage, this mapping can allow developers to write less code, leading to faster development time and fewer bugs.

---

**What are the drawbacks of NoSQL databases?**

What are the drawbacks of NoSQL databases?
One of the most frequently cited drawbacks of NoSQL databases is that they don’t support ACID (atomicity, consistency, isolation, durability) transactions across multiple documents. With appropriate schema design, single-record atomicity is acceptable for lots of applications. However, there are still many applications that require ACID across multiple records.

To address these use cases, MongoDB added support for
multi-document ACID transactions
in the 4.0 release, and extended them in 4.2 to span sharded clusters.

Since data models in NoSQL databases are typically optimized for queries and not for reducing data duplication, NoSQL databases can be larger than SQL databases. Storage is currently so cheap that most consider this a minor drawback, and some NoSQL databases also support compression to reduce the storage footprint.

Depending on the NoSQL database type you select, you may not be able to achieve all of your use cases in a single database. For example, graph databases are excellent for analyzing relationships in your data but may not provide what you need for everyday retrieval of the data such as range queries. When selecting a NoSQL database, consider what your use cases will be and if a general purpose database like MongoDB would be a better option.

---

# Some instance where nosql might be preferred over sql

Content Management Systems (CMS):

Use Case: CMS platforms where content structures can vary widely, and users need flexibility in defining content types and attributes.
Real-Time Big Data Analytics:

Use Case: Systems that handle large volumes of real-time data and require quick and efficient data processing for analytics, such as monitoring and logging applications.
Social Media Platforms:

Use Case: Social networks and applications with dynamic and evolving data models, where user profiles, posts, and relationships can change frequently.
Internet of Things (IoT) Applications:

Use Case: IoT applications with a massive number of connected devices generating a variety of data types, including sensor data and telemetry.
E-commerce Product Catalogs:

Use Case: E-commerce platforms where product information can vary, and there is a need for rapid updates to product catalogs.
Gaming Leaderboards:

Use Case: Online gaming platforms with leaderboards that require frequent updates based on user activities and scores.
Graph Databases for Relationships:

Use Case: Applications dealing with complex relationships, such as social network analysis, fraud detection, or recommendation systems.
Log and Event Data:

Use Case: Systems that handle large amounts of log and event data, where high write throughput and efficient querying are essential for analysis.
Mobile Applications:

Use Case: Mobile apps that need to sync data across devices, especially in scenarios where network connectivity is intermittent.

---

# Why BSON and not JSON

MongoDB uses BSON (Binary JSON) instead of standard JSON for several reasons related to efficiency, flexibility, and the specific requirements of MongoDB's storage and querying system:

1. **Binary Format:**

   - BSON is a binary representation of JSON-like documents. Binary encoding allows for more compact storage and faster data traversal compared to plain text JSON. This is important for database performance, especially when dealing with large volumes of data.

2. **Rich Data Types:**

   - BSON supports additional data types that are not natively supported in JSON, such as Date, Binary data, Regular Expressions, and more. These additional data types are important for representing complex data structures efficiently in MongoDB.

3. **Efficient Storage:**

   - BSON is designed to be more compact in terms of storage compared to JSON. The binary format eliminates the need for repeated field names in every document, as the field names are included only once in the BSON structure.

4. **Querying and Indexing:**

   - BSON allows MongoDB to efficiently index and query documents. The binary format makes it easier for MongoDB to perform operations like range queries and sorting directly on the encoded data.

5. **Extended JSON:**

   - While BSON is used internally, MongoDB provides an Extended JSON format for interacting with users and applications. Extended JSON is a human-readable representation that closely resembles standard JSON but includes some additional BSON data types.

6. **Integration with Programming Languages:**

   - BSON maps well to the data types of many programming languages, making it easier to integrate MongoDB with various programming languages.

7. **Schema Flexibility:**
   - BSON supports a flexible schema, allowing documents within a collection to have different fields. This flexibility is more suited to the dynamic nature of many MongoDB use cases.

It's important to note that while MongoDB uses BSON internally, when interacting with MongoDB through drivers or the shell, you often work with a representation that is JSON-like (Extended JSON). The conversion between BSON and JSON-like formats is handled transparently by the MongoDB drivers and tools.

---

# When a query is executed in MongoDB, the flow generally follows these steps:

- The query is received by the MongoDB server.

- The server checks the in-memory cache (working set) to determine if the requested data is available. If found in memory, the server retrieves the data from there, providing faster access.

- If the data is not in memory, the server accesses the storage engine to retrieve the data from disk. This involves reading the required data blocks from the disk into memory.

- The server processes the query and performs the necessary operations (e.g., filtering, aggregating) using the data in memory.

- The query result is sent back to the client.
