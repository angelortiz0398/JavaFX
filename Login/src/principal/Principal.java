package principal;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

public class Principal extends Application{

	public Principal() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		launch(args);
	}

	@Override
	public void start(Stage arg0) throws Exception {
		// TODO Auto-generated method stub
		HBox root = (HBox)FXMLLoader.load(getClass().getResource("/vista/login.fxml"));
		Scene escena = new Scene(root,800,600);
		arg0.setScene(escena);
		arg0.setTitle("Login");
		arg0.show();
	}

}
