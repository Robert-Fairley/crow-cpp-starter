#include "crow.h"

int main() {
	crow::SimpleApp app;

	CROW_ROUTE(app, "/")([](){
		return "<h1>Hello, world!</h1>";
	});

	app.port(5005).multithreaded().run();
}
