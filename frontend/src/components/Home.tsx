import { Link} from "react-router-dom"
import { useAppDispatch } from "../app/hooks"
import { removeToken } from "../features/user/loginSlice"
import { useSelector } from "react-redux"
import { RootState } from "../app/store"
import Login from "../pages/User/LogIn"
import "./Home.css"
export default function Home() {
  const isLoggedIn = useSelector((state:RootState) => state.login.isLoggedIn)
  const token = useSelector((state:RootState) => state.login.token)
  const currentUser = useSelector((state:RootState) => state.login.currentUser)
  const dispatch = useAppDispatch()
  const logoutRequest: any = () => {
    dispatch(removeToken())
  }
    return (
        <div id="home">
          <h1>Hello {isLoggedIn} {currentUser} {token}</h1>
          <span>
          {token === '' ? <span><Link to="/login">Login</Link><Link to="/signup">SignUp</Link></span> : <div><span onClick={logoutRequest}>Logout</span><Link to={`/profile/${currentUser}`}>Profile</Link></div>}
            <Link to="/notice">Notice</Link>
            <Link to="/meeting">Recruit</Link>
            <Link to="/share">Information</Link>
          </span>
        {/* ) : (
          <div>
            <span onClick={logoutRequest}>Logout</span>
            <Link to={`/profile/${currentUser}`}>Profile</Link>
          </div>
        )}
        <Link to="/notice">Notice</Link>
        <Link to="/meeting">Meeting</Link>
        <Link to="/share">Information</Link>
      </span> */}
    </div>
  );
}