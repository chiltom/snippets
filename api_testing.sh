#!/bin/bash

# This script contains some useful curl commands that can help when
# attempting to test API endpoints during development.

# Simple GET request - only useful for unprotected routes
curl -X GET "http://localhost:8000/api/v1/users/" \
  -H "Content-Type: application/json"

# POST request with payload
curl -X POST "http://localhost:8000/api/v1/users/login/" \
  -H "Content-Type: application/json" \
  -d '{"email": "super_cool_email@gmail.com", "password": "super_secure_password"}'

# GET request with Authorization headers
curl -X GET "http://localhost:8000/api/v1/lists/" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer your_jwt_token"

# POST request with Authorization headers
curl -X POST "http://localhost:8000/api/v1/lists/" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer your_jwt_token" \
  -d '{"name": "New List", "priority": "High"}'

# GET request with query parameters in the URL
curl -X GET "http://localhost:8000/api/v1/timezones/time_info?lat=32.1059&lon=-80.76" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer your_jwt_token"
