# Consultation System API Documentation

Welcome to the Consultation System API documentation. This API allows you to interact with the Consultation System for medical consultations and recommendations.

## Base URL

The base URL for all API requests is `http://127.0.0.1:3000/`.

## API Routes

### Create a Consultation Request

- **Endpoint**: `/consultation_requests`
- **Method**: POST
- **Description**: Create a new consultation request.
- **Request Body**:
  - `patient_id` (integer, required): The ID of the patient making the request.
  - `consultation_request` (object, required): Contains the following:
	- `request_text` (string, required): The text of the consultation request.
    - `creation_date` (date, optional): The request creation date.
- **Example Request**:
  ```json
  POST http://localhost:3000/consultation_requests
  {
    "patient_id": 2,
    "consultation_request": {
        "request_text": "the stomach ache come bach again.",
        "creation_date": "06/11/2023"
    }
  }```

- **Endpoint**: `/consultation_requests/:request_id/recommendations`
- **Method**: POST
- **Description**: Create a new recommendation based on exist consultation request.
- **Request Parameters**:
  - `request_id` (integer, required): The ID of the consultation request which related to the recommendation.
- **Request Body**:
  - `recommendation` (object, required): Contains the following:
	- `recommendation_text` (string, required): The text of the recommendation.
- **Example Request**:
  ```json
  POST http://localhost:3000/consultation_requests/4/recommendations
  {
    "recommendation": {
        "recommendation_text": "Just drink some tea and do not eat too much."
    }
  }```
  
- **Endpoint**: `/patients/:patient_id/recommendations`
- **Method**: GET
- **Description**: Retrieve a list of recommendations for a specific patient.
- **Request Parameters**:
  - `patient_id` (integer, required): The ID of the patient making the request.
- **Example Request**:
  ```
  POST http://localhost:3000/patients/2/recommendations
  ```
  
- **Endpoint**: `/drug_info/search/:drug_desc`
- **Method**: GET
- **Description**: Retrieve a list of drug with some info which names Contain a given string.
- **Request Parameters**:
  - `drug_desc` (string, required): A name or a part of drug name.
- **Example Request**:
  ```
  POST http://localhost:3000/drug_info/search/Progesterone
  ```