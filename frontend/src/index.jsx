import React from 'react'
import ReactDOM from 'react-dom'
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom'
import GlobalStyle from './utils/style/GlobalStyle'
import Home from './pages/Home'
import Login from './pages/Login'
import Signup from './pages/Signup'
import HeaderSecu from './components/HeaderSecu'
import Header from './components/Header'
import Error from './components/Error'
import Footer from './components/Footer'



ReactDOM.render(
  <React.StrictMode>
    <Router>
      <GlobalStyle />
        <Routes>
          <Route exact path="/" element={<><Header /><Home /></>} />
          <Route path="/login" element={<><HeaderSecu /><Login /></>} />
          <Route path="/signup" element={<><HeaderSecu /><Signup /></>} />
          <Route path='*' element={<Error />} />
        </Routes>
      <Footer />
    </Router>
  </React.StrictMode>,
  document.getElementById('root')
)
