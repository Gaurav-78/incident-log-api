# incident-log-api
## **Overview**
This is a RESTful API built with **Ruby on Rails** that allows users to **log, retrieve, and delete AI safety incidents**. It provides CRUD operations for managing incidents with a **PostgreSQL database**.

---

## **Features**
✅ Create new AI safety incidents  
✅ Retrieve all incidents  
✅ Retrieve a specific incident by ID  
✅ Delete an incident by ID  
✅ Input validation and error handling  

---

## **Tech Stack**
- **Backend:** Ruby on Rails (API mode)
- **Database:** PostgreSQL
- **ORM:** ActiveRecord
- **Tools:** Postman / Curl (for API testing)

---

## **Setup Instructions**

### **1. Install Dependencies**
Ensure you have **Ruby (3.x)** and **Rails (7.x)** installed. If not, install them:


Install Ruby via rbenv
brew install rbenv
rbenv install 3.2.2
rbenv global 3.2.2

# Install Rails
gem install rails
'
'
'''

#clone this repository
-git clone <repository-url>
-cd incident_log_api


Install the required gems:
bundle install


2. Configure Database
Edit the database configuration in config/database.yml if needed:
default: &default
  adapter: postgresql
  encoding: unicode
  pool: 5
  username: postgres
  password: password
  host: localhost

development:
  <<: *default
  database: incident_log_api_development

test:
  <<: *default
  database: incident_log_api_test


3. Set Up the Database
Run the following commands:

# Create the database
rails db:create

# Run migrations
rails db:migrate

# (Optional) Seed the database with sample data
rails db:seed


4. Start the Server
 rails server


#######################################################

API Endpoints
1️⃣ Get All Incidents
Method: GET

URL: /incidents
Response (200 OK):
[
  {
    "id": 1,
    "title": "Login failure",
    "description": "Users are unable to log in using valid credentials.",
    "severity": "high",
    "reported_at": "2025-04-02T18:00:00Z"
  }
]


2️⃣ Create a New Incident
Method: POST

URL: /incidents

Headers:

Content-Type: application/json

Request Body:
{
  "incident": {
    "title": " Model Bias",
    "description": "The model showed unfair bias towards certain demographics.",
    "severity": "High"
  }
}

3️⃣ Get a Specific Incident
Method: GET

URL: /incidents/{id}

Example: /incidents/2

Response (200 OK):

{
  "id": 2,
  "title": " Model Bias",
  "description": "The model showed unfair bias towards certain demographics.",
  "severity": "High",
  "reported_at": "2025-04-02T18:05:00Z"
}

4️⃣ Delete an Incident
Method: DELETE

URL: /incidents/{id}

Example: /incidents/2

Response (204 No Content): No response body

If ID doesn’t exist (404 Not Found):

{
  "error": "Incident not found"
}



################    Testing in Postman     ###################
Open Postman

Create a new request

Set the method (GET, POST, DELETE)

Enter the URL (http://localhost:3000/incidents)

For POST requests, select "Body" → "Raw" → JSON format

Click "Send" and check responses




################  Troubleshooting   #######################
Database Issues: Ensure PostgreSQL is running and configured properly.

Migrations Not Applied: Run:

-rails db:migrate
-rails db:seed

Server Not Running? Start with:
-rails server
Check Logs for Errors: Run:
-rails logs

