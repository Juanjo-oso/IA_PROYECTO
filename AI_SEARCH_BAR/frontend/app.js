async function searchSolutions() {
    const query = document.getElementById("searchInput").value;
    const response = await fetch(`http://localhost:3000/api/solutions/search?query=${query}`);
    const solutions = await response.json();
    displayResults(solutions);
}

function displayResults(solutions) {
    const resultsContainer = document.getElementById("resultsContainer");
    resultsContainer.innerHTML = "";

    solutions.forEach(solution => {
        const card = document.createElement("div");
        card.className = "card";

        // Agregar evento para expandir la tarjeta
        card.addEventListener("click", () => {
            card.classList.toggle("expanded");
        });

        const title = document.createElement("h3");
        title.textContent = solution.nombre;

        const category = document.createElement("p");
        category.className = "category";
        category.textContent = `Categoría: ${solution.categoria}`;

        const description = document.createElement("p");
        description.className = "description";
        description.textContent = `Descripción: ${solution.descripcion}`;

        card.appendChild(title);
        card.appendChild(category);
        card.appendChild(description);

        resultsContainer.appendChild(card);
    });
}
