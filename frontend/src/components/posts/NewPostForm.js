import React, { useState } from 'react';
import { useHistory } from 'react-router-dom';
import connection from "../../connection";

const NewPostForm = () => {
    const [selectedFile, setSelectedFile] = useState(null);

    const handleFileChange = (event) => {
        setSelectedFile(event.target.files[0]);
    };
    const [formData, setFormData] = useState({
        title: '',
        slug: '',
        thumbnail: '',
        description: '',
        read_time: '',
        price: '',
    });
    const history = useHistory();

    const handleChange = (e) => {
        setFormData({
            ...formData,
            [e.target.name]: e.target.value
        });
        formData.append('thumbnail', selectedFile);
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            await connection.post('posts/', {
                title: formData.title,
                slug: formData.slug,
                thumbnail: formData.thumbnail,
                description: formData.description,
                read_time: formData.rentalStart,
                price: formData.price,

            }
            );
            alert('Karavan başarıyla eklendi. Onay için bekleniyor.');
            history.push('posts');
        } catch (error) {
            console.error(error);
            alert('Karavan eklenirken bir hata oluştu.');
        }
    };

    return (
        <form onSubmit={handleSubmit}>
            <div>
                <label>Başlık:</label>
                <input type="text" name="title" value={formData.title} onChange={handleChange} required/>
            </div>
            <div>
                <label>İsim:</label>
                <input type="text" name="slug" value={formData.slug} onChange={handleChange} required/>
            </div>
            <div>
                <label>Foto:</label>
                <input type="file" name="thumbnail" onChange={handleFileChange} />
            </div>
            <div>
                <label>Açıklama:</label>
                <textarea name="description" value={formData.description} onChange={handleChange} required/>
            </div>
            <div>
                <label>Okuma Tarihi:</label>
                <input type="datetime-local" name="read_time" value={formData.read_time} onChange={handleChange}
                       required/>
            </div>
            <div>
                <label>Fiyat:</label>
                <input type="number" name="price" value={formData.price} onChange={handleChange} required/>
            </div>
            <button type="submit">Ekle</button>
        </form>
    );
};

export default NewPostForm;
