import PostForm from '../../components/PostForm'
import Post from '../../components/Post'
import { Loader } from '../../utils/style/Atoms'
import { useEffect, useState } from 'react'
import axios from 'axios'
import styled from 'styled-components'
import colors from '../../utils/style/colors'


const HomeWrapper = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;
  background-color: ${colors.secondary};
  padding-bottom: 35px;
`

const StyledUsername = styled.h2`
color: ${colors.tertiary};
margin-left: 15px;
`
function Home() {

  const [posts, setPosts] = useState([]);
  const [user, setUser] = useState([]);
  const [isLoading, setIsLoading] = useState(false)

  const getPosts = () => { // fonction pour récupérer les posts
            setIsLoading(true); // affiche un Loader le temps de charger les posts
            axios
            .get('http://localhost:3000/api/post')
            .then((res) => {
            setPosts(res.data);
            setIsLoading(false); // affiche les posts une fois chargés
            })
            .catch((err) => { console.log(err) });
          };
  
  const getUser = () => { // récupère les infos de l'utilisateur notamment pour la gestion des droits
          axios
            .get('http://localhost:3000/api/auth/user')
            .then((res) => {
              setUser(res.data);
            })
            .catch((err) => { console.log(err) })
  }
  useEffect(() => { // déclenchement de la fonction
      getPosts();
    }, []
  );  
  
  useEffect(() => { // déclenchement de la fonction
    getUser();
  }, []
); 
 

  return (
    <HomeWrapper>
        <StyledUsername>Hello, {user.username}</StyledUsername>
        <PostForm getPosts={getPosts} key='PostForm'/>
        { isLoading ? (<Loader />) : (posts.map((post) => (
          <Post post={ post } user={user} getPosts={getPosts} key={post.id} />
          )))}
    </HomeWrapper>
  )
}

export default Home
