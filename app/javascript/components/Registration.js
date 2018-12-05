import React from 'react'
import axios from 'axios'

class Registration extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            email: '',
            password: '',
            displayName: '',
            firstName: '',
            lastName: ''
        };

        this.changeEmail = this.changeEmail.bind(this);
        this.changePassword = this.changePassword.bind(this);
        this.changeDisplayName = this.changeDisplayName.bind(this);
        this.changeFirstName = this.changeFirstName.bind(this);
        this.changeLastName = this.changeLastName.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    changeEmail(newEmail) {
        this.setState({
            email: newEmail.target.value
        })
    }

    changePassword(newPassword) {
        this.setState({
            password: newPassword.target.value
        })
    }

    changeDisplayName(newDisplayName) {
        this.setState({
            displayName: newDisplayName.target.value
        })
    }

    changeFirstName(newFirstName) {
        this.setState({
            firstName: newFirstName.target.value
        })
    }

    changeLastName(newLastName) {
        this.setState({
            lastName: newLastName.target.value
        })
    }

    handleSubmit(event) {
        event.preventDefault();
        console.log(this.state);
        axios.post('/api/v1/register', {
            user: {
                email: this.state.email,
                password: this.state.password,
                display_name: this.state.displayName,
                first_name: this.state.firstName,
                last_name: this.state.lastName
            }
        })
            .then(function (response) {
                console.log(response);
            })
            .catch(function (error) {
                console.log(error);
            });
    }

    render() {
        return (
            <form onSubmit={this.handleSubmit}>
                <label>
                    Email:
                    <input type="text" value={this.state.email} onChange={this.changeEmail} />
                </label>
                <br/>
                <label>
                    Password:
                    <input type="password" value={this.state.password} onChange={this.changePassword} />
                </label>
                <br/>
                <label>
                    Display Name:
                    <input type="text" value={this.state.displayName} onChange={this.changeDisplayName} />
                </label>
                <br/>
                <label>
                    FirstName:
                    <input type="text" value={this.state.firstName} onChange={this.changeFirstName} />
                </label>
                <br/>
                <label>
                    LastName:
                    <input type="text" value={this.state.lastName} onChange={this.changeLastName} />
                </label>
                <br/>
                <input type="submit" value="Submit" />
            </form>
        );
    }
}

export default Registration