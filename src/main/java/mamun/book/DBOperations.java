package mamun.book;
import java.sql.*;

public class DBOperations {
    Connection conn;
    public void doConnectDB() {
        String connectionStr = "jdbc:mysql://localhost:3306/"+Utils.DB_NAME;
        String userName = "root";
        String password = "";
        try {
            conn = DriverManager.getConnection(connectionStr, userName, password);
            System.out.println("DB Connection is seccussful!");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void fetchData() {
        try {

            String query = "SELECT * FROM publisher JOIN books ON publisher.book_id = books.id";
            PreparedStatement queryStmt = conn.prepareStatement(query);
            ResultSet resultSet = queryStmt.executeQuery();


            while (resultSet.next()) {

                int bookId = resultSet.getInt(Utils.COLUMN_BOOKID);
                String publisherName = resultSet.getString(Utils.COLUMN_PUBLISHERNAME);
                String contactEmail = resultSet.getString(Utils.COLUMN_PUBLISHEREMAIL);
                String bookName = resultSet.getString(Utils.COLUMN_BOOKNAME);
                String author = resultSet.getString(Utils.COLUMN_AUTHOR);
                String genre = resultSet.getString(Utils.COLUMN_GENRE);

                System.out.println("Book ID: " + bookId);
                System.out.println("Publisher Name: " + publisherName);
                System.out.println("Contact Email: " + contactEmail);
                System.out.println("Book Name: " + bookName);
                System.out.println("Author: " + author);
                System.out.println("Genre: " + genre);
                System.out.println();
            }

            resultSet.close();
            queryStmt.close();

        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }
}
