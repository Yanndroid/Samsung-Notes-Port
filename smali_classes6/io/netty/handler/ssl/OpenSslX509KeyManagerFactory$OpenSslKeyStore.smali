.class final Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore;
.super Ljava/security/KeyStore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenSslKeyStore"
.end annotation


# direct methods
.method private constructor <init>([Ljava/security/cert/X509Certificate;Z)V
    .locals 1

    new-instance v0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;

    invoke-direct {v0, p2, p1}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore$1;-><init>(Z[Ljava/security/cert/X509Certificate;)V

    const/4 p1, 0x0

    const-string p2, "native"

    invoke-direct {p0, v0, p1, p2}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->ensureAvailability()V

    return-void
.end method

.method public synthetic constructor <init>([Ljava/security/cert/X509Certificate;ZLio/netty/handler/ssl/OpenSslX509KeyManagerFactory$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyStore;-><init>([Ljava/security/cert/X509Certificate;Z)V

    return-void
.end method
