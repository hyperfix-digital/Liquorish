/*******************************************************************************
 * Hyperfix Digital
 *******************************************************************************
 * 
 * Liquorish Server
 * Date: 05/05/2022
 * 
 * Author:
 * 		Anthony Mesa
 * 
 * Contributors:
 * 		
 * 
 * This server provides back end API capabilities for the Liquorish front end
 * application.
 * 
 ******************************************************************************/

/*******************************************************************************
 * Imports
 ******************************************************************************/

// Hapi provides server page routing for incoming requests.
import "hapi"

// Tedious provides database connection and command execution.
import "tedious"

/*******************************************************************************
 * Server Class
 ******************************************************************************/
class Server {

	page_server: null
	
	constructor(){
	}

	init_db(): number {
		return 0;
	}

	init_server(): number {
		return 0;
	}

	start(): void {
		this.init_db()
		this.init_server()
	}
}

const server = new Server();
server.start()