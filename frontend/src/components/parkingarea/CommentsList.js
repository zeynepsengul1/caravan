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
            <li key={index} className="comment-item clearfix">
              <img src={comment.user.avatar} alt="Avatar" className="avatar" />
              <div className="comment-content">
                <span className="comment-author">{comment.user.username}</span>
                <span className="comment-date">{comment.created_at}</span>
                <p className="comment-text">{comment.text}</p>
              </div>
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
