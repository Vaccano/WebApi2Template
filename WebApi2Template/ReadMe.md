REPRO STEPS

1. Setup, or use an existing, Sql Server Database (I am using Sql Server 2012)

2. Run the script under solution items called "Database Setup Script.sql"

3. Open WebApi2Template\Web.Config
    3.1 Find the connection string section and replace the server name (Called "YourServerNameHere") with your server name.

4. Repeat step 3 with DataAccessLayer\App.config (optional: This is a design time connection)

5. Run the project and navigate a Chrome to http://localhost:58723/api/WebApi2Template/Origins (Note your port will likely be different.)

Result: "Unable to create a null constant value of type 'DataContracts.StateContract'. Only entity types, enumeration types or primitive types are supported in this context.",

NOTE: The call to ProjectTo is in WebAPi2TemplateDataAccess.  It also has a commented out call that works fine without automapper.
