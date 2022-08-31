import styled from 'styled-components'
import axios from 'axios'
import { useNavigate } from 'react-router-dom';
import { useEffect} from 'react'
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
const StyledLink = styled.p`
padding: 10px 15px;
color: ${colors.tertiary};
text-decoration: none;
font-size: 18px;
text-align: center;
&:hover {
cursor: pointer;
}
`

function Header() {

  axios.defaults.headers.common.Authorization = `Bearer ${localStorage.token}`;
  
  const navigate = useNavigate();

  const déconnexion = () => {
    localStorage.clear();
    navigate('/login');
  };

  useEffect(() => {
    if (!localStorage.token) {
      navigate('/login')
    }
  });

  return (
    <NavContainer>
      <Logo src={DarkLogo} />
      <div>
        <StyledLink onClick = {() => { déconnexion();}}>Déconnexion</StyledLink>
      </div>
    </NavContainer>
  )
}

export default Header
