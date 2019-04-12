import React from 'react'
import Contact from "./Contact";


class ContactsList extends React.Component {
    render() {
        return (
            <div>
                {this.props.users.map(function(user){
                    return <Contact key={user.email} user={user}/>
                })}
            </div>
        );
    }
}

export default ContactsList