import React from 'react'


class ContactsList extends React.Component {
    render() {
        return (
            <ul>
                {this.props.users.map(function(user){
                    return <li>{user.email}</li>;
                })}
            </ul>
        );
    }
}

export default ContactsList