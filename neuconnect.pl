use LWP::UserAgent


# Get Username and password
print("Insert the user name:\n");
$name = <STDIN>;
print("Insert the password:\n");
$passwd = <STDIN>;

# Sending Request
my $ua = LWP::UserAgent->new();

print("connecting...\n");
my $response = $ua->post("https://ipgw.neu.edu.cn/srun_portal_pc.php?url=&ac_id=1",
	['action' => 'login', 
	    'ac_id' => '1', 
	    'username' => $name, 
	    'password' => $passwd, 
	    'save_me' => '0'
	    ]
	);

if($response->content =~ /网络已连接/){
    print("Network Conneted!\n")
}else{
    print("Unknown Error Happend..Please Try again\n")
}
