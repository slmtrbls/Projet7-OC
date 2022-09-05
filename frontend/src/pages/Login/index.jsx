import { useForm } from 'react-hook-form';
import { useState } from 'react'
import axios from 'axios';
import { useNavigate } from 'react-router-dom';
import { StyledBody, FormContainer, StyledDiv, StyledLabel, StyledInput, StyledButton, StyledError } from '../../utils/style/Atoms'


function Login() {
  const { register, handleSubmit } = useForm();
  const navigate = useNavigate();
  const [errorMessage, setErrorMessage] = useState("");

  const onSubmit = (data) => { // envoi des infos utilisateurs côté serveur pour la connexion
    axios
      .post('http://localhost:3000/api/auth/login', data)
      .then(({ data }) => {
        localStorage.token = data.token;
        navigate('/');
      })
      .catch((err) => { setErrorMessage(err.response.data.error) });
  };

  return (
    <StyledBody>
      <FormContainer>
        <form onSubmit={handleSubmit(onSubmit)}>
          <StyledDiv>
            <StyledLabel htmlFor="email">Email</StyledLabel>
            <StyledInput type="email" id="email" {...register('email')} />
          </StyledDiv>
          <StyledDiv>
            <StyledLabel htmlFor="password">Password</StyledLabel>
            <StyledInput type="password" id="password" {...register('password')} />
          </StyledDiv>
          <StyledButton>Se connecter</StyledButton>
        </form>
      </FormContainer>
      <StyledError>{ errorMessage }</StyledError>
    </StyledBody>
  );
}

export default Login;
