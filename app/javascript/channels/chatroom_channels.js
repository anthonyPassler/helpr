import consumer from './consumer'

const initMessages = () => {
  const messageContainer = document.getElementById('messages')
    console.log(messageContainer);

  if (messageContainer) {
    const id = messageContainer.dataset.chatroomId;
    console.log(id);
    consumer.subscriptions.create({ channel: 'ChatroomChannel', id: id }, {
      received(data){
        console.log(data);
        messageContainer.insertAdjacentHTML('beforeend', data);
      }
    })
  }
}

export {initMessages}
