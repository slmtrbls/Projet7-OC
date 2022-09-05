import { createGlobalStyle } from 'styled-components'
import './main.css'

const StyledGlobalStyle = createGlobalStyle`
    * {
      font-family: 'Lato', Helvetica, sans-serif;
    }
`

function GlobalStyle() {
  return <StyledGlobalStyle />
}

export default GlobalStyle