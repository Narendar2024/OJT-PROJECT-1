function showTable(category) {
	const tables = document.querySelectorAll('.donation-table');
	tables.forEach(table => {
		table.style.display = table.getAttribute('data-category') === category ? 'block' : 'none';
	});
}

function showAllTables() {
	const tables = document.querySelectorAll('.donation-table');
	tables.forEach(table => {
		table.style.display = 'block';
	});
}

// On page load, show all tables by default
document.addEventListener('DOMContentLoaded', showAllTables);
