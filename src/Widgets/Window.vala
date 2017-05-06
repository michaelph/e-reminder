public class EReminder.Window : Gtk.ApplicationWindow {

    private EReminder.Sidebar sidebar;

    private Gtk.Paned pane1;
    private Gtk.Paned pane2;

    public Window (Gtk.Application app) {
        Object (application: app);
        build_ui ();
        Sidebar.get_instance ().first_start ();
    }

    private void build_ui () {

        pane1 = new Gtk.Paned (Gtk.Orientation.HORIZONTAL);
        sidebar = EReminder.Sidebar.get_instance ();

        pane1.pack1 (sidebar, false, false);
        pane1.position = (50);
        this.add (pane1);
        this.show_all ();
    }

}