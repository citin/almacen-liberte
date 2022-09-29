t = make_table([
  [I18n.t('spree.footer_left'), I18n.t('spree.footer_left2'), I18n.t('spree.footer_right'), I18n.t('spree.footer_right2')]
])

# footer
bounding_box [bounds.left, bounds.bottom + 50], :width  => bounds.width do
    font "Helvetica"
    stroke_horizontal_rule
    move_down(5)
    t.draw
end