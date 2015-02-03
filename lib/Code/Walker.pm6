use Code::Walker::Base;

class Code::Walker does Code::Walker::Base{
    has $.tree;
    has $.level is rw = 0;
    has Str $.output is rw;

    method !indent($level = $.level) { " " x $level }
    
    proto method walk(Mu $tree) { $.level++; {*}; $.level--; }

    method debug(Mu $say) {
        my $type = $say.HOW.name($say);
        my $out = "[{$type}]: " ~ ($say ~~ Str ?? "{$say.Str}" !! '');
        $.output = ($.output // '') ~ $out ~ "\n";
        say self!indent ~ $out;
    }
}