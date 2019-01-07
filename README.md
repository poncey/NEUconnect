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

## Issue for 'PERL\_LWP\_SSL\_VERIFY\_HOSTNAME'
If the issue raised and it is about PERL\_LWP\_SSL\_VERIFY\_HOSTNAME,
Please enter this code at shell before usage:
<pre><code>
export PERL_LWP_SSL_VERIFY_HOSTNAME = 0
</code></pre>
## Jan, 2019: Updated with Net::SSL
You may need to install the Net::SSL package before use. Link [here][1].

[1]:	https://metacpan.org/pod/Net::SSL