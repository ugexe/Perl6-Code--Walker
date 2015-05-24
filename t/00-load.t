use v6;
use Test;
plan 1;

subtest {
    lives-ok { use Code::Walker::Basic    };
    lives-ok { use Code::Walker::NQPMatch };
    lives-ok { use Code::Walker::QAST     };
    lives-ok { use Code::Walker           };
}, "Sanity tests";

done();
