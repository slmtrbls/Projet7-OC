import { useState } from 'react'
import { useForm } from 'react-hook-form';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';
import { StyledBody, FormContainer, StyledDiv, StyledLabel, StyledInput, StyledButton, StyledError } from '../../utils/style/Atoms'


function Signup() {
  const { register, handleSubmit } = useForm();
  const navigate = useNavigate();
  const [errorMessage, setErrorMessage] = useState("");

  const onSubmit = (data) => {
    const email = data.email ;
    const password = data.password ;
    const dataLogin = { email, password };
    axios
      .post('http://localhost:3000/api/auth/signup', data) // envoi des infos utilisateurs pour la création de compte
      .then(() => {
                    axios
                    .post('http://localhost:3000/api/auth/login', dataLogin) // envoi des infos de connexion
                    .then(({ data }) => {
                      localStorage.token = data.token;
                      navigate('/');
                    })
                    .catch((err) => { console.log(err.response.data.error) });
      })
      .catch((err) => { setErrorMessage(err.response.data.error) });
  };
  return (
    <StyledBody>
      <FormContainer>
        <form onSubmit={handleSubmit(onSubmit)}>
          <StyledDiv>
            <StyledLabel htmlFor='username'>Username</StyledLabel>
            <StyledInput type="username" id='username' {...register('username')} />
          </StyledDiv>
          <StyledDiv>
            <StyledLabel htmlFor="email">Email</StyledLabel>
            <StyledInput type="email" id="email" {...register('email')} />
          </StyledDiv>
          <StyledDiv>
            <StyledLabel htmlFor="password">Password</StyledLabel>
            <StyledInput type="password" id="password" {...register('password')} />
          </StyledDiv>
          <StyledButton>Envoyer</StyledButton>
        </form>
      </FormContainer>
      <StyledError>{ errorMessage }</StyledError>
    </StyledBody>
  );
}

export default Signup;
