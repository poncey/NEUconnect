# NEUconnect
A code to connect the NEU portal with Perl.

It may connect as a form of your mobile terminal.

to connect, enter this:
<pre><code>
perl neuconnect.pl login
</code></pre>

to disconnect enter this:
<pre><code>
perl neuconnect.pl logout
</code></pre>
## Issue for 'PERL_LWP_SSL_VERIFY_HOSTNAME'
If the issue raised and it is about PERL_LWP_SSL_VERIFY_HOSTNAME,
Please enter this code at shell before usage:
<pre><code>
export PERL_LWP_SSL_VERIFY_HOSTNAME = 0
</code></pre>
