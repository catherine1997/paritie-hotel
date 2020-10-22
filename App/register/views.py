from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from accounts.serializers import UserSerializer
from django.contrib.auth.models import User


class Username(APIView):

	"""
	Creates the user
	"""

	def post(self, request, format='json'):
		return Response('hello')

class UserCreate(APIView):

	"""
	creates the user
	"""

	def post(self, request, format ='json'):
		serializer = UserSerialer(data=request.data)
		if serializer.is_valid():
			user = serializer.save()
			if user:
				return Response(serializer.data, status=status.HTTP_201_CREATED)