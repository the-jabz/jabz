import { useEffect, useState } from "react";

export default function App() {
  const [message, setMessage] = useState<string>("loading...");

  useEffect(() => {
    fetch("/api/hello")
      .then((res) => {
        if (!res.ok) throw new Error("Failed to fetch");
        return res.text();
      })
      .then((data) => setMessage(data))
      .catch((err) => setMessage("Error: " + err.message));
  }, []);

  return (
    <div className="p-10 text-xl">
      <h1>Frontend is running</h1>

      <p className="mt-4 text-green-500">
        Backend says: {message}
      </p>
    </div>
  );
}