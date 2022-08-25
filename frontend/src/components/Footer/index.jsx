import styled from 'styled-components'
import colors from '../../utils/style/colors'
import DarkLogo from '../../assets/icon-left-font-monochrome-white.png'


const FooterContainer = styled.footer`
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
  padding-top: 10px;
  background-color: ${colors.tertiary}
`
const FooterImg = styled.img`
  height: 150px;
  width: 150px;
`

function Footer() {

  return (
    <FooterContainer>
      <FooterImg src={DarkLogo} />
    </FooterContainer>
  )
}

export default Footer