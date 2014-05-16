class LoginScreen < PM::Screen
  title "Sign In"

  def will_appear
    set_attributes self.view, {
      background_color: hex_color("#FFFFFF")
    }
  end
end