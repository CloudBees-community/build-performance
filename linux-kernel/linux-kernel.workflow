node {
  stage "Download"
  sh "wget --continue https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.1.12.tar.xz"

  stage "Unpack"
  sh "tar xf linux-4.1.12.tar.xz"

  stage "Configure"
  sh "cp basic-config ; linux-4.1.12/.config"

  stage "Build"
  sh "cd linux-4.1.12 ; make all"
}