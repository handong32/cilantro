for ((i=3;i<=20;i++)); do ssh-copy-id 10.10.1.; sleep 1 ; done
  120  for ((i=3;i<=20;i++)); do echo 10.10.1.$i; done > ~/.pssh_hosts_files
  121  cat ~/.pssh_hosts_files 
  125  pssh -i -h ~/.pssh_hosts_files date
  136  parallel-ssh -i -h ~/.pssh_hosts_files date
  137  cat .pssh_hosts_files 
  139  parallel-ssh -h ~/.pssh_hosts_files -- sudo apt-get -y update
  142  parallel-ssh -h ~/.pssh_hosts_files -- git clone git@github.com:handong32/peakler.git
  143  parallel-ssh -h ~/.pssh_hosts_files -- git clone -y git@github.com:handong32/peakler.git
  144  parallel-ssh -i -h ~/.pssh_hosts_files -- git clone -y git@github.com:handong32/peakler.git
  145  parallel-ssh -i -h ~/.pssh_hosts_files -- git clone git@github.com:handong32/peakler.git
  146  parallel-scp -h ~/.pssh_hosts_files peakler/ ~/
  147  #parallel-scp -h ~/.pssh_hosts_files peakler/ ~/
  149  parallel-scp -r -i -h ~/.pssh_hosts_files peakler/ ~/
  150  parallel-scp -r -h ~/.pssh_hosts_files peakler/ ~/
  151  parallel-ssh -i -h ~/.pssh_hosts_files -- ls
  152  parallel-ssh -i -h ~/.pssh_hosts_files -- ~/peakler/scripts/install_k8s.sh
  166  parallel-ssh -i -h ~/.pssh_hosts_files -- rm -rf peakler
  167  parallel-scp -r -h ~/.pssh_hosts_files peakler/ ~/
  168  #parallel-scp -r -h ~/.pssh_hosts_files peakler/ ~/
  170  parallel-scp -r -h ~/.pssh_hosts_files peakler/ ~/
  179  parallel-scp -r -h ~/.pssh_hosts_files peakler/ ~/
  181  parallel-ssh -i -h ~/.pssh_hosts_files -- rm -rf peakler
  182  parallel-scp -r -h ~/.pssh_hosts_files peak
  183  parallel-scp -r -h ~/.pssh_hosts_files peakler/ ~/
  186  #for ((i=5;i<=20;i++)); do echo 10.10.1.$i; done > ~/.pssh_hosts_files
  187  #parallel-ssh -i -h ~/.pssh_hosts_files -- ~/peakler/scripts/install_k8s.sh
  188  cat .pssh_hosts_files 
  189  parallel-ssh -i -h ~/.pssh_hosts_files -- ~/peakler/scripts/install_k8s.sh
  193  parallel-ssh -t 0 -h ~/.pssh_hosts_files -- ~/peakler/scripts/install_k8s.sh
  195  parallel-ssh -t 0 -h ~/.pssh_hosts_files -- sudo kubeadm join 128.110.216.119:6443 --token s5qo69.nel6ilmgss2bsb7p --discovery-token-ca-cert-hash sha256:c6de62348a35a3fe94dde0b19491f8e8ec9e2a49d94ae4a16b035ffc49c405eb
  363  history | grep pssh_hosts
  390  history | grep pssh_hosts >> parallelssh.MD 
