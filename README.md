# Login and Registration System using JSP, Servlets, and MySQL

This project is a simple web-based Login and Registration system built using JSP, Servlets, and MySQL. The system allows users to register an account and log in securely.

## Features
- User registration with validation
- Secure login with session management
- MySQL database integration
- Logout functionality

## Technologies Used
- **Backend**: Java, JSP, Servlets
- **Database**: MySQL Workbench
- **Server**: Apache Tomcat
- **IDE**: Eclipse

---

## Prerequisites
Before running the project, ensure you have the following installed:
1. **JDK (Java Development Kit) 8 or later**
2. **Apache Tomcat (Version 9 or later)**
3. **MySQL Workbench**
4. **Eclipse IDE** (or any other Java-supported IDE)
5. **JDBC Driver** for MySQL (Connector/J)

---

## Database Setup
1. Open **MySQL Workbench** and create a new database:
   ```sql
   CREATE DATABASE userdb;
   ```
2. Create a `users` table with the following structure:
   ```sql
   CREATE TABLE users (
       id INT AUTO_INCREMENT PRIMARY KEY,
       username VARCHAR(50) UNIQUE NOT NULL,
       email VARCHAR(100) UNIQUE NOT NULL,
       password VARCHAR(255) NOT NULL
   );
   ```
3. Insert a test user (optional):
   ```sql
   INSERT INTO users (username, email, password) VALUES ('testuser', 'test@example.com', 'testpass');
   ```

---

## Project Setup & Execution

### **1. Clone the Repository**
```sh
git clone https://github.com/your-repository-url.git
cd your-project-folder
```

### **2. Configure Database Connection**
Update the database connection details in `DBConnection.java`:
```java
private static final String DB_URL = "jdbc:mysql://localhost:3306/userdb";
private static final String DB_USER = "root";
private static final String DB_PASS = "your_password";
```

### **3. Add MySQL Connector JAR**
- Download MySQL Connector/J from [here](https://dev.mysql.com/downloads/connector/j/)
- Copy the `.jar` file to `WebContent/WEB-INF/lib/` (or `src/main/webapp/WEB-INF/lib/` for Maven projects)
- Right-click the project in Eclipse → **Build Path** → **Add External JARs** → Select the MySQL Connector JAR

### **4. Deploy on Tomcat**
1. Open Eclipse and import the project.
2. Add Tomcat Server:
   - Go to **Window** → **Preferences** → **Server** → **Runtime Environments** → **Add**.
   - Select **Apache Tomcat** and set the installation directory.
3. Deploy the project:
   - Right-click the project → **Run As** → **Run on Server** → **Select Tomcat**.

### **5. Access the Application**
- Open a browser and navigate to:
  - **Login Page**: `http://localhost:8080/YourProject/login.jsp`
  - **Registration Page**: `http://localhost:8080/YourProject/register.jsp`

---

## File Structure
```
YourProject/
├── src/
│   ├── com.yourpackage/
│   │   ├── LoginServlet.java
│   │   ├── RegisterServlet.java
│   │   ├── LogoutServlet.java
│   │   ├── DBConnection.java
├── WebContent/
│   ├── index.jsp
│   ├── login.jsp
│   ├── register.jsp
│   ├── welcome.jsp
│   ├── WEB-INF/
│   │   ├── web.xml
│   │   ├── lib/
│   │   │   └── mysql-connector-java.jar
```

---

## Troubleshooting
- **JSP file not found error**: Ensure JSP files are in `WebContent/` (or `webapp/` for Maven projects).
- **Database connection issues**: Verify database credentials and ensure MySQL is running.
- **Tomcat errors**: Try cleaning the project (`Project → Clean`) and restarting Tomcat.

---

## License
This project is open-source and available under the MIT License.

