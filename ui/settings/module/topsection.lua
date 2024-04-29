local awful = require("awful")
local beautiful = require("beautiful")
local helpers = require("helpers")
local wibox = require("wibox")

local widget = wibox.widget {
  {
    {
      {
        {
          widget = wibox.widget.textbox,
          font = beautiful.sans .. " 12",
          valign = "center",
          markup = helpers.colorizeText("Hello " .. beautiful.user .. "!", beautiful.blue)
        },
        {
          widget = wibox.widget.textbox,
          font = beautiful.sans .. " 14",
          valign = "center",
          markup = helpers.colorizeText(" ⋅ ", beautiful.fg)
        },
        {
          font = beautiful.sans .. " 12",
          format = helpers.colorizeText("%A, %d %B", beautiful.blue),
          align = "center",
          valign = "center",
          widget = wibox.widget.textclock
        },
        spacing = 3,
        layout = wibox.layout.fixed.horizontal,
      },
      nil,
      nil,
      layout = wibox.layout.align.horizontal,
    },
    widget = wibox.container.margin,
    top = 15,
    bottom = 15,
    left = 15,
    right = 15,
  },
  widget = wibox.container.background,
  bg = beautiful.blue .. '11',
}

return widget
