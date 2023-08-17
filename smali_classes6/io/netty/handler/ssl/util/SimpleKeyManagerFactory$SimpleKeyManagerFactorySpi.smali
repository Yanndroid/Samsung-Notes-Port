.class final Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleKeyManagerFactorySpi"
.end annotation


# instance fields
.field private volatile keyManagers:[Ljavax/net/ssl/KeyManager;

.field private parent:Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$1;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;-><init>()V

    return-void
.end method

.method private static wrapIfNeeded([Ljavax/net/ssl/KeyManager;)V
    .locals 3
    .annotation build Lio/netty/util/internal/SuppressJava6Requirement;
        reason = "Usage guarded by java version check"
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    instance-of v2, v1, Ljavax/net/ssl/X509KeyManager;

    if-eqz v2, :cond_0

    instance-of v2, v1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-nez v2, :cond_0

    new-instance v2, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;

    check-cast v1, Ljavax/net/ssl/X509KeyManager;

    invoke-direct {v2, v1}, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;-><init>(Ljavax/net/ssl/X509KeyManager;)V

    aput-object v2, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 3

    iget-object v0, p0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;->keyManagers:[Ljavax/net/ssl/KeyManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;

    invoke-virtual {v0}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;->engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;->wrapIfNeeded([Ljavax/net/ssl/KeyManager;)V

    :cond_0
    iput-object v0, p0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;->keyManagers:[Ljavax/net/ssl/KeyManager;

    :cond_1
    invoke-virtual {v0}, [Ljavax/net/ssl/KeyManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;[C)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;->engineInit(Ljava/security/KeyStore;[C)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/KeyStoreException;

    invoke-direct {p2, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;->engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1
.end method

.method public init(Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;

    return-void
.end method
