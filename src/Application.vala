namespace EReminder {
    public EReminder.Window window;
}

public class EReminder.Application : Granite.Application {
    public override void activate () {
        window = new EReminder.Window (this);
        this.add_window (window);
    }
}
