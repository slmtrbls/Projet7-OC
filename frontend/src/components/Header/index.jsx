import styled from 'styled-components'
import axios from 'axios'
import { useNavigate } from 'react-router-dom';
import { useEffect} from 'react'
import colors from '../../utils/style/colors'
import DarkLogo from '../../assets/icon-left-font.png'

const Logo = styled.img`
  height: 150px;
  width: 250px;
  object-fit: cover;
`

const NavContainer = styled.nav`
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

  axios.defaults.headers.common.Authorization = `Bearer ${localStorage.token}`; // permet de configurer l'entête authorization de chaque requête avec l'inclusion du token
  
  const navigate = useNavigate(); // permet de naviguer entre les pages du site

  const déconnexion = () => {
    localStorage.clear();
    navigate('/login');
  };

  useEffect(() => {
    if (!localStorage.token) { // s'il n'y a pas de token l'utilisateur est redirigé vers la page login
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
