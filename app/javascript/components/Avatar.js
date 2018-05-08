import React from "react"
import PropTypes from "prop-types"
import DefaultAvatar from '../images/default_avatar.png'
import HOST_URL from '../packs/constants'

class Avatar extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            imageClass: ''
        };
    }
    componentDidMount() {
        if (this.props.currentUserId === this.props.messageUserId) {
            this.setState({ imageClass: 'right' });
        }
    }
    render () {
        if(this.props.avatar.url === null) {
            return (
                <img src={DefaultAvatar} className={this.state.imageClass}></img>
            );
        }else {
            return (
                <img src={HOST_URL + this.props.avatar.url} className={this.state.imageClass}></img>
            );
        }
    }
}

// Avatar.propTypes = {
//     greeting: PropTypes.string
// };
export default Avatar
