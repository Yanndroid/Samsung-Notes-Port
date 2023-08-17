.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/internal/tcnative/CertificateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenSslClientCertificateCallback"
.end annotation


# instance fields
.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field private final keyManagerHolder:Lio/netty/handler/ssl/OpenSslKeyMaterialManager;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslKeyMaterialManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;->keyManagerHolder:Lio/netty/handler/ssl/OpenSslKeyMaterialManager;

    return-void
.end method

.method private static clientKeyType(B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "EC_EC"

    return-object p0

    :pswitch_1
    const-string p0, "EC_RSA"

    return-object p0

    :pswitch_2
    const-string p0, "EC"

    return-object p0

    :cond_0
    const-string p0, "DH_RSA"

    return-object p0

    :cond_1
    const-string p0, "RSA"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static supportedClientKeyTypes([B)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->access$000()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p0, v2

    invoke-static {v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;->clientKeyType(B)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public handle(J[B[[B)V
    .locals 3

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/ssl/OpenSslEngineMap;->get(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;->supportedClientKeyTypes([B)Ljava/util/Set;

    move-result-object p2

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    if-nez p4, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    array-length v0, p4

    new-array v0, v0, [Ljavax/security/auth/x500/X500Principal;

    :goto_0
    array-length v1, p4

    if-ge p3, v1, :cond_2

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    aget-object v2, p4, p3

    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    move-object p3, v0

    :goto_1
    iget-object p4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;->keyManagerHolder:Lio/netty/handler/ssl/OpenSslKeyMaterialManager;

    invoke-virtual {p4, p1, p2, p3}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->setKeyMaterialClientSide(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;[Ljava/lang/String;[Ljavax/security/auth/x500/X500Principal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_3

    check-cast p2, Ljava/lang/Exception;

    throw p2

    :cond_3
    new-instance p1, Ljavax/net/ssl/SSLException;

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
