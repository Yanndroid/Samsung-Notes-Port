.class abstract Lorg/conscrypt/NativeRef;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/NativeRef$SSL_SESSION;,
        Lorg/conscrypt/NativeRef$HMAC_CTX;,
        Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;,
        Lorg/conscrypt/NativeRef$EVP_PKEY;,
        Lorg/conscrypt/NativeRef$EVP_MD_CTX;,
        Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;,
        Lorg/conscrypt/NativeRef$EC_POINT;,
        Lorg/conscrypt/NativeRef$EC_GROUP;
    }
.end annotation


# instance fields
.field public final address:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lorg/conscrypt/NativeRef;->address:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "address == 0"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract doFree(J)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lorg/conscrypt/NativeRef;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/conscrypt/NativeRef;

    iget-wide v2, p1, Lorg/conscrypt/NativeRef;->address:J

    iget-wide v4, p0, Lorg/conscrypt/NativeRef;->address:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public finalize()V
    .locals 4

    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/NativeRef;->address:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lorg/conscrypt/NativeRef;->doFree(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/conscrypt/NativeRef;->address:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
