module ApplicationHelper
    # Full Title on each page
    def full_title(page_title = '')
        base_title = "Scarbrough-Ward"
        if page_title.empty?
            base_title
        else
            page_title + " | " + base_title
        end
    end
end
 