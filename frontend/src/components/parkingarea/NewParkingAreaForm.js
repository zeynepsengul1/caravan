import React, { useState } from 'react';
import { useHistory } from 'react-router-dom';
import connection from "../../connection";

const NewParkingAreaForm = () => {
    const [formData, setFormData] = useState({
        title: '',
        slug: '',
        location: '',
        description: '',
        rentalStart: '',
        rentalEnd: '',
        price: '',
        contact: '',
        address: ''
    });
    const history = useHistory();

    const handleChange = (e) => {
        setFormData({
            ...formData,
            [e.target.name]: e.target.value
        });
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            await connection.post('parkingareas/', {
                title: formData.title,
                slug: formData.slug,
                location: formData.location,
                description: formData.description,
                rental_start: formData.rentalStart,
                rental_end: formData.rentalEnd,
                price: formData.price,
                contact: formData.contact,
                address: formData.address,
            }
            );
            alert('Karavan park alanı başarıyla eklendi. Onay için bekleniyor.');
            history.push('parkingareas');
        } catch (error) {
            console.error(error);
            alert('Karavan park alanı eklenirken bir hata oluştu.');
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
                <label>Lokasyon:</label>
                <input type="text" name="location" value={formData.location} onChange={handleChange} required/>
            </div>
            <div>
                <label>Açıklama:</label>
                <textarea name="description" value={formData.description} onChange={handleChange} required/>
            </div>
            <div>
                <label>Kiralama Başlangıç Tarihi:</label>
                <input type="datetime-local" name="rentalStart" value={formData.rentalStart} onChange={handleChange}
                       required/>
            </div>
            <div>
                <label>Fiyat:</label>
                <input type="number" name="price" value={formData.price} onChange={handleChange} required/>
            </div>
            <div>
                <label>İletişim:</label>
                <textarea name="contact" value={formData.contact} onChange={handleChange} required/>
            </div>
            <div>
                <label>Adres:</label>
                <textarea name="address" value={formData.address} onChange={handleChange} required/>
            </div>
            <button type="submit">Ekle</button>
        </form>
    );
};

export default NewParkingAreaForm;
