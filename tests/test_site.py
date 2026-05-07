import pytest
from playwright.sync_api import Page, expect

def test_login_page_visual_check(page: Page):
    """Verify the login page loads with the correct heading"""
    page.goto("https://the-internet.herokuapp.com/login")
    
    # Assert that the login header is visible
    header = page.locator("h2")
    expect(header).to_have_text("Login Page")

def test_secure_area_failure(page: Page):
    """This test is designed to FAIL to show off your CI reporting skills"""
    page.goto("https://the-internet.herokuapp.com/login")
    
    # We try to find a 'Logout' button that shouldn't exist yet
    # This will fail after a timeout
    logout_button = page.locator(".icon-signout")
    expect(logout_button).to_be_visible(timeout=5000)