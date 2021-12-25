#-*- coding: utf-8 -*-
Plugin.create :postbox_text_font do
  UserConfig[:postbox_text_font] ||= "Sans 10"

  class Gtk::PostBox
    def gen_widget_post
      postbox_font = UserConfig[:postbox_text_font]
      notice "UserConfig[:postbox_text_font]: #{postbox_font}"
      font = postbox_font.match(/ [0-9].$/)
      fontsize = font[0].slice(/[0-9].$/)
      fontname = font.pre_match
      css = "textview { font-family: '#{fontname}'; font-size: #{fontsize}pt; }"
      notice "postbox_font css: #{css}"

      wp = Gtk::TextView.new
      provider = Gtk::CssProvider.new
      provider.load_from_data(css)
      wp.style_context.add_provider(provider, Gtk::StyleProvider::PRIORITY_APPLICATION)
      wp
    end
  end

  settings(_('投稿ボックスフォント')) do
    fontcolor _('投稿ボックスのフォント'), :postbox_text_font, :postbox_text_color
  end
end
