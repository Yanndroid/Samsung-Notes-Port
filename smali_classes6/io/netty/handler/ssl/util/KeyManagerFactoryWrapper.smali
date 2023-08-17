.class public final Lio/netty/handler/ssl/util/KeyManagerFactoryWrapper;
.super Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;
.source "SourceFile"


# instance fields
.field private final km:Ljavax/net/ssl/KeyManager;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/KeyManager;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;-><init>()V

    const-string v0, "km"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/KeyManager;

    iput-object p1, p0, Lio/netty/handler/ssl/util/KeyManagerFactoryWrapper;->km:Ljavax/net/ssl/KeyManager;

    return-void
.end method


# virtual methods
.method public engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    iget-object v1, p0, Lio/netty/handler/ssl/util/KeyManagerFactoryWrapper;->km:Ljavax/net/ssl/KeyManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;[C)V
    .locals 0

    return-void
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 0

    return-void
.end method
