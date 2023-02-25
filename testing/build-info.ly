\version "2.23.12"

#(begin
  (use-modules
   (ice-9 popen)
   (ice-9 rdelim)
   
 )
  (define (get-first-line-of cmd)
   (let* ((port (open-input-pipe cmd))
	  (str (read-line port)))
    (close-pipe port)
    str))

  (define fb:build-info (make-hash-table 31))

  (define (get-build-info sym)
   (hashq-ref fb:build-info sym ""))

  (hashq-set! fb:build-info 'build-date
   (get-first-line-of "date --utc"))

  (hashq-set! fb:build-info 'hostname
   (get-first-line-of "hostname"))

  (hashq-set! fb:build-info 'username
   (get-first-line-of "whoami"))

  (hashq-set! fb:build-info 'kernel
   (get-first-line-of "uname -sr"))

  (hashq-set! fb:build-info 'git-tag
   (get-first-line-of "git describe --abbrev=0 --always"))

  (hashq-set! fb:build-info 'git-desc
   (get-first-line-of "git describe --tags --always"))

  (hashq-set! fb:build-info 'git-commits
   (get-first-line-of "git log --pretty=format:\\'\\' | wc -l"))

  (hashq-set! fb:build-info 'lily-version
   (get-first-line-of "lilypond --version"))

  (display "Build info: ")
  (newline)
  (hash-for-each (lambda (k v) (display k) (display ": ") (display v) (newline)) fb:build-info)


)
