import React, { useState } from 'react';
import './App.css';

function App() {
  const [task, setTask] = useState('');
  const [hours, setHours] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log('Task:', task, 'Hours:', hours);
    // ここに後ほどバックエンドへの送信処理を追加
  };

  return (
    <div className="App">
      <h1>Study Time Tracker</h1>
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          placeholder="Study Task"
          value={task}
          onChange={(e) => setTask(e.target.value)}
        />
        <input
          type="number"
          placeholder="Hours"
          value={hours}
          onChange={(e) => setHours(e.target.value)}
        />
        <button type="submit">Submit</button>
      </form>
    </div>
  );
}

export default App;