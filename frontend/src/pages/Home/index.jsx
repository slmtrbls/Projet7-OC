import styled from 'styled-components'
import colors from '../../utils/style/colors'
import { FaApple } from 'react-icons/fa';

const HomeWrapper = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;
`

const HomeContainer = styled.div`
  margin: 30px;
  background-color: ${colors.primary};
  padding: 60px 90px;
  display: flex;
  flex-direction: row;
  max-width: 1200px;
`


const StyledTitle = styled.h2`
  padding-bottom: 30px;
  max-width: 280px;
  line-height: 50px;
`


function Home() {
  return (
    <HomeWrapper>
      <HomeContainer>
          <StyledTitle>
            Retrouvez tous vos posts ci-dessous
          </StyledTitle>
          <FaApple />
      </HomeContainer>
    </HomeWrapper>
  )
}

export default Home
