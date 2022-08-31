import { useEffect, useState } from 'react'
import { useForm } from 'react-hook-form'
import axios from 'axios'
import styled from 'styled-components'
import colors from '../../utils/style/colors'
import { FaHeart, FaRegHeart } from 'react-icons/fa'

const HomeWrapper = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;
  background-color: ${colors.secondary};
`

const FormContainer = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;
  border-radius: 15px;
  border: 2px solid ${colors.primary};
  margin: 30px auto auto auto;
  padding-top: 20px;
  background-color: ${colors.tertiary};
`
const StyledInput = styled.input`
width: 300px;
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

const PostWrapper = styled.div`
display: flex;
justify-content: center;
margin: auto;
width: 90%;
`

const PostContainer = styled.div`
display: flex;
flex-direction: column;
justify-content: center;
border-radius: 15px;
width: 70%;
height: 150px;
margin: 15px;
border: 2px solid ${colors.tertiary};
background-color: white;
`

const ContentContainer = styled.div`
display: flex;
flex-direction: row;
justify-content: space-around;
height: 80%;
`
const ItemsContainer = styled.div`
display: flex;
flex-direction: row;
justify-content: space-around;
`

const StyledPost = styled.p`
display: flex;
height: 90%;
width: 40%;
margin: 5px;
`

const StyledImg = styled.img`
display:  flex;
height: 90%;
width: 50%;
object-fit: cover;
margin: 5px;
`

/*const StyledLike = styled(FaHeart)`
color: ${colors.primary};
`*/

const LikeDiv = styled.div`
cursor: pointer;
`

function Home() {

  const { register, handleSubmit } = useForm();
  const [errorMessage, setErrorMessage] = useState("");
  const [posts, setPosts] = useState([]);
  const [likes, setLikes] = useState([]);

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

 useEffect(() => {
    axios
      .get('http://localhost:3000/api/post')
      .then((res) => {
       setPosts(res.data);
      })
      .catch((err) => { console.log(err)});
   }, []
 );  

 const supprimer = (postId) => {
  axios
    .delete(`http://localhost:3000/api/post/${postId}`)
    .then(() => {
      window.location.reload();
    })
    .catch((err) => { console.log(err)});
 };

 const likeUnlike = (postId) => {
  axios
    .post(`http://localhost:3000/api/post/${postId}/like`)
      .then(() => { 
        console.log('like enregistré')
      })
      .catch(() => {
        axios
          .put(`http://localhost:3000/api/post/${postId}/like`, )
            .then(() => { console.log('like modifié')})
            .catch((err) => { console.log(err)})
      })
 };


 /*const getLikeInfo = (postId) => {
  axios
    .get(`http://localhost:3000/api/post/${postId}/like`)
    .then((like) => {
      setLikes(likes.push(postId));
      likes.postId = like.data.isLiked;
      setLikes(likes);
    })
    .catch((err) => {
      console.log(err);
    })
 };
{ getLikeInfo(post.id) ? (<StyledLike />) : (<FaRegHeart />) } */

  return (
    <HomeWrapper>
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
        {posts.map((post) => (
          <PostWrapper>
            <PostContainer>
              <ContentContainer>
                <StyledPost>{post.text}</StyledPost> 
                { post.imageUrl ? ( 
                <StyledImg src={post.imageUrl} alt='' /> ): (null) }
              </ContentContainer>
              <ItemsContainer>
                <LikeDiv onClick={() => likeUnlike(post.id)}>
                <FaRegHeart />               
                </LikeDiv>
                <div>
                  <button onClick={ () => { supprimer(post.id) } }>Supprimer</button>
                </div>
              </ItemsContainer>
            </PostContainer>
          </PostWrapper>
          ))}
    </HomeWrapper>
  )
}

export default Home
