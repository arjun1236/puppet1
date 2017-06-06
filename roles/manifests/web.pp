class roles::web{
          include motd
          include ssh
          include profiles::web
}
