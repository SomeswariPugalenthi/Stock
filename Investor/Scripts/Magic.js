  // Trigger the content loading and styling after the page has fully loaded
  window.onload = function() {
    // Display the loader while content is being loaded
    document.getElementById('loader').style.display = 'block';

    // Simulate content loading after a delay (replace this with your actual content loading logic)
    setTimeout(function() {
        // Apply styles to make the content visible
        document.getElementById('content-container').style.opacity = '1';

        // Hide the loader after content is loaded
        document.getElementById('loader').style.display = 'none';
    }, 2000); // Simulated delay of 2000 milliseconds (2 seconds)
};