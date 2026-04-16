
import java.sql.Connection;
import java.sql.DriverManager;

public class testDB {
    public static void main(String[] args) {
        try {
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/testdb",
                "root",
                "Anshika@8126"
            );

            System.out.println("Connected Successfully ✅");

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
