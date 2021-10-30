module Login {
	requires javafx.controls;
	requires javafx.fxml;
	requires javafx.graphics;
	requires javafx.base;
	requires java.sql;
	requires java.desktop;
	opens principal to javafx.graphics, javafx.fxml;
	opens controlador to javafx.graphics, javafx.fxml;
	opens vista to javafx.graphics, javafx.fxml;
}