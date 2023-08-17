.class public Lorg/apache/poi/sun/misc/SharedSecrets;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static javaAWTAccess:Lorg/apache/poi/sun/misc/JavaAWTAccess;

.field private static javaIOAccess:Lorg/apache/poi/sun/misc/JavaIOAccess;

.field private static javaIOFileDescriptorAccess:Lorg/apache/poi/sun/misc/JavaIOFileDescriptorAccess;

.field private static javaLangAccess:Lorg/apache/poi/sun/misc/JavaLangAccess;

.field private static javaNetAccess:Lorg/apache/poi/sun/misc/JavaNetAccess;

.field private static javaNetHttpCookieAccess:Lorg/apache/poi/sun/misc/JavaNetHttpCookieAccess;

.field private static javaNioAccess:Lorg/apache/poi/sun/misc/JavaNioAccess;

.field private static javaSecurityAccess:Lorg/apache/poi/sun/misc/JavaSecurityAccess;

.field private static javaSecurityProtectionDomainAccess:Lorg/apache/poi/sun/misc/JavaSecurityProtectionDomainAccess;

.field private static javaUtilJarAccess:Lorg/apache/poi/sun/misc/JavaUtilJarAccess;

.field private static javaUtilZipFileAccess:Lorg/apache/poi/sun/misc/JavaUtilZipFileAccess;

.field private static final unsafe:Lorg/apache/poi/sun/misc/Unsafe;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/sun/misc/Unsafe;->getUnsafe()Lorg/apache/poi/sun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJavaAWTAccess()Lorg/apache/poi/sun/misc/JavaAWTAccess;
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaAWTAccess:Lorg/apache/poi/sun/misc/JavaAWTAccess;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static getJavaIOAccess()Lorg/apache/poi/sun/misc/JavaIOAccess;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaIOAccess:Lorg/apache/poi/sun/misc/JavaIOAccess;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Ljava/io/Console;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaIOAccess:Lorg/apache/poi/sun/misc/JavaIOAccess;

    return-object v0
.end method

.method public static getJavaIOFileDescriptorAccess()Lorg/apache/poi/sun/misc/JavaIOFileDescriptorAccess;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaIOFileDescriptorAccess:Lorg/apache/poi/sun/misc/JavaIOFileDescriptorAccess;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaIOFileDescriptorAccess:Lorg/apache/poi/sun/misc/JavaIOFileDescriptorAccess;

    return-object v0
.end method

.method public static getJavaLangAccess()Lorg/apache/poi/sun/misc/JavaLangAccess;
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaLangAccess:Lorg/apache/poi/sun/misc/JavaLangAccess;

    return-object v0
.end method

.method public static getJavaNetAccess()Lorg/apache/poi/sun/misc/JavaNetAccess;
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaNetAccess:Lorg/apache/poi/sun/misc/JavaNetAccess;

    return-object v0
.end method

.method public static getJavaNetHttpCookieAccess()Lorg/apache/poi/sun/misc/JavaNetHttpCookieAccess;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaNetHttpCookieAccess:Lorg/apache/poi/sun/misc/JavaNetHttpCookieAccess;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Ljava/net/HttpCookie;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaNetHttpCookieAccess:Lorg/apache/poi/sun/misc/JavaNetHttpCookieAccess;

    return-object v0
.end method

.method public static getJavaNioAccess()Lorg/apache/poi/sun/misc/JavaNioAccess;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaNioAccess:Lorg/apache/poi/sun/misc/JavaNioAccess;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaNioAccess:Lorg/apache/poi/sun/misc/JavaNioAccess;

    return-object v0
.end method

.method public static getJavaSecurityAccess()Lorg/apache/poi/sun/misc/JavaSecurityAccess;
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaSecurityAccess:Lorg/apache/poi/sun/misc/JavaSecurityAccess;

    return-object v0
.end method

