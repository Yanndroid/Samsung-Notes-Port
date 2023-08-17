.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/internal/tcnative/SSLPrivateKeyMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrivateKeyMethod"
.end annotation


# instance fields
.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field private final keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    return-void
.end method


# virtual methods
.method public decrypt(J[B)[B
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-static {v0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$400(Lio/netty/handler/ssl/OpenSslEngineMap;J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    invoke-interface {p2, p1, p3}, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->decrypt(Ljavax/net/ssl/SSLEngine;[B)[B

    move-result-object p2

    invoke-static {p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$500([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    invoke-virtual {p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public sign(JI[B)[B
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-static {v0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$400(Lio/netty/handler/ssl/OpenSslEngineMap;J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;

    invoke-interface {p2, p1, p3, p4}, Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;->sign(Ljavax/net/ssl/SSLEngine;I[B)[B

    move-result-object p2

    invoke-static {p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$500([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    invoke-virtual {p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    throw p2
.end method
