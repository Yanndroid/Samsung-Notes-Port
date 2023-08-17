.class final Lio/netty/handler/ssl/OpenSslPrivateKey;
.super Lio/netty/util/AbstractReferenceCounted;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;
    }
.end annotation


# instance fields
.field private privateKeyAddress:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lio/netty/util/AbstractReferenceCounted;-><init>()V

    iput-wide p1, p0, Lio/netty/handler/ssl/OpenSslPrivateKey;->privateKeyAddress:J

    return-void
.end method

.method public static synthetic access$000(Lio/netty/handler/ssl/OpenSslPrivateKey;)J
    .locals 2

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslPrivateKey;->privateKeyAddress()J

    move-result-wide v0

    return-wide v0
.end method

.method private privateKeyAddress()J
    .locals 2

    invoke-virtual {p0}, Lio/netty/util/AbstractReferenceCounted;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslPrivateKey;->privateKeyAddress:J

    return-wide v0

    :cond_0
    new-instance v0, Lio/netty/util/IllegalReferenceCountException;

    invoke-direct {v0}, Lio/netty/util/IllegalReferenceCountException;-><init>()V

    throw v0
.end method


# virtual methods
.method public deallocate()V
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslPrivateKey;->privateKeyAddress:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->freePrivateKey(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/handler/ssl/OpenSslPrivateKey;->privateKeyAddress:J

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/AbstractReferenceCounted;->refCnt()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/util/AbstractReferenceCounted;->release(I)Z

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "unknown"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/AbstractReferenceCounted;->refCnt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newKeyMaterial(J[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .locals 1

    new-instance v0, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;-><init>(Lio/netty/handler/ssl/OpenSslPrivateKey;J[Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method public retain()Lio/netty/handler/ssl/OpenSslPrivateKey;
    .locals 0

    invoke-super {p0}, Lio/netty/util/AbstractReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public retain(I)Lio/netty/handler/ssl/OpenSslPrivateKey;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/util/AbstractReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslPrivateKey;->retain()Lio/netty/handler/ssl/OpenSslPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslPrivateKey;->retain(I)Lio/netty/handler/ssl/OpenSslPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/ssl/OpenSslPrivateKey;
    .locals 0

    invoke-super {p0}, Lio/netty/util/AbstractReferenceCounted;->touch()Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/ssl/OpenSslPrivateKey;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslPrivateKey;->touch()Lio/netty/handler/ssl/OpenSslPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslPrivateKey;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/OpenSslPrivateKey;

    move-result-object p1

    return-object p1
.end method
