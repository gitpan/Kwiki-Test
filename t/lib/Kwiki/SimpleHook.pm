package Kwiki::SimpleHook;
use Kwiki::Plugin '-Base';
use Kwiki::Installer '-base';

const class_id => 'simple_hook';

sub register {
    my $registry = shift;
    $registry->add(hook => 'page:store', pre => 'update_content');
    warn "hearing register\n";
    super;
}

sub update_content {
    my $page = $self;
    my $hook = pop;
    warn "hearing hook\n";
    $page->content($page->content . "\n\nSimple Hook Hooks Again!\n");
}
