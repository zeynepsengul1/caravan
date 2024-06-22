import React, {useState} from "react";
import PropTypes from "prop-types";
import connection from "../../connection";

const CommentForm = ({ slug }) => {
  const [commentText, setCommentText] = useState('');

  const handleSubmit = (e) => {
  e.preventDefault();
   // Bu slug değeri doğru bir park alanı kimliği olmalı
      connection
    .post(`parkingareas/${slug}/comments/`, {
      text: commentText,
      parking_area_id: slug
    })
    .then(() => {
      // Yorum başarıyla eklendikten sonra yapılacak işlemler
      console.log('Yorum başarıyla eklendi.');
      // Yorum eklendikten sonra formu sıfırla
      setCommentText('');
    })
    .catch((error) => {
      console.error('Yorum eklenirken bir hata oluştu:', error.message);
    });
};


  return (
    <form className="comment-form" onSubmit={handleSubmit}>
      <textarea
        value={commentText}
        onChange={(e) => setCommentText(e.target.value)}
        placeholder="Yorumunuzu buraya yazın..."
        required
      ></textarea>
      <button type="submit">Yorum Ekle</button>
    </form>
  );
};

CommentForm.propTypes = {
  slug: PropTypes.string.isRequired,
};

export default CommentForm;
