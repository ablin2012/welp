import { connect } from "react-redux";
import SessionForm from "./session_form";
import { login, clearSessionErrors} from "../../actions/session_actions";

const mapStateToProps = (state) => {
    return{
        errors: state.errors.session,
        formType: 'login'
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        processForm: (user) => dispatch(login(user)),
        clearSessionErrors: () => dispatch(clearSessionErrors()),
        loginGuest: (user) => dispatch(login(user))
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);