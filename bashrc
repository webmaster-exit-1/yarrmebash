eval 
            __main() {
                local major="${BASH_VERSINFO[0]}"
                local minor="${BASH_VERSINFO[1]}"

                if ((major > 4)) || { ((major == 4)) && ((minor >= 1)); }; then
                    source <(/usr/local/bin/starship init bash --print-full-init)
                else
                    source /dev/stdin <<<"$(/usr/local/bin/starship init bash --print-full-init)"
                fi
            }
            __main
            unset -f __main
            
export PATH=/home/gitpod/.cargo/bin:/home/gitpod/.cargo/bin:/home/gitpod/.cargo/bin:/home/gitpod/.sdkman/candidates/maven/current/bin:/home/gitpod/.sdkman/candidates/java/current/bin:/home/gitpod/.sdkman/candidates/gradle/current/bin:/workspace/.cargo/bin:/home/gitpod/.rvm/gems/ruby-2.7.5/bin:/home/gitpod/.rvm/gems/ruby-2.7.5@global/bin:/home/gitpod/.rvm/rubies/ruby-2.7.5/bin:/home/gitpod/.pyenv/plugins/pyenv-virtualenv/shims:/home/gitpod/.nix-profile/bin:/ide/bin/remote-cli:/workspace/go/bin:/home/gitpod/go/bin:/home/gitpod/go-packages/bin:/home/gitpod/.nvm/versions/node/v16.14.2/bin:/workspace/.pip-modules/bin:/home/gitpod/.pyenv/bin:/home/gitpod/.pyenv/shims:/workspace/.rvm/bin:/home/gitpod/.cargo/bin:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin/:/usr/games:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/gitpod/.nvm/versions/node/v16.14.2/bin:/home/gitpod/.rvm/bin:/home/gitpod/.rvm/bin
