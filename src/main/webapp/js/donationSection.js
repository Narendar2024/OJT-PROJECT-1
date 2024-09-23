document.addEventListener("DOMContentLoaded", () => {
	const filterButtons = document.querySelectorAll('.filter-btn');
	const galleryItems = document.querySelectorAll('.gallery-item');

	// Default display of all images with fade-in
	galleryItems.forEach(item => {
		item.style.display = 'block';
		item.style.opacity = '0';  // Initially set opacity to 0
		setTimeout(() => {
			item.style.opacity = '1';  // Animate opacity to 1 (fade-in)
		}, 100);
	});

	// Add event listener to filter buttons
	filterButtons.forEach(button => {
		button.addEventListener('click', () => {
			// Remove active class from all buttons
			filterButtons.forEach(btn => btn.classList.remove('active'));
			// Add active class to the clicked button
			button.classList.add('active');

			// Get the filter value
			const filter = button.getAttribute('data-filter');
			filterImages(filter);
		});
	});

	// Function to filter images based on the selected category
	function filterImages(filter) {
		galleryItems.forEach(item => {
			item.style.display = 'none';  // Hide all images initially
			if (filter === 'all' || item.getAttribute('data-category') === filter) {
				item.style.display = 'block';  // Show matching items

				// Apply fade-in animation
				item.style.opacity = '0';  // Initially set opacity to 0
				setTimeout(() => {
					item.style.opacity = '1';  // Animate opacity to 1 (fade-in)
				}, 100);
			}
		});
	}
});