.method public static getJavaSecurityProtectionDomainAccess()Lorg/apache/poi/sun/misc/JavaSecurityProtectionDomainAccess;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaSecurityProtectionDomainAccess:Lorg/apache/poi/sun/misc/JavaSecurityProtectionDomainAccess;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Ljava/security/ProtectionDomain;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaSecurityProtectionDomainAccess:Lorg/apache/poi/sun/misc/JavaSecurityProtectionDomainAccess;

    return-object v0
.end method

.method public static getJavaUtilZipFileAccess()Lorg/apache/poi/sun/misc/JavaUtilZipFileAccess;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaUtilZipFileAccess:Lorg/apache/poi/sun/misc/JavaUtilZipFileAccess;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Ljava/util/zip/ZipFile;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaUtilZipFileAccess:Lorg/apache/poi/sun/misc/JavaUtilZipFileAccess;

    return-object v0
.end method

.method public static javaUtilJarAccess()Lorg/apache/poi/sun/misc/JavaUtilJarAccess;
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaUtilJarAccess:Lorg/apache/poi/sun/misc/JavaUtilJarAccess;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->unsafe:Lorg/apache/poi/sun/misc/Unsafe;

    const-class v1, Ljava/util/jar/JarFile;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaUtilJarAccess:Lorg/apache/poi/sun/misc/JavaUtilJarAccess;

    return-object v0
.end method

.method public static setJavaAWTAccess(Lorg/apache/poi/sun/misc/JavaAWTAccess;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaAWTAccess:Lorg/apache/poi/sun/misc/JavaAWTAccess;

    return-void
.end method

.method public static setJavaIOAccess(Lorg/apache/poi/sun/misc/JavaIOAccess;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaIOAccess:Lorg/apache/poi/sun/misc/JavaIOAccess;

    return-void
.end method

.method public static setJavaIOFileDescriptorAccess(Lorg/apache/poi/sun/misc/JavaIOFileDescriptorAccess;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaIOFileDescriptorAccess:Lorg/apache/poi/sun/misc/JavaIOFileDescriptorAccess;

    return-void
.end method

.method public static setJavaLangAccess(Lorg/apache/poi/sun/misc/JavaLangAccess;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaLangAccess:Lorg/apache/poi/sun/misc/JavaLangAccess;

    return-void
.end method

.method public static setJavaNetAccess(Lorg/apache/poi/sun/misc/JavaNetAccess;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaNetAccess:Lorg/apache/poi/sun/misc/JavaNetAccess;

    return-void
.end method

.method public static setJavaNetHttpCookieAccess(Lorg/apache/poi/sun/misc/JavaNetHttpCookieAccess;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaNetHttpCookieAccess:Lorg/apache/poi/sun/misc/JavaNetHttpCookieAccess;

    return-void
.end method

.method public static setJavaNioAccess(Lorg/apache/poi/sun/misc/JavaNioAccess;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaNioAccess:Lorg/apache/poi/sun/misc/JavaNioAccess;

    return-void
.end method

.method public static setJavaSecurityAccess(Lorg/apache/poi/sun/misc/JavaSecurityAccess;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaSecurityAccess:Lorg/apache/poi/sun/misc/JavaSecurityAccess;

    return-void
.end method

.method public static setJavaSecurityProtectionDomainAccess(Lorg/apache/poi/sun/misc/JavaSecurityProtectionDomainAccess;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaSecurityProtectionDomainAccess:Lorg/apache/poi/sun/misc/JavaSecurityProtectionDomainAccess;

    return-void
.end method

.method public static setJavaUtilJarAccess(Lorg/apache/poi/sun/misc/JavaUtilJarAccess;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaUtilJarAccess:Lorg/apache/poi/sun/misc/JavaUtilJarAccess;

    return-void
.end method

.method public static setJavaUtilZipFileAccess(Lorg/apache/poi/sun/misc/JavaUtilZipFileAccess;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/sun/misc/SharedSecrets;->javaUtilZipFileAccess:Lorg/apache/poi/sun/misc/JavaUtilZipFileAccess;

    return-void
.end method
