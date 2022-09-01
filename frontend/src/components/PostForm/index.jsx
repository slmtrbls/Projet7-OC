import { useState } from 'react'
import { useForm } from 'react-hook-form'
import axios from 'axios'
import styled from 'styled-components'
import colors from '../../utils/style/colors'

const FormWrapper = styled.div`
width: 325px;
margin: 30px auto auto auto;
`

const FormContainer = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;
  border-radius: 15px;
  border: 2px solid ${colors.primary};
  padding-top: 20px;
  background-color: ${colors.tertiary};
`
const StyledInput = styled.input`
width: 275px;
height: 50px;
border-radius: 15px;
border: 1px solid ${colors.secondary};
margin: 5px 15px 15px 15px;
display: flex;
text-align: center;
`
const StyledInput2 = styled.input`
display: none;
`
const StyledLabel = styled.label`
background-color: ${colors.primary};
color: white;
border-radius: 15px;
border: 2px solid black;
font-size: 14px;
padding: 5px 10px;
cursor: pointer;
margin: 15px;
`
const StyledDiv = styled.div`
display: flex;
flex-direction: row;
justify-content: end;
`

const StyledButton = styled.button`
background-color: ${colors.primary};
color: white;
border-radius: 15px;
margin: 15px;
padding: 5px 15px;
cursor: pointer;
`

const StyledError = styled.div`
display: flex;
justify-content: center;
color: red;
`

function PostForm() {

    const { register, handleSubmit } = useForm();
    const [errorMessage, setErrorMessage] = useState("");

    const onSubmit = (data) => {
        const text = data.text;
        const imageUrl = data.files[0];
    
        const formData = new FormData();
        formData.append('text', text);
        formData.append('image', imageUrl);
    
        axios
          .post('http://localhost:3000/api/post', formData)
          .then(() => {
            window.location.reload();
            setErrorMessage('');
          })
          .catch((err) => { setErrorMessage(err.response.data.error) });
      };
    
    return(
    <FormWrapper>
        <FormContainer>
          <form onSubmit={handleSubmit(onSubmit)}>
            <div>
              <StyledInput type="text" id="text" {...register('text')} placeholder='Écrivez votre post ici' />
            </div>
            <div>
              <StyledLabel for='file'>Chargez votre image</StyledLabel>
              <StyledInput2 type="file" id="file" {...register('files')} />
            </div>
            <StyledDiv>
              <StyledButton>Envoyer</StyledButton>
            </StyledDiv>
          </form>
        </FormContainer>
        <StyledError>
          <p>{ errorMessage }</p>
        </StyledError>
    </FormWrapper>
    )
}

export default PostForm