from flask_login import current_user, AnonymousUserMixin

class CheckRights:
    ADMIN_ROLE_ID = 1
    MODERATOR_ROLE_ID = 2
    USER_ROLE_ID = 3

    def __init__(self, record=None):
        self._record = record

    def show(self):
        return True

    def create(self):
        if isinstance(current_user, AnonymousUserMixin):
            return False
        return current_user.is_admin() or current_user.role_id in [self.ADMIN_ROLE_ID, self.MODERATOR_ROLE_ID, self.USER_ROLE_ID]

    def delete(self):
        if isinstance(current_user, AnonymousUserMixin):
            return False
        return current_user.is_admin() or current_user.role_id == self.MODERATOR_ROLE_ID

    def edit(self):
        if isinstance(current_user, AnonymousUserMixin):
            return False
        if current_user.is_admin():
            return True
        if current_user.role_id == self.MODERATOR_ROLE_ID:
            return True
        if self._record and current_user.id == self._record.user_id:
            return True
        return False

    def review(self):
        if isinstance(current_user, AnonymousUserMixin):
            return False
        return current_user.role_id in [self.ADMIN_ROLE_ID, self.MODERATOR_ROLE_ID, self.USER_ROLE_ID]

    def show_statistics(self):
        # Только админы могут просматривать статистику.
        return current_user.role_id == self.ADMIN_ROLE_ID
