node {
  stage "Download"
  sh "wget --continue https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.1.12.tar.xz"

  stage "Unpack"
  sh "tar xf linux-4.1.12.tar.xz"

  stage "Configure"
  sh "cd linux-4.1.12 ; ./configure"

  stage "Build"
  sh "cd linux-4.1.12 ; make all"
}