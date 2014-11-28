package adam.angular.sandbox;

import java.io.File;

import adam.jetty.JettyServer;

public final class RunJettyServer {

    private static final String CONTEXT_ROOT = "angular";

    private RunJettyServer() {}

    public static void main(String[] args) throws Exception {

        int port = 8080;
        if (args.length != 0) {
            try {
                port = Integer.parseInt(args[0]);
            } catch (NumberFormatException n) {
                System.out.println("First argument is port number");
            }
        }
        JettyServer server = new JettyServer();
        server.start(new File(JettyServer.WEBAPP_PATH), CONTEXT_ROOT, port);
    }

}
