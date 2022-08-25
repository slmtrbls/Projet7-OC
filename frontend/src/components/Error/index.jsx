import styled from 'styled-components'
import colors from '../../utils/style/colors'
import error from '../../assets/error.png'

const ErrorWrapper = styled.div`
  margin: 30px;
  display: flex;
  flex-direction: column;
  background-color: ${colors.tertiary};
  align-items: center;
`

const ErrorTitle = styled.h1`
  font-weight: 300;
  color: ${colors.primary};
`

const ErrorSubtitle = styled.h2`
  font-weight: 300;
  color: ${colors.secondary};
`

const Illustration = styled.img`
  max-width: 800px;
`

function Error() {
  return (
    <ErrorWrapper>
      <ErrorTitle>Oups...</ErrorTitle>
      <Illustration src={error} />
      <ErrorSubtitle>
        Il semblerait que la page que vous cherchez n’existe pas
      </ErrorSubtitle>
    </ErrorWrapper>
  )
}

export default Error
