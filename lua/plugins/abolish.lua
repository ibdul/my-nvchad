return {
  'tpope/vim-abolish',
  event = "VeryLazy",
  description = [[
    Abbreviation,
      :Abolish {despa,sepe}rat{e,es,ed,ing,ely,ion,ions,or}  {despe,sepa}rat{}
    Substitution
      :%Subvert/facilit{y,ies}/building{,s}/g
      :Subvert/address{,es}/reference{,s}/g
    Coercion
      Want to turn fooBar into foo_bar? Press crs (coerce to snake_case). MixedCase (crm), camelCase (crc), UPPER_CASE (cru), dash-case (cr-), and dot.case (cr.) are all just 3 keystrokes away.
  ]],
  opts = {},
  config = function() end,
}
