CREATE TABLE patients (  
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
    date_of_birth DATE,
    PRIMARY KEY(id)
);

CREATE TABLE medical_histories (  
    id INT GENERATED ALWAYS AS IDENTITY,
    admitted_at TIMESTAMP,
    status VARCHAR(255),
    patient_id INT REFERENCES patients(id)
    PRIMARY KEY(id)
);

CREATE TABLE treatments (  
    id INT GENERATED ALWAYS AS IDENTITY,
    type VARCHAR(255),
    name VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE treatments_histories (
    id INT GENERATED ALWAYS AS IDENTITY,
    treatment_id INT REFERENCES treatments(id)
    medical_history_id INT REFERENCES medical_histories(id)
    PRIMARY KEY (treatment_id, medical_history_id)
)


