.class Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory$1;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactory;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$factory:Ljavax/net/ssl/KeyManagerFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/KeyManagerFactory;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory$1;->val$factory:Ljavax/net/ssl/KeyManagerFactory;

    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory$1;->val$factory:Ljavax/net/ssl/KeyManagerFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;[C)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory$1;->val$factory:Ljavax/net/ssl/KeyManagerFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    return-void
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory$1;->val$factory:Ljavax/net/ssl/KeyManagerFactory;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljavax/net/ssl/ManagerFactoryParameters;)V

    return-void
.end method
