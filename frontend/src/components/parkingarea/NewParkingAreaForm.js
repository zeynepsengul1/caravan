import React, { useState } from 'react';
import { useHistory } from 'react-router-dom';
import connection from "../../connection";
import MapComponent from './MapComponent';
import './NewParkingAreaForm.css';

const NewParkingAreaForm = () => {
    const [formData, setFormData] = useState({
        title: '',
        slug: '',
        // location: '',
        description: '',
        rentalStart: '',
        rentalEnd: '',
        price: '',
        contact: '',
        address: '',
        thumbnail: null // Add a photo property
    });
    const history = useHistory();

    const handleChange = (e) => {
        const { name, value, files } = e.target;
        setFormData((prevState) => ({
            ...prevState,
            [name]: files ? files[0] : value
        }));
    };

    const handleMapClick = (address) => {
        setFormData((prevState) => ({
            ...prevState,
            address: `${address.lat},${address.lng}`,
        }));
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        const data = new FormData();
        for (const key in formData) {
            data.append(key, formData[key]);
        }

        try {
            await connection.post('parkingareas/', data, {
                headers: {
                    'Content-Type': 'multipart/form-data'
                }
            });
            alert('Karavan park alanı başarıyla eklendi. Onay için bekleniyor.');
            history.push('parkingareas');
        } catch (error) {
            console.error(error);
            alert('Karavan park alanı eklenirken bir hata oluştu.');
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
                <label>Adres:</label>
                <MapComponent onMapClick={handleMapClick}/>
            </div>
            <div>
                <label>Açıklama:</label>
                <textarea name="description" value={formData.description} onChange={handleChange} required/>
            </div>
            <div>
                <label>Fiyat:</label>
                <input type="number" name="price" value={formData.price} onChange={handleChange} required/>
            </div>
            <div>
                <label>İletişim:</label>
                <textarea name="contact" value={formData.contact} onChange={handleChange} required/>
            </div>
            {/*<div>*/}
            {/*    <label>Adres:</label>*/}
            {/*    <textarea name="address" value={formData.address} onChange={handleChange} required/>*/}
            {/*</div>*/}
            <div>
                <label>Fotoğraf:</label>
                <input type="file" name="thumbnail" onChange={handleChange} required/>
            </div>
            <button type="submit">Ekle</button>
        </form>
    );
};

export default NewParkingAreaForm;
