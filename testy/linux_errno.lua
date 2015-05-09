-- errno-base.h
-- Database of error codes for Linux
local exports = {}

exports.EPERM =  1;  -- Operation not permitted 
exports.ENOENT =  2;  -- No such file or directory 
exports.ESRCH =  3;  -- No such process 
exports.EINTR =  4;  -- Interrupted system call 
exports.EIO =  5;  -- I/O error 
exports.ENXIO =  6;  -- No such device or address 
exports.E2BIG =  7;  -- Argument list too long 
exports.ENOEXEC =  8;  -- Exec format error 
exports.EBADF =  9;  -- Bad file number 
exports.ECHILD = 10;  -- No child processes 
exports.EAGAIN = 11;  -- Try again 
exports.ENOMEM = 12;  -- Out of memory 
exports.EACCES = 13;  -- Permission denied 
exports.EFAULT = 14;  -- Bad address 
exports.ENOTBLK = 15;  -- Block device required 
exports.EBUSY = 16;  -- Device or resource busy 
exports.EEXIST = 17;  -- File exists 
exports.EXDEV = 18;  -- Cross-device link 
exports.ENODEV = 19;  -- No such device 
exports.ENOTDIR = 20;  -- Not a directory 
exports.EISDIR = 21;  -- Is a directory 
exports.EINVAL = 22;  -- Invalid argument 
exports.ENFILE = 23;  -- File table overflow 
exports.EMFILE = 24;  -- Too many open files 
exports.ENOTTY = 25;  -- Not a typewriter 
exports.ETXTBSY = 26;  -- Text file busy 
exports.EFBIG = 27;  -- File too large 
exports.ENOSPC = 28;  -- No space left on device 
exports.ESPIPE = 29;  -- Illegal seek 
exports.EROFS = 30;  -- Read-only file system 
exports.EMLINK = 31;  -- Too many links 
exports.EPIPE = 32;  -- Broken pipe 
exports.EDOM = 33;  -- Math argument out of domain of func 
exports.ERANGE = 34;  -- Math result not representable 

exports.EDEADLK = 35;  -- Resource deadlock would occur 
exports.ENAMETOOLONG = 36;  -- File name too long 
exports.ENOLCK = 37;  -- No record locks available 
exports.ENOSYS = 38;  -- Function not implemented 
exports.ENOTEMPTY = 39;  -- Directory not empty 
exports.ELOOP = 40;  -- Too many symbolic links encountered 
exports.EWOULDBLOCK = exports.EAGAIN;  -- Operation would block 
exports.ENOMSG = 42;  -- No message of desired type 
exports.EIDRM = 43;  -- Identifier removed 
exports.ECHRNG = 44;  -- Channel number out of range 
exports.EL2NSYNC = 45;  -- Level 2 not synchronized 
exports.EL3HLT = 46;  -- Level 3 halted 
exports.EL3RST = 47;  -- Level 3 reset 
exports.ELNRNG = 48;  -- Link number out of range 
exports.EUNATCH = 49;  -- Protocol driver not attached 
exports.ENOCSI = 50;  -- No CSI structure available 
exports.EL2HLT = 51;  -- Level 2 halted 
exports.EBADE = 52;  -- Invalid exchange 
exports.EBADR = 53;  -- Invalid request descriptor 
exports.EXFULL = 54;  -- Exchange full 
exports.ENOANO = 55;  -- No anode 
exports.EBADRQC = 56;  -- Invalid request code 
exports.EBADSLT = 57;  -- Invalid slot 

exports.EDEADLOCK  = exports.EDEADLK;

