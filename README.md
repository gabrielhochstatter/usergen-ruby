# Random User Generator

This script generates .json files with a user-specified number of randomized user objects. 

Here's an example of a randomized user:

```json
    {
        "id": "1",
        "firstName": "Ehman",
        "lastName": "Benil",
        "username": "ehman_benil",
        "email": "ehman.b@notrealmail.com",
        "password": "???", This will always be '???'
        "createdAt": "2018-10-05T09:32:38+01:00",
        "lastLogin": "2018-10-05T09:32:38+01:00",
        "isVerified": false
    }
```

For an example of an output file see `/output/exampleOutput.txt`

## How To Use

Dependencies: All you need is Ruby!

- Download or clone this repo
- Run `ruby UserGen.rb` from inside the project directory
- Follow the prompts in the terminal.
- Find your fancy fake data in the `output` folder
