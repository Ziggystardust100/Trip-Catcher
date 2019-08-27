
import createChannel from './setup'

const messages = document.getElementById('messages');
const input = document.getElementById('message_content');


if (messages) {
  createChannel({channel: 'MessagesChannel', id: messages.dataset.id},{
    received({message, catcher_username, message_time}) {
      messages.insertAdjacentHTML('beforeend', htmlToInsert(message, catcher_username, message_time))
      input.value = ''
      messages.scrollTop = messages.scrollHeight

    }
  });
}


function htmlToInsert(message, catcherUsername, messageTime) {
  const m = JSON.parse(message)
  const messageClass = parseInt(m.catcher_id) === parseInt(messages.dataset.catcherId) ? 'message-orange' : 'message-blue'
  const timestampClass =  parseInt(m.catcher_id) === parseInt(messages.dataset.catcherId) ? 'message-timestamp-right' : 'message-timestamp-left'
  return (`
       <div class="${messageClass}">
          <p class='message-content'>
            <span>${m.content}</span>
          </p>
         <div class="${timestampClass}">
          <strong>${catcherUsername}</strong>
          ${messageTime}
          </div>
        </div>

  `)
}
