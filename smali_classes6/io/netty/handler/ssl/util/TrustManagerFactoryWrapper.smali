.class public final Lio/netty/handler/ssl/util/TrustManagerFactoryWrapper;
.super Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;
.source "SourceFile"


# instance fields
.field private final tm:Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/TrustManager;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;-><init>()V

    const-string v0, "tm"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/TrustManager;

    iput-object p1, p0, Lio/netty/handler/ssl/util/TrustManagerFactoryWrapper;->tm:Ljavax/net/ssl/TrustManager;

    return-void
.end method


# virtual methods
.method public engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    iget-object v1, p0, Lio/netty/handler/ssl/util/TrustManagerFactoryWrapper;->tm:Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;)V
    .locals 0

    return-void
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 0

    return-void
.end method
