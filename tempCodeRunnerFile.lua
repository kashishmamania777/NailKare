from graphviz import Digraph

# Initialize a directed graph
flowchart = Digraph(comment="System Design Flowchart for Nails Kare Website")

# Frontend components
flowchart.node("A", "Frontend\n(UI/UX)\n(React.js/HTML/CSS)", shape="box", style="filled", color="lightblue")
flowchart.node("B", "Home Page", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("C", "Services Page", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("D", "Booking System", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("E", "Gallery", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("F", "Contact Page", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("G", "User Profile", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("H", "Admin Dashboard", shape="ellipse", style="filled", color="lightgrey")

# Backend components
flowchart.node("I", "Backend\n(Server API)\n(Node.js/Express)", shape="box", style="filled", color="salmon")
flowchart.node("J", "Authentication\n& Authorization", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("K", "API Endpoints", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("L", "Booking Processing", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("M", "Payment Gateway\nIntegration", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("N", "Content Management", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("O", "Notifications\n(SMS/Email)", shape="ellipse", style="filled", color="lightgrey")

# Database
flowchart.node("P", "Database\n(MongoDB/MySQL)", shape="box", style="filled", color="lightgreen")
flowchart.node("Q", "Users Table", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("R", "Services Table", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("S", "Bookings Table", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("T", "Gallery Table", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("U", "Reviews Table", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("V", "Admin Logs", shape="ellipse", style="filled", color="lightgrey")

# External integrations
flowchart.node("W", "External Integrations", shape="box", style="filled", color="orange")
flowchart.node("X", "Calendar API\n(Google Calendar)", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("Y", "Payment Processor\n(Stripe/PayPal)", shape="ellipse", style="filled", color="lightgrey")
flowchart.node("Z", "Map Integration\n(Google Maps)", shape="ellipse", style="filled", color="lightgrey")

# Frontend to backend connections
flowchart.edge("A", "B", label="Routes")
flowchart.edge("A", "C", label="Routes")
flowchart.edge("A", "D", label="Routes")
flowchart.edge("A", "E", label="Routes")
flowchart.edge("A", "F", label="Routes")
flowchart.edge("A", "G", label="Routes")
flowchart.edge("A", "H", label="Routes")
flowchart.edge("B", "I")
flowchart.edge("C", "I")
flowchart.edge("D", "I")
flowchart.edge("E", "I")
flowchart.edge("F", "I")
flowchart.edge("G", "I")
flowchart.edge("H", "I")

# Backend to Database connections
flowchart.edge("I", "J")
flowchart.edge("I", "K")
flowchart.edge("I", "L")
flowchart.edge("I", "M")
flowchart.edge("I", "N")
flowchart.edge("I", "O")
flowchart.edge("J", "P")
flowchart.edge("L", "P")
flowchart.edge("M", "P")
flowchart.edge("N", "P")

# Database tables
flowchart.edge("P", "Q")
flowchart.edge("P", "R")
flowchart.edge("P", "S")
flowchart.edge("P", "T")
flowchart.edge("P", "U")
flowchart.edge("P", "V")

# External Integrations
flowchart.edge("I", "W")
flowchart.edge("W", "X")
flowchart.edge("W", "Y")
flowchart.edge("W", "Z")

# Display the flowchart
flowchart
