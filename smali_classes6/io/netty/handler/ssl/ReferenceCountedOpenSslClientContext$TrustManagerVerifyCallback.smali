.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$TrustManagerVerifyCallback;
.super Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrustManagerVerifyCallback"
.end annotation


# instance fields
.field private final manager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;)V

    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$TrustManagerVerifyCallback;->manager:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method


# virtual methods
.method public verify(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$TrustManagerVerifyCallback;->manager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {p1, p2, p3}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method
