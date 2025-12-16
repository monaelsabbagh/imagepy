from http.server import BaseHTTPRequestHandler, HTTPServer

class MyHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()
        self.wfile.write(b"Hello from Python Docker App")

server = HTTPServer(("0.0.0.0", 5000), MyHandler)
print("Server running on port 5000...")
server.serve_forever()