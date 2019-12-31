using Gtk;

public class SyncSample : Window {

    private SpinButton spin_box;
    private Scale slider;

    public SyncSample () {
        
        this.title = "Furry Text";
        this.border_width = 10;
        this.window_position = WindowPosition.CENTER;
        this.set_default_size (500,  50);
        destroy.connect (Gtk.main_quit);
        icon = new Gdk.Pixbuf.from_file("icon.png");

        var label = new Label("That Stupid Python Game I made but In Vala");
        var entry = new Entry();
        var enable = new Gtk.Button.with_label ("Click Me");
        var b2 = new Box (Orientation.VERTICAL, 5);
        
        b2.homogeneous = false;
        enable.clicked.connect (() => {
            var etx = entry.get_text();
            var label3 = etx.replace("r", "w").replace("n", "ny").replace("l", "ll").replace("o", "aw").replace("y", "ee");
            int rnum= Random.int_range(0,15);
            string[] rand =  {"（*＾ワ＾*）", "(*＾წ＾*)", "(*꧆▽꧆*)", "(๑꧆◡꧆๑)", "（*＾＾*)", "ヾ(＠^∇^＠)ノ", "o((*^▽^*))o", "ヾ(＠⌒ー⌒＠)ノ", "(＝⌒▽⌒＝)", "(≡^∇^≡)", "o(〃＾▽＾〃)o", "(。・ω・。)", "ヾ(＾-＾)ノ", "(❁´◡`❁)", "˙˚ʚ(´◡`)ɞ˚˙"};    
            var label2 = new Label(rand[rnum]);
            var den = new Dialog();
            var da = den.get_content_area();
            var dalbl = new Label(label3)750 ;
            var dalbl2 = new Label(rand[rnum]);
            var d = new Box (Orientation.VERTICAL, 5);
            d.add(dalbl);
            d.add(dalbl2);
            da.add(d);
            den.show_all ();
        });
        var b = new Box (Orientation.VERTICAL, 5);
        b.homogeneous = false;
        b.add (label);
        b.add (entry);
        b.add (enable);

        var b3 = new Box (Orientation.VERTICAL, 5);
        b3.add(b);
        b3.add(b2);

        add(b3);
    }

    public static int main (string[] args) {
        Gtk.init (ref args);

        var w = new SyncSample();
        w.show_all ();

        Gtk.main ();
        return 0;
    }
}
