import React from 'react'
import Contact from "./Contact";


class ContactsList extends React.Component {
    render() {
        return (
            <ul>
                {this.props.users.map(function(user){
                    return <Contact user={user}/>
                })}
            </ul>
        );
    }
}

export default ContactsList