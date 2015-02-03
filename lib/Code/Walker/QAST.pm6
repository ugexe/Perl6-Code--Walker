use Code::Walker::Base;

role Code::Walker::QAST does Code::Walker::Base {
    multi method walk (QAST::CompUnit $qast) {
        $qast.list.map(-> $node { $.walk($node) });
    }

    multi method walk (QAST::Block $qast) {
        $qast.list.map(-> $node { $.walk($node) });
    }

    multi method walk (QAST::Var $qast) {
        $qast.list.map(-> $node { $.walk($node) });
    }

    multi method walk (QAST::Stmts $qast) {
        $qast.list.map(-> $node { $.walk($node) });
    }

    multi method walk (QAST::Stmt $qast) {
        $qast.list.map(-> $node { $.walk($node) });
    }

    multi method walk (QAST::Op $qast) {
        $qast.list.map(-> $node { $.walk($node) }); 
    }

    multi method walk (QAST::Want $qast) {
        $qast.list.map(-> $node { $.walk($node) });
    }

    multi method walk (QAST::WVal $qast) {
        $qast.list.map(-> $node { $.walk($node) }); 
    }

    multi method walk (QAST::SVal $qast) {
        $qast.list.map(-> $node { $.walk($node) });
    }

    multi method walk (QAST::IVal $qast) {
        $qast.list.map(-> $node { $.walk($node) }); 
    }

    multi method walk (QAST::VM $qast) {
        $qast.list.map(-> $node { $.walk($node) });
    }

    multi method walk (QAST::ParamTypeCheck $qast) {
        $qast.list.map(-> $node { $.walk($node) });
    }
}