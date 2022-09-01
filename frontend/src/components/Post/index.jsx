import { useEffect, useState } from 'react'
import axios from 'axios'
import styled from 'styled-components'
import colors from '../../utils/style/colors'
import { FaHeart, FaRegHeart } from 'react-icons/fa'

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
height: 200px;
margin: 15px;
border: 2px solid ${colors.tertiary};
background-color: white;
@media screen and (max-width: 500px) {
    width: 90%;
    height: 250px;
  }
`

const ContentContainer = styled.div`
display: flex;
flex-direction: row;
justify-content: space-around;
height: 80%;
@media screen and (max-width: 500px) {
    display: flex;
    flex-direction: column;
  }
`
const ItemsContainer = styled.div`
display: flex;
flex-direction: row;
justify-content: space-between;
height: 20%;
margin-bottom: 5px;
`

const StyledPost = styled.p`
display: flex;
height: 90%;
width: 40%;
margin: 5px;
padding-top: 5px;
overflow:auto;
text-overflow:ellipsis;
@media screen and (max-width: 500px) {
    height: 50%;
    width: 95%;
  }
`

const StyledImg = styled.img`
display:  flex;
height: 90%;
width: 50%;
object-fit: cover;
margin: 5px;
@media screen and (max-width: 500px) {
    height: 50%;
    width: 90%;
    margin: auto;
  }
`

const StyledLike = styled(FaHeart)`
color: ${colors.primary};
`

const LikeInfo = styled.div`
display:flex;
flex-direction: row;
`

const LikeDiv = styled.div`
cursor: pointer;
padding-top: 12px;
margin: 0 20px;
font-size: 25px;
display: flex;
`

const LikeCount = styled.p`
display: flex;
`

const StyledButton = styled.button`
background-color: ${colors.primary};
color: white;
border-radius: 15px;
margin: 10px 10px 0 10px;
padding: 5px 15px;
cursor: pointer;
`

function Post( { post, user }) {

    const [like, setLike] = useState(false);
    const [likeCount, setLikeCount] = useState(0);
    const [Authorized, setAuthorized] = useState(false);

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
            window.location.reload();
        })
        .catch(() => {
            axios
            .put(`http://localhost:3000/api/post/${postId}/like`, )
                .then(() => { 
                window.location.reload();
                })
                .catch((err) => { console.log(err)})
        })
    };
      
      
    const getLikeInfo = (postId) => {
    axios
        .get(`http://localhost:3000/api/post/${postId}/like`)
        .then((like) => {
        setLike(like.data.isLiked);
        })
        .catch((err) => {
        console.log(err);
        })
    };

    const getLikeCount = (postId) => {
    axios
        .get(`http://localhost:3000/api/post/${postId}/likecount`)
        .then((res) => {
        setLikeCount(res.data); 
        })
        .catch((err) => {
        console.log(err);
        })
    };

    useEffect(() => {
    getLikeInfo(post.id);
    getLikeCount(post.id);
    }, [post]);
    
    const isAuthorized = () => {
        if (user.id === post.userId || user.isAdmin) {
        setAuthorized(true);
        } 
    }

    useEffect(() => {
        isAuthorized();
    })

   /*  */

    return (
        <PostWrapper>
            <PostContainer>
              <ContentContainer>
                <StyledPost>{post.text}</StyledPost> 
                { post.imageUrl ? ( 
                <StyledImg src={post.imageUrl} alt='' /> ): (null) }
              </ContentContainer>
              <ItemsContainer>
                <LikeInfo>
                <LikeDiv onClick={() => likeUnlike(post.id)}>
                { like ? (<StyledLike key={colors.primary}/>) : (<FaRegHeart />) }            
                </LikeDiv>
                <LikeCount>{ likeCount }</LikeCount>
                </LikeInfo>
                { Authorized ? (<div>
                                    <button>Modifier</button>
                                    <StyledButton onClick={ () => { supprimer(post.id) } }>Supprimer</StyledButton>
                                </div>) : (null) }             
              </ItemsContainer>
            </PostContainer>
          </PostWrapper>
    )
}

export default Post