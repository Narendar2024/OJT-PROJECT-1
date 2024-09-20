setTimeout(function() {
    var successMessageDiv = document.getElementById('successMessage');
    if (successMessageDiv) {
        console.log("Hiding success message after 5 seconds.");
        successMessageDiv.style.display = 'none';
    }
}, 5000);
