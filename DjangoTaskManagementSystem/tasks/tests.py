from django.test import TestCase
from django.urls import reverse
from django.contrib.auth.models import User

class UserRegistrationTest(TestCase):

    def test_registration_with_valid_data(self):
        registration_url = reverse('register')
        user_data = {
            'username': 'testUser',
            'password1': 'testPassword123',
            'password2': 'testPassword123'
        }

        response = self.client.post(registration_url, user_data)

        self.assertEqual(response.status_code, 302)

        user_exists = User.objects.filter(username='testUser').exists()
        self.assertTrue(user_exists)

class UserLoginTest(TestCase):

    def setUp(self):
        self.user = User.objects.create_user(username='testUser', password='testPassword123')

    def test_login_with_valid_credentials(self):
        login_url = reverse('login')
        login_data = {
            'username': 'testUser',
            'password': 'testPassword123',
        }
        response = self.client.post(login_url, login_data, follow=True)
        self.assertEqual(response.status_code, 200)
        self.assertRedirects(response, reverse('home'))

    def test_login_with_invalid_credentials(self):
        login_url = reverse('login')
        login_data = {
            'username': 'testUser',
            'password': 'wrongPassword',
        }
        response = self.client.post(login_url, login_data, follow=True)
        self.assertEqual(response.status_code, 200)
        self.assertContains(response, 'Please enter a correct username and password')

