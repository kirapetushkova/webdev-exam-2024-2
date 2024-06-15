document.addEventListener('DOMContentLoaded', function() {
  const deleteButtons = document.querySelectorAll('.delete-btn');

  deleteButtons.forEach(button => {
      button.addEventListener('click', function() {
          const bookId = button.getAttribute('data-book-id');
          const bookTitle = button.getAttribute('data-book-title');

          if (confirm(`Вы действительно хотите удалить книгу "${bookTitle}"?`)) {
              fetch(`/delete-book/${bookId}`, {
                  method: 'DELETE',
              })
              .then(response => {
                  if (!response.ok) {
                      throw new Error('Ошибка удаления книги');
                  }
                  return response.json();
              })
              .then(data => {
                  if (data.success) {
                      alert('Книга успешно удалена');
                      location.reload();
                  } else {
                      alert('Произошла ошибка при удалении книги');
                  }
              })
              .catch(error => {
                  console.error('Error deleting book:', error);
                  alert('Произошла ошибка при удалении книги');
              });
          }
      });
  });
});