from flask import Flask, render_template_string
import psycopg2

app = Flask(__name__)

conn = psycopg2.connect(
    host="db",
    database="admin",
    user="admin",
    password="adminpass"
)

template = """
<h1>A list of users</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>Email</th>
    </tr>
    {% for user in users %}
    <tr>
        <td>{{ user[0] }}</td>
        <td>{{ user[1] }}</td>
        <td>{{ user[2] }}</td>
        <td>{{ user[3] }}</td>
    </tr>
    {% endfor %}
</table>
"""

@app.route("/")
def show_users():
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM users;")
    users = cursor.fetchall()
    cursor.close()
    return render_template_string(template, users=users)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
