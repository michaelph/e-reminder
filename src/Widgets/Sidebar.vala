public class EReminder.Sidebar : Granite.Widgets.SourceList {
    private static Sidebar? instance = null;

    private Granite.Widgets.SourceList.ExpandableItem mailAccount = new Granite.Widgets.SourceList.ExpandableItem ("michael@mail.com");

    public static Sidebar get_instance () {
        if (instance == null) {
            instance = new Sidebar ();
        }

        return instance;
    }

    private Sidebar () {
        build_new_ui ();
        load_notebooks ();
        
    }

    private void build_new_ui () {
        root.add (mailAccount);
        can_focus = false;
        this.width_request = 150;
    }
}
