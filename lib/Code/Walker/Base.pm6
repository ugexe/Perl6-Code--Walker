use Perl6::Grammar:from<NQP>;
use Perl6::Actions:from<NQP>;
    
role Code::Walker::Base {
    multi method walk (Str $value)   { $.walk($value)       }

    multi method walk (Pair $tree)   { $.walk($tree.value)  }

    multi method walk (Parcel $tree) { $.walk($_) for $tree.list   }

    multi method walk (Hash $tree)   { $.walk($_) for $tree.values }
}