# encoding: UTF-8
require File.expand_path(File.join('../', 'spec_helper'), File.dirname(__FILE__))

describe StringMarkdown do
  let(:text) {
    <<MARKDOWN
# level1 header
## level2 header
```
block code
```

* list
* list

http://example.com
MARKDOWN
  }
  describe 'to_markdown' do
    before do
    end
    it { text.to_md.should =~ /<h1>level1 header<\/h1>/ }
    it { text.to_md.should =~ /<h2>level2 header<\/h2>/ }
    it { text.to_md.should =~ /<div class="highlight"><pre><span class="n">block<\/span> <span class="n">code<\/span>/ }
    it { text.to_md.should =~ /<li>list<\/li>/ }
    it { text.to_md.should =~ /<a href="http:\/\/example.com">http:\/\/example.com<\/a>/ }
  end
end
