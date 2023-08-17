.class final Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;
.super Lio/netty/util/AbstractReferenceCounted;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/ssl/OpenSslKeyMaterial;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslPrivateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OpenSslPrivateKeyMaterial"
.end annotation


# instance fields
.field public certificateChain:J

.field public final synthetic this$0:Lio/netty/handler/ssl/OpenSslPrivateKey;

.field private final x509CertificateChain:[Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/OpenSslPrivateKey;J[Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->this$0:Lio/netty/handler/ssl/OpenSslPrivateKey;

    invoke-direct {p0}, Lio/netty/util/AbstractReferenceCounted;-><init>()V

    iput-wide p2, p0, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->certificateChain:J

    if-nez p4, :cond_0

    sget-object p4, Lio/netty/util/internal/EmptyArrays;->EMPTY_X509_CERTIFICATES:[Ljava/security/cert/X509Certificate;

    :cond_0
    iput-object p4, p0, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->x509CertificateChain:[Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Lio/netty/handler/ssl/OpenSslPrivateKey;->retain()Lio/netty/handler/ssl/OpenSslPrivateKey;

    return-void
.end method

.method private releaseChain()V
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->certificateChain:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->certificateChain:J

    return-void
.end method


# virtual methods
.method public certificateChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->x509CertificateChain:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public certificateChainAddress()J
    .locals 2

    invoke-virtual {p0}, Lio/netty/util/AbstractReferenceCounted;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->certificateChain:J

    return-wide v0

    :cond_0
    new-instance v0, Lio/netty/util/IllegalReferenceCountException;

    invoke-direct {v0}, Lio/netty/util/IllegalReferenceCountException;-><init>()V

    throw v0
.end method

.method public deallocate()V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->releaseChain()V

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->this$0:Lio/netty/handler/ssl/OpenSslPrivateKey;

    invoke-virtual {v0}, Lio/netty/util/AbstractReferenceCounted;->release()Z

    return-void
.end method

.method public privateKeyAddress()J
    .locals 2

    invoke-virtual {p0}, Lio/netty/util/AbstractReferenceCounted;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->this$0:Lio/netty/handler/ssl/OpenSslPrivateKey;

    invoke-static {v0}, Lio/netty/handler/ssl/OpenSslPrivateKey;->access$000(Lio/netty/handler/ssl/OpenSslPrivateKey;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Lio/netty/util/IllegalReferenceCountException;

    invoke-direct {v0}, Lio/netty/util/IllegalReferenceCountException;-><init>()V

    throw v0
.end method

.method public retain()Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .locals 0

    invoke-super {p0}, Lio/netty/util/AbstractReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public retain(I)Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/util/AbstractReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->retain()Lio/netty/handler/ssl/OpenSslKeyMaterial;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->retain(I)Lio/netty/handler/ssl/OpenSslKeyMaterial;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->this$0:Lio/netty/handler/ssl/OpenSslPrivateKey;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslPrivateKey;->touch()Lio/netty/handler/ssl/OpenSslPrivateKey;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->this$0:Lio/netty/handler/ssl/OpenSslPrivateKey;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/OpenSslPrivateKey;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/OpenSslPrivateKey;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->touch()Lio/netty/handler/ssl/OpenSslKeyMaterial;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/OpenSslPrivateKey$OpenSslPrivateKeyMaterial;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/OpenSslKeyMaterial;

    move-result-object p1

    return-object p1
.end method
