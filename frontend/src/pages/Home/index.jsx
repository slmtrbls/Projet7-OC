import PostForm from '../../components/PostForm'
import Post from '../../components/Post'
import { useEffect, useState } from 'react'
import axios from 'axios'
import styled from 'styled-components'
import colors from '../../utils/style/colors'


const HomeWrapper = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;
  background-color: ${colors.secondary};
`

const StyledUsername = styled.h2`
color: ${colors.tertiary};
margin-left: 15px;
`
function Home() {

  const [posts, setPosts] = useState([]);
  const [user, setUser] = useState([]);

  const getPosts = () => {
            axios
            .get('http://localhost:3000/api/post')
            .then((res) => {
            setPosts(res.data);
            })
            .catch((err) => { console.log(err) });
          };
  
  const getUser = () => {
          axios
            .get('http://localhost:3000/api/auth/user')
            .then((res) => {
              setUser(res.data);
            })
            .catch((err) => { console.log(err) })
  }
  useEffect(() => {
      getPosts();
    }, []
  );  
  
  useEffect(() => {
    getUser();
  }, []
); 
 

  return (
    <HomeWrapper>
        <StyledUsername>Hello, {user.username}</StyledUsername>
        <PostForm />
        {posts.map((post) => (
          <Post post={ post } user={user} key={post.id} />
          ))}
    </HomeWrapper>
  )
}

export default Home
