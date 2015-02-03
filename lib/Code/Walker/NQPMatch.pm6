use Code::Walker::Base;

role Code::Walker::NQPMatch does Code::Walker::Base {
    multi method walk (NQPMatch $tree where {$tree.list} ) {
        for $tree.list -> $node {
            $.walk($_) for $node.list;
            nqp::islist($node)
                ?? $node.list.map(-> $subnode { $.walk($subnode) })
                !! $.walk($node);
        }
    }

    multi method walk (NQPMatch $tree where {$tree.hash} ) {
        for $tree.hash -> $node {
            nqp::islist($node.value) 
                ?? $node.value.map(-> $subnode { say $subnode.HOW.name($subnode); $.walk($subnode) })
                !! $.walk($node.value);
        }
    }

    multi method walk (NQPMatch $tree) {
        $.walk($tree.Str);
    }
}