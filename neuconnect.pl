use LWP::UserAgent;

system("export", "PERL_LWP_SSL_VERIFY_HOSTNAME=0");
$action = 'login';
$argsize = @ARGV;
if($argsize == 1){
	$action = $ARGV[0];
	# Get Username and password
	print("Insert the user name:\n");
	$name = <STDIN>;
	print("Insert the password:\n");
	$passwd = <STDIN>;
	
}
elsif($argsize == 3){
	$action = $ARGV[0];
	$name = $ARGV[1];
	$passwd = $ARGV[2];
}
elsif($argparse == 0){
	# Get Username and password
	print("Insert the user name:\n");
	$name = <STDIN>;
	print("Insert the password:\n");
	$passwd = <STDIN>;
	print("You will login automaticaly...")
}
else{
	dir("Wrong argparse...");
}

if($action != 'login' and $action != 'logout'){
	die("Wrong action...");
}
# Sending Request
my $ua = LWP::UserAgent->new();

print("connecting...\n");
my $response = $ua->post("https://ipgw.neu.edu.cn/srun_portal_pc.php?url=&ac_id=1",
	['action' => $action, 
	    'ac_id' => '1', 
	    'username' => $name, 
	    'password' => $passwd, 
	    'save_me' => '0'
	    ]
	);

# Get Response
if($response->content =~ /网络已连接/){
    print("Network Conneted!\n");
}
elsif($response->content =~ /已欠费/){
    print("Balance is insufficient, Please recharge.\n");
}
elsif($response->content =~ /已经在线了/){
    print("U have already login, please logout at other device.\n");
}
elsif($response->content =~ /用户不存在/ or $response->content =~ /密码错误/){
	print("Login information is wrong! Check it!\n");
}
elsif($response->content =~ /网络已断开/ or $response->content =~ /您似乎未曾连接到网络.../){
	print("logout compelete...\n")
}
else{
    print("Oops! Unknown Error:\n");
    print($response->content);
}
