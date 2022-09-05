import { useState } from 'react'
import { useForm } from 'react-hook-form'
import axios from 'axios'
import styled from 'styled-components'
import colors from '../../utils/style/colors'
import {FaWindowClose} from 'react-icons/fa'

const ModalContainer = styled.div`
height: 250px;
width: 360px;
background-color: white;
border-radius: 15px;
position: fixed;
top: 0;
left: 0;
right: 0;
bottom: 0;
margin: auto;
z-index: 10;
`

const StyledModify = styled.button`
background-color: orange;
color:white;
border-radius: 15px;
margin: 10px 10px 0 10px;
padding: 5px 15px;
cursor: pointer;
` 

const CloseButton = styled.p`
position: absolute;
top:1%;
right:1%;
margin: 5px;
color: ${colors.tertiary};
cursor: pointer;
`

const FormWrapper = styled.div`
width: 325px;
margin: 30px auto auto auto; 
`

const FormContainer = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;
  border-radius: 15px;
  border: 2px solid orange;
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
background-color: orange;
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
background-color: orange;
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

function Modify({post, getPosts}) {

    const { register, handleSubmit } = useForm();
    const [errorMessage, setErrorMessage] = useState("");
    const [toggleModal, setToggleModal] = useState(false); 

    const modal = () => { // fonction qui permet d'ouvrir/fermer le popup
      setToggleModal(!toggleModal);
    }
    const onSubmit = (data) => {
        const text = data.text;
        const imageUrl = data.files[0];

    
        const formData = new FormData(); // utilisation de FormData pour la gestion des fichiers côté serveur
        formData.append('text', text);
        formData.append('image', imageUrl);
    
        axios
          .put(`http://localhost:3000/api/post/${post.id}`, formData) // modification d'un post
          .then(() => {
            getPosts();
            setErrorMessage('');
            setToggleModal(false);
          })
          .catch((err) => { setErrorMessage(err.response.data.error) });
      };

       
    
    return(
      <div>
        <StyledModify onClick={modal}>Modifier</StyledModify> 
        { toggleModal ? (
            <ModalContainer>
              <CloseButton onClick={modal}><FaWindowClose /></CloseButton>
              <FormWrapper>
                <FormContainer>
                  <form onSubmit={handleSubmit(onSubmit)}>
                    <div>
                      <StyledInput type="text" id="text" {...register('text')} placeholder='Écrivez votre post ici' />
                    </div>
                    <div>
                      <StyledLabel for='modifyfile'>Chargez votre image</StyledLabel>
                      <StyledInput2 type="file" id="modifyfile" {...register('files')} />
                    </div>
                    <StyledDiv>
                      <StyledButton>Modifier</StyledButton>
                    </StyledDiv>
                  </form>
                </FormContainer>
                <StyledError>
                  <p>{ errorMessage }</p>
                </StyledError>
              </FormWrapper> 
            </ModalContainer> ) : (null) }
      </div>
    )
}

export default Modify