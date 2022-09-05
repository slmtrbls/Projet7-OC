import { Link } from 'react-router-dom'
import colors from './colors'
import styled, { keyframes } from 'styled-components'

const rotate = keyframes`
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
`

export const Loader = styled.div`
  margin: auto;
  padding: 30px;
  border: 6px solid ${colors.primary};
  border-bottom-color: transparent;
  border-radius: 50px;
  animation: ${rotate} 1s infinite linear;
  height: 0;
  width: 0;
`

export const StyledLink = styled(Link)`
  padding: 10px 15px;
  color: ${colors.tertiary};
  text-decoration: none;
  font-size: 18px;
  text-align: center;
  @media screen and (max-width: 400px) {
    margin: 15px;
  }
`

export const StyledLabel = styled.label`
  padding: 10px 15px;
  color: ${colors.tertiary};
`
export const StyledInput = styled.input`
  padding: 10px 15px;
  margin-right: 10px;
  width: 150px;
  border-radius: 5px;
  border: 2px solid ${colors.tertiary};  
`
export const StyledButton = styled.button`
background-color: ${colors.primary};
margin: 20px;
padding: 10px 20px;
border-radius: 15px;
color: white;
border: 2px solid ${colors.tertiary};
cursor: pointer;
`

export const StyledBody = styled.div`
height: 500px;
display: flex;
flex-direction: column;
justify-content: center;
`

export const FormContainer = styled.div`
background-color: ${colors.secondary};
width: 300px;
margin: auto;
border-radius: 15px;
display: flex;
flex-direction: column;
justify-content: center;
text-align: center;
`

export const StyledDiv = styled.div`
display: flex;
flex-direction: row;
text-align: center;
justify-content: space-between;
padding: 15px 0px;  
`
export const StyledError = styled.p`
display: flex;
text-align: center;
justify-content: center;
color: ${colors.primary};
margin: 50px 0;
`