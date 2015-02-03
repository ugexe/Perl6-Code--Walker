use v6;
use Test;
plan 1;

subtest {
    lives_ok { use Code::Walker::Basic    };
    lives_ok { use Code::Walker::NQPMatch };
    lives_ok { use Code::Walker::QAST     };
    lives_ok { use Code::Walker           };
}, "Sanity tests";

done();
