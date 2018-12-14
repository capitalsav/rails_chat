import React from "react";

class Contact extends React.Component {
    render() {
        return (
            <li>{this.props.user.email}</li>
        )
    }
}

export default Contact