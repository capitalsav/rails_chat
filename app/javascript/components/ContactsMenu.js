import React from 'react'
import axios from 'axios'

class ContactsMenu extends React.Component {
    constructor(props) {
        super(props);

        // this.state = {
        //     contacts: ''
        // };

        this.componentDidMount = this.componentDidMount.bind(this);
    }

    componentDidMount() {
        axios.get('/api/v1/contacts', {

        })
        .then(function (response) {
            console.log(response);
            this.setState({
                contacts : response.data
            });
        })
        .catch(function (error) {
            console.log(error);
        });
    }

    handleSubmit(event) {
        event.preventDefault();
        // console.log(this.state);

    }

    render() {
        return (
            <form onSubmit={this.handleSubmit}>
                <input type="submit" value="Submit" />
            </form>
        );
    }
}

export default ContactsMenu
