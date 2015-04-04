require "spec_helper"

describe "font-face" do
  before(:all) do
    ParserSupport.parse_file("css3/font-face")
  end

  context "called with defaults" do
    it "outputs defaults" do
      ruleset = 'font-family: "source-sans-pro"; ' +
                'font-style: normal; ' +
                'font-weight: normal; ' +
                'src: url("/fonts/source-sans-pro/source-sans-pro-regular.woff2") format("woff2"), url("/fonts/source-sans-pro/source-sans-pro-regular.woff") format("woff"), url("/fonts/source-sans-pro/source-sans-pro-regular.ttf") format("truetype");'

                # 'font-family: "roboto"; ' +
                # 'font-style: "italic"; ' +
                # 'font-weight: "bold"; ' +
                # 'src: url("/assets/fonts/Roboto-BoldItalic.ttf") ' +
                # 'format("truetype");'

                # 'font-family: "pitch"; ' +
                # 'font-style: "normal"; ' +
                # 'font-weight: "normal"; ' +
                # 'src: url("/fonts/pitch.woff") format("woff");'

                # 'font-family: "circular"; ' +
                # 'font-style: "normal"; ' +
                # 'font-weight: "normal"; ' +
                # 'src: url("/circular.woff2") format("woff2"), ' +
                # 'url("/circular.svg#circular") format("svg");'

      expect("@font-face").to have_ruleset(ruleset)
    end
  end
end