exports.EBFONT = 59;  -- Bad font file format 
exports.ENOSTR = 60;  -- Device not a stream 
exports.ENODATA = 61;  -- No data available 
exports.ETIME = 62;  -- Timer expired 
exports.ENOSR = 63;  -- Out of streams resources 
exports.ENONET = 64;  -- Machine is not on the network 
exports.ENOPKG = 65;  -- Package not installed 
exports.EREMOTE = 66;  -- Object is remote 
exports.ENOLINK = 67;  -- Link has been severed 
exports.EADV = 68;  -- Advertise error 
exports.ESRMNT = 69;  -- Srmount error 
exports.ECOMM = 70;  -- Communication error on send 
exports.EPROTO = 71;  -- Protocol error 
exports.EMULTIHOP = 72;  -- Multihop attempted 
exports.EDOTDOT = 73;  -- RFS specific error 
exports.EBADMSG = 74;  -- Not a data message 
exports.EOVERFLOW = 75;  -- Value too large for defined data type 
exports.ENOTUNIQ = 76;  -- Name not unique on network 
exports.EBADFD = 77;  -- File descriptor in bad state 
exports.EREMCHG = 78;  -- Remote address changed 
exports.ELIBACC = 79;  -- Can not access a needed shared library 
exports.ELIBBAD = 80;  -- Accessing a corrupted shared library 
exports.ELIBSCN = 81;  -- .lib section in a.out corrupted 
exports.ELIBMAX = 82;  -- Attempting to link in too many shared libraries 
exports.ELIBEXEC = 83;  -- Cannot exec a shared library directly 
exports.EILSEQ = 84;  -- Illegal byte sequence 
exports.ERESTART = 85;  -- Interrupted system call should be restarted 
exports.ESTRPIPE = 86;  -- Streams pipe error 
exports.EUSERS = 87;  -- Too many users 
exports.ENOTSOCK = 88;  -- Socket operation on non-socket 
exports.EDESTADDRREQ = 89;  -- Destination address required 
exports.EMSGSIZE = 90;  -- Message too long 
exports.EPROTOTYPE = 91;  -- Protocol wrong type for socket 
exports.ENOPROTOOPT = 92;  -- Protocol not available 
exports.EPROTONOSUPPORT = 93;  -- Protocol not supported 
exports.ESOCKTNOSUPPORT = 94;  -- Socket type not supported 
exports.EOPNOTSUPP = 95;  -- Operation not supported on transport endpoint 
exports.EPFNOSUPPORT = 96;  -- Protocol family not supported 
exports.EAFNOSUPPORT = 97;  -- Address family not supported by protocol 
exports.EADDRINUSE = 98;  -- Address already in use 
exports.EADDRNOTAVAIL = 99;  -- Cannot assign requested address 
exports.ENETDOWN = 100;  -- Network is down 
exports.ENETUNREACH = 101;  -- Network is unreachable 
exports.ENETRESET = 102;  -- Network dropped connection because of reset 
exports.ECONNABORTED = 103;  -- Software caused connection abort 
exports.ECONNRESET = 104;  -- Connection reset by peer 
exports.ENOBUFS = 105;  -- No buffer space available 
exports.EISCONN = 106;  -- Transport endpoint is already connected 
exports.ENOTCONN = 107;  -- Transport endpoint is not connected 
exports.ESHUTDOWN = 108;  -- Cannot send after transport endpoint shutdown 
exports.ETOOMANYREFS = 109;  -- Too many references: cannot splice 
exports.ETIMEDOUT = 110;  -- Connection timed out 
exports.ECONNREFUSED = 111;  -- Connection refused 
exports.EHOSTDOWN = 112;  -- Host is down 
exports.EHOSTUNREACH = 113;  -- No route to host 
exports.EALREADY = 114;  -- Operation already in progress 
exports.EINPROGRESS = 115;  -- Operation now in progress 
exports.ESTALE = 116;  -- Stale file handle 
exports.EUCLEAN = 117;  -- Structure needs cleaning 
exports.ENOTNAM = 118;  -- Not a XENIX named type file 
exports.ENAVAIL = 119;  -- No XENIX semaphores available 
exports.EISNAM = 120;  -- Is a named type file 
exports.EREMOTEIO = 121;  -- Remote I/O error 
exports.EDQUOT = 122;  -- Quota exceeded 

exports.ENOMEDIUM = 123;  -- No medium found 
exports.EMEDIUMTYPE = 124;  -- Wrong medium type 
exports.ECANCELED = 125;  -- Operation Canceled 
exports.ENOKEY = 126;  -- Required key not available 
exports.EKEYEXPIRED = 127;  -- Key has expired 
exports.EKEYREVOKED = 128;  -- Key has been revoked 
exports.EKEYREJECTED = 129;  -- Key was rejected by service 

-- for robust mutexes 
exports.EOWNERDEAD = 130;  -- Owner died 
exports.ENOTRECOVERABLE = 131;  -- State not recoverable 

exports.ERFKILL = 132;  -- Operation not possible due to RF-kill 

exports.EHWPOISON = 133;  -- Memory page has hardware error 

return exports;