.class Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;
.super Lio/netty/util/concurrent/FastThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;-><init>(Ljava/lang/String;[[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/FastThreadLocal<",
        "Ljava/security/MessageDigest;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;

.field public final synthetic val$algorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;->this$0:Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;

    iput-object p2, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;->val$algorithm:Ljava/lang/String;

    invoke-direct {p0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;->initialValue()Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Ljava/security/MessageDigest;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;->val$algorithm:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;->val$algorithm:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Unsupported hash algorithm: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
