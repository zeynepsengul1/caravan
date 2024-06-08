import React, { useState } from 'react';
import { useHistory } from 'react-router-dom';
import connection from "../../connection";
import './NewPostForm.css';

const NewPostForm = () => {
     const [formData, setFormData] = useState({
        title: '',
        slug: '',
        thumbnail:null,
        description: '',
        price: '',
    });
    const history = useHistory();


    const handleChange = (e) => {
        const { name, value, files } = e.target;
        setFormData((prevState) => ({
            ...prevState,
            [name]: files ? files[0] : value
        }));
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        const data = new FormData();
        for (const key in formData) {
            data.append(key, formData[key]);
        }

        try {
            await connection.post('posts/', data, {
                headers: {
                    'Content-Type': 'multipart/form-data'
                }
            });
            alert('Karavan başarıyla eklendi. Onay için bekleniyor.');
            history.push('posts');
        } catch (error) {
            console.error(error);
            alert('Karavan eklenirken bir hata oluştu.');
        }
    };

    return (
        <form onSubmit={handleSubmit} className="form-container">
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
                <input type="file" name="thumbnail" onChange={handleChange} required/>
            </div>
            <div>
                <label>Açıklama:</label>
                <textarea name="description" value={formData.description} onChange={handleChange} required/>
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
