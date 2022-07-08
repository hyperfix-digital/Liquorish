# Liquorish

## Things to do differently this time:

- Get ssl certificate so that we can use crypto functions on front end (for password hashing)
OR
- Figure out login logic using Auth0

- Set up swagger for displaying and running API commands
- Restructure the API into classes for each entity that provides crud operations
- User MaterialUI for UI development
- Use geolocation retrieved from web browser to filter local bars
- break api routes into individual files within a api routes folder. then with express, iterate through those folder files, and append those routes defined within them to the original express object.

data entities:

bar, bar_drinks, bar_pass, drink, drink_ingredients, ingredients, owners, owner_passwords, saved_drinks, tab_drinks, tabs, users, users_pass

Compile the project with:
```
tsc index.ts
```

Run the server:
```
npm start
```
