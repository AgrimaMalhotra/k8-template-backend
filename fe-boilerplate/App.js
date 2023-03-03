import './App.css';
import {BrowserRouter, Route, Routes} from 'react-router-dom'
import Ping from './pages/Ping';
import Home from './pages/Home';

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<Home />} />
        <Route path='/ping' element={<Ping />}/>
      </Routes>
    </BrowserRouter>
  );
}

export default App;
