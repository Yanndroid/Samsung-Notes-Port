.class final Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;
.super Lio/netty/util/AbstractReferenceCounted;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/ssl/OpenSslKeyMaterial;


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final leakDetector:Lio/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector<",
            "Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private chain:J

.field private final leak:Lio/netty/util/ResourceLeakTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;",
            ">;"
        }
    .end annotation
.end field

.field private privateKey:J

.field private final x509CertificateChain:[Ljava/security/cert/X509Certificate;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->instance()Lio/netty/util/ResourceLeakDetectorFactory;

    move-result-object v0

    const-class v1, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;

    invoke-virtual {v0, v1}, Lio/netty/util/ResourceLeakDetectorFactory;->newResourceLeakDetector(Ljava/lang/Class;)Lio/netty/util/ResourceLeakDetector;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    return-void
.end method

.method public constructor <init>(JJ[Ljava/security/cert/X509Certificate;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/util/AbstractReferenceCounted;-><init>()V

    iput-wide p1, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->chain:J

    iput-wide p3, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->privateKey:J

    iput-object p5, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->x509CertificateChain:[Ljava/security/cert/X509Certificate;

    sget-object p1, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {p1, p0}, Lio/netty/util/ResourceLeakDetector;->track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->leak:Lio/netty/util/ResourceLeakTracker;

    return-void
.end method


# virtual methods
.method public certificateChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->x509CertificateChain:[Ljava/security/cert/X509Certificate;

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

    iget-wide v0, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->chain:J

    return-wide v0

    :cond_0
    new-instance v0, Lio/netty/util/IllegalReferenceCountException;

    invoke-direct {v0}, Lio/netty/util/IllegalReferenceCountException;-><init>()V

    throw v0
.end method

.method public deallocate()V
    .locals 4

    iget-wide v0, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->chain:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->chain:J

    iget-wide v2, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->privateKey:J

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->freePrivateKey(J)V

    iput-wide v0, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->privateKey:J

    iget-object v0, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->leak:Lio/netty/util/ResourceLeakTracker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lio/netty/util/ResourceLeakTracker;->close(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public privateKeyAddress()J
    .locals 2

    invoke-virtual {p0}, Lio/netty/util/AbstractReferenceCounted;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->privateKey:J

    return-wide v0

    :cond_0
    new-instance v0, Lio/netty/util/IllegalReferenceCountException;

    invoke-direct {v0}, Lio/netty/util/IllegalReferenceCountException;-><init>()V

    throw v0
.end method

.method public release()Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->leak:Lio/netty/util/ResourceLeakTracker;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    :cond_0
    invoke-super {p0}, Lio/netty/util/AbstractReferenceCounted;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->leak:Lio/netty/util/ResourceLeakTracker;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    :cond_0
    invoke-super {p0, p1}, Lio/netty/util/AbstractReferenceCounted;->release(I)Z

    move-result p1

    return p1
.end method

.method public retain()Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->leak:Lio/netty/util/ResourceLeakTracker;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    :cond_0
    invoke-super {p0}, Lio/netty/util/AbstractReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public retain(I)Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->leak:Lio/netty/util/ResourceLeakTracker;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    :cond_0
    invoke-super {p0, p1}, Lio/netty/util/AbstractReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->retain()Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->retain(I)Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->retain()Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->retain(I)Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->leak:Lio/netty/util/ResourceLeakTracker;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    :cond_0
    invoke-super {p0}, Lio/netty/util/AbstractReferenceCounted;->touch()Lio/netty/util/ReferenceCounted;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->leak:Lio/netty/util/ResourceLeakTracker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lio/netty/util/ResourceLeakTracker;->record(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->touch()Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/ssl/OpenSslKeyMaterial;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->touch()Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;->touch(Ljava/lang/Object;)Lio/netty/handler/ssl/DefaultOpenSslKeyMaterial;

    move-result-object p1

    return-object p1
.end method
