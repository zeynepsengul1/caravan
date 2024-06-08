import React, { useState, useEffect } from "react";
import PropTypes from "prop-types";
import connection from "../../connection";

const CommentsList = ({ slug }) => {
  const [comments, setComments] = useState([]);

  useEffect(() => {
    connection
      .get(`parkingareas/${slug}/comments/`)
      .then((res) => {
        setComments(res.data);
      })
      .catch((error) => {
        console.error('Yorumları alırken bir hata oluştu:', error.message);
      });
  }, [slug]);

  return (
    <div className="comments-list">
      <h2>Yorumlar</h2>
      {comments.length > 0 ? (
        <ul>
          {comments.map((comment, index) => (
            <li key={index}>
              <p>{comment.text}</p>
              <span>{comment.user.username}</span>
              <span>{comment.created_at}</span>
            </li>
          ))}
        </ul>
      ) : (
        <p>Henüz yorum yok.</p>
      )}
    </div>
  );
};

CommentsList.propTypes = {
  slug: PropTypes.string.isRequired,
};

export default CommentsList;
