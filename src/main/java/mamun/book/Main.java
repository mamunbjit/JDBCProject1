package mamun.book;

public class Main {

    public static void main(String args[]) {
        DBOperations dbObj = new DBOperations();
        dbObj.doConnectDB();
        dbObj.fetchData();
    }
}
