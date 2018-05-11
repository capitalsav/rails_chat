import React from "react"
import PropTypes from "prop-types"
import MessagesList from "./MessagesList"

class Messages extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            messages: this.props.messages
        };

        // this.updateMessages = this.updateMessages.bind(this);
    }

  componentDidMount() {
    this.connectToSocketServer()
  }

  connectToSocketServer() {
    var cable = ActionCable.createConsumer('ws://localhost:3000/cable')
    cable.subscriptions.create({
        channel: this.props.channel,
        private_chat_room_id: this.props.chatRoomId

    }, {
        connected: function() {
          console.log('Connected!');
        },
        disconnected: function() {
          console.log('Disconnected!');
        },
        received: function(data) {
            // multi_user_messages.append(data['multi_user_message']);
            // return multi_user_messages_to_bottom();
        },
        send_multi_user_message: function(multi_user_message, multi_user_private_chat_room_id) {
            // return this.perform('send_multi_user_message', {
            //     private_message: multi_user_message,
            //     private_chat_room_id: multi_user_private_chat_room_id
            // });
        }
    });
  }

  render () {
    return (
      <div className="col-xs-12 col-sm-8 col-md-9 col-lg-10 chat-messages-col">
        <div className="row chat-head-row">

        </div>
        <div className="row chat-message-row" id="private_messages">
          <MessagesList messages={this.state.messages} currentUserId={this.props.currentUserId} />
          {/*<h1>MessagesList</h1>*/}
        </div>
        <div className="row chat-message-form-row">
          <form id="private_new_message" className="new_private_message" action="#" acceptCharset="UTF-8" method="post">
            <input name="utf8" type="hidden" value="✓"></input>
            <input type="hidden" name="authenticity_token" value={this.props.csrf_token}></input>
            <div className="col-xs-10 col-sm-11">
              <input type="hidden" name="private_chat_room_id" id="private_chat_room_id" value="2"></input>
              <textarea className="form-control private-message-text-area" name="private_message[content]" id="private_message_content"></textarea>
            </div>
            <div className="col-xs-2 col-sm-1">
              <input type="submit" name="commit" value="Post" className="btn btn-warning btn-send-private-message" data-disable-with="Post"></input>
            </div>
          </form>
        </div>
      </div>
    );
  }
}

Messages.propTypes = {
  greeting: PropTypes.string,
  channel: PropTypes.string,
  chatRoomId: PropTypes.number
};

export default Messages
