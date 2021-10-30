package controlador;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;
import javafx.stage.Window;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

import javafx.event.ActionEvent;
import javafx.event.Event;
import javafx.scene.control.PasswordField;

public class loginController {
	@FXML
	private TextField usuarioTexto;
	@FXML
	private PasswordField contraseniaTexto;
	@FXML
	private Button inicioBoton;

	// Event Listener on Button[#inicioBoton].onAction
	@FXML
	public void iniciarSesion(ActionEvent event) {
		testMySQLDriver();

		try {

			String url = "jdbc:mysql://localhost:3306/tienda";
			String username = "root";
			String password = "Bases2021";
			Connection connection = DriverManager.getConnection(url, username, password);
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * FROM usuario");

			if (!usuarioTexto.getText().isEmpty() && !contraseniaTexto.getText().isEmpty()) {
				String usuario = usuarioTexto.getText();
				String pass = contraseniaTexto.getText();
				while (rs.next()) {

					int idusuario = rs.getInt("idusuario");
					int idrol = rs.getInt("idrol");
					String nombre = rs.getString("nombre");
					String tipo_documento = rs.getString("tipo_documento");
					String direccion = rs.getString("direccion");
					double telefono = rs.getDouble("telefono");
					String email = rs.getString("email");
					String passwd = rs.getString("passwd");

					if (usuario.equals(email) && pass.equals(passwd)) {
						loadStage("/vista/autenticado.fxml", event);

					} else {
						JOptionPane.showMessageDialog(null,
								"Error al iniciar sesion, Sus datos de acceso son incorrectos", "Advertencia",
								JOptionPane.WARNING_MESSAGE);
					}
				}
			} else {
				JOptionPane.showMessageDialog(null, "Error al iniciar sesion, Introduce datos", "Advertencia",
						JOptionPane.WARNING_MESSAGE);
			}

			rs.close();
			statement.close();
			connection.close();

		} catch (SQLException ex) {
			System.out.println(ex);
		}
	}

	@SuppressWarnings("deprecation")
	private static void testMySQLDriver() {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (Exception ex) {
			System.out.println("Error, no se ha podido cargar MySQL JDBC Driver");
		}
	}

	private void loadStage(String URL, Event event) {
		try {
			// ((Node) (event.getSource())).getScene().getWindow().hide();

			Object eventSource = event.getSource();
			Node sourceAsNode = (Node) eventSource;
			Scene viejaEscena = sourceAsNode.getScene();
			Window ventana = viejaEscena.getWindow();
			Stage stage = (Stage) ventana;

			Pane root = (Pane) FXMLLoader.load(getClass().getResource(URL));
			Scene escena = new Scene(root);
			stage.setScene(escena);
		} catch (IOException e) {
			// TODO: handle exception
			// Logger.getLogger(loginController.class.getName()).log(Level.SEVERE, null, e);
		}
	}
}
