import styled from 'styled-components'
import { StyledLink } from '../../utils/style/Atoms'
import colors from '../../utils/style/colors'
import DarkLogo from '../../assets/icon-left-font-monochrome-black.png'

const Logo = styled.img`
  height: 150px;
  width: 200px;
  object-fit: cover;
`

const NavContainer = styled.nav`
  padding: 5px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-bottom: 4px solid ${colors.tertiary};
`

function Header() {
  return (
    <NavContainer>
      <Logo src={DarkLogo} />
      <div>
        <StyledLink to="/login">Déconnexion</StyledLink>
      </div>
    </NavContainer>
  )
}

export default Header
