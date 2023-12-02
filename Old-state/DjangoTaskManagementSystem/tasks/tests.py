from django.test import TestCase
from django.urls import reverse
from django.contrib.auth.models import User
from tasks.models import TaskPlanned

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

class TaskCreationTest(TestCase):

    def setUp(self):
        self.user = User.objects.create_user(username='testUser', password='testPassword123')
        self.client.login(username='testUser', password='testPassword123')

    def test_task_creation_with_valid_data(self):
        create_task_url = reverse('create_task')
        task_data = {
            'title': 'Test Task',
            'description': 'Test Description',
            'deadline': '2023-10-25',
            'priority': '1'
        }
        response = self.client.post(create_task_url, task_data, follow=True)
        self.assertEqual(response.status_code, 200)

        task_exists = TaskPlanned.objects.filter(title='Test Task').exists()
        self.assertTrue(task_exists)

    def test_task_creation_with_invalid_data(self):
        create_task_url = reverse('create_task')
        task_data = {
            'title': 'Test Task',
            'deadline': '2023-10-25',
            'priority': '8'
        }
        response = self.client.post(create_task_url, task_data, follow=True)
        self.assertEqual(response.status_code, 200)

        task_exists = TaskPlanned.objects.filter(title='Test Task').exists()
        self.assertFalse(task_exists)

class TaskEditTest(TestCase):

    def setUp(self):
        self.user = User.objects.create_user(username='testUser', password='testPassword123')
        self.client.login(username='testUser', password='testPassword123')
        self.task = TaskPlanned.objects.create(
            title='Original Task',
            description='Original Description',
            deadline='2023-10-24',
            priority='1',
            user=self.user
        )

    def test_task_edit_with_valid_data(self):
        edit_task_url = reverse('edit_task', args=[self.task.id])
        updated_task_data = {
            'title': 'Updated Task',
            'description': 'Updated Description',
            'deadline': '2023-10-26',
            'priority': '2'
        }
        response = self.client.post(edit_task_url, updated_task_data, follow=True)
        self.assertEqual(response.status_code, 200)

        task_updated = TaskPlanned.objects.get(id=self.task.id)
        self.assertEqual(task_updated.title, 'Updated Task')
        self.assertEqual(task_updated.description, 'Updated Description')

    def test_task_edit_with_invalid_data(self):
        edit_task_url = reverse('edit_task', args=[self.task.id])
        invalid_task_data = {
            'title': '',
            'deadline': '2023-10-26',
            'priority': '8'
        }
        response = self.client.post(edit_task_url, invalid_task_data, follow=True)
        self.assertEqual(response.status_code, 200)

        task_not_updated = TaskPlanned.objects.get(id=self.task.id)
        self.assertNotEqual(task_not_updated.title, '')

class TaskDeleteTest(TestCase):

    def setUp(self):
        self.user = User.objects.create_user(username='testUser', password='testPassword123')
        self.client.login(username='testUser', password='testPassword123')
        self.task = TaskPlanned.objects.create(
            title='Task to Delete',
            description='Description of Task to Delete',
            deadline='2023-10-24',
            priority='1',
            user=self.user
        )

    def test_task_delete(self):
        delete_task_url = reverse('delete_task', args=[self.task.id])
        response = self.client.post(delete_task_url, follow=True)
        self.assertEqual(response.status_code, 200)

        task_deleted = not TaskPlanned.objects.filter(id=self.task.id).exists()
        self.assertTrue(task_deleted)

class AccessRestrictionTest(TestCase):

    def setUp(self):
        self.user1 = User.objects.create_user(username='testUser1', password='testPassword123')
        self.user2 = User.objects.create_user(username='testUser2', password='testPassword123')
        self.task = TaskPlanned.objects.create(
            title='Test Task',
            description='Test Description',
            deadline='2023-10-25',
            priority=1,
            user=self.user1
        )

    def test_access_restriction_for_unauthorized_user_edit(self):
        self.client.login(username='testUser2', password='testPassword123')

        edit_task_url = reverse('edit_task', args=[self.task.id])
        response = self.client.get(edit_task_url, follow=True)

        self.assertRedirects(response, reverse('forbidden'))

    def test_access_restriction_for_unauthorized_user_deletion(self):
        self.client.login(username='testUser2', password='testPassword123')

        delete_task_url = reverse('delete_task', args=[self.task.id])
        response = self.client.get(delete_task_url, follow=True)

        self.assertRedirects(response, reverse('forbidden'))
