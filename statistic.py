from flask import render_template, url_for, request, redirect, flash, Blueprint, g, redirect, send_file, abort
from flask_login import login_required, current_user
from functools import wraps
from app import db
from check_rights import CheckRights
import math
import csv
from io import StringIO, BytesIO
from auth import check_perm
from datetime import date, datetime, timedelta


statistic_bp = Blueprint('statistic', __name__)


@statistic_bp.route('/admin_statistic')
@login_required
def admin_statistics():
    if current_user.role != 1:
        abort(403)
    user_page = request.args.get('user_page', 1, type=int)
    book_page = request.args.get('book_page', 1, type=int)
    start_date = request.args.get('start_date')
    end_date = request.args.get('end_date')

    user_log, user_total_pages = get_user_log(user_page)


    return render_template('admin_statistics.html', 
                           user_log=user_log, 
                           user_total_pages=user_total_pages, 
                           user_current_page=user_page, 
                           book_current_page=book_page,  
                           start_date=start_date, 
                           end_date=end_date)
    
    
def get_user_log(page, per_page=10):
    offset = (page - 1) * per_page
    cursor = db.connection().cursor(named_tuple=True)
    cursor.execute('''
        SELECT 
        eventlist.id,
        IF(users.id IS NULL, 'Неаутентифицированный пользователь',
        CONCAT_WS(' ', 
            NULLIF(users.surname, ''),
            NULLIF(users.name, ''),
            NULLIF(users.patronymic, '')
        )
        ) AS full_name, 
        book_des.name AS book_title, 
        eventlist.created_at
        FROM eventlist
        LEFT JOIN users ON eventlist.user_id = users.id
        LEFT JOIN book_des ON eventlist.book_id = book_des.id
        ORDER BY eventlist.created_at DESC
        LIMIT %s OFFSET %s
    ''', (per_page, offset))
    user_log = cursor.fetchall()

    cursor.execute('SELECT COUNT(*) AS total FROM eventlist')
    total_records = cursor.fetchone().total
    total_pages = math.ceil(total_records / per_page)
    cursor.close()
    return user_log, total_pages


