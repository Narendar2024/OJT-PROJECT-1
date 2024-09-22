const responseMessageDiv = document.getElementById('responseMessage');
if (responseMessageDiv) {
    // Set a timeout to hide the message after 3 seconds
    setTimeout(() => {
        responseMessageDiv.style.display = 'none';
    }, 3000);
}
