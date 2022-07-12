import { connect } from "react-redux";
import SessionForm from "./session_form";
import { signup, clearSessionErrors } from "../../actions/session_actions";

const mapStateToProps = (state) => {
    return{
        errors: state.errors.session,
        formType: 'signup'
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        processForm: (user) => dispatch(signup(user)),
        clearSessionErrors: () => dispatch(clearSessionErrors()),
        loginGuest: (user) => dispatch(login(user))
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);