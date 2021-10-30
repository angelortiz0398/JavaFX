package controlador;

import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;

public class autenticadoController implements Initializable {
	@FXML
	private Label nombreCampo;
	@FXML
	private Label correoCampo;
	@FXML
	private Label passCampo;
	@FXML
	private Label telCampo;

	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		// TODO Auto-generated method stub
		try {

			String url = "jdbc:mysql://localhost:3306/tienda";
			String username = "root";
			String password = "Bases2021";
			Connection connection = DriverManager.getConnection(url, username, password);
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * FROM usuario");
			while (rs.next()) {
				int idusuario = rs.getInt("idusuario");
				int idrol = rs.getInt("idrol");
				String nombre = rs.getString("nombre");
				String tipo_documento = rs.getString("tipo_documento");
				String direccion = rs.getString("direccion");
				double telefono = rs.getDouble("telefono");
				String email = rs.getString("email");
				String passwd = rs.getString("passwd");
				nombreCampo.setText(nombre);
				correoCampo.setText(email);
				passCampo.setText(passwd);
				telCampo.setText(String.valueOf(telefono));
			}
			rs.close();
			statement.close();
			connection.close();

		} catch (SQLException ex) {
			System.out.println(ex);
		}

	}
}
