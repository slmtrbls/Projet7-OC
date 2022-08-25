import { createGlobalStyle } from 'styled-components'
import './main.css'

const StyledGlobalStyle = createGlobalStyle`
    * {
      font-family: 'Lato';
    }
`

function GlobalStyle() {
  return <StyledGlobalStyle />
}

export default GlobalStyle