import { StyledLink } from '../../utils/style/Atoms'
import styled from 'styled-components'
import colors from '../../utils/style/colors'
import DarkLogo from '../../assets/icon-left-font-monochrome-black.png'

const SecuLogo = styled.img`
  height: 150px;
  width: 200px;
  object-fit: cover;
`

const NavContainerSecu = styled.nav`
  padding: 5px;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
  border-bottom: 4px solid ${colors.tertiary};
  @media screen and (max-width: 400px) {
    display: flex;
    flex-direction: column;
  }
`

function HeaderSecu() {
  return (
    <NavContainerSecu>
      <SecuLogo src={DarkLogo} />
      <div>
        <StyledLink to="/login">Login</StyledLink>
        <StyledLink to="/signup">Signup</StyledLink>
      </div>
    </NavContainerSecu>
  )
}

export default HeaderSecu
