.class final Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/ssl/OpenSslSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeSslSession"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field public static final LEAK_DETECTOR:Lio/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector<",
            "Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final creationTime:J

.field private freed:Z

.field private final id:Lio/netty/handler/ssl/OpenSslSessionId;

.field private volatile lastAccessedTime:J

.field private final leakTracker:Lio/netty/util/ResourceLeakTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;",
            ">;"
        }
    .end annotation
.end field

.field private final peerHost:Ljava/lang/String;

.field private final peerPort:I

.field private final session:J

.field private final timeout:J

.field private volatile valid:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-static {}, Lio/netty/util/ResourceLeakDetectorFactory;->instance()Lio/netty/util/ResourceLeakDetectorFactory;

    move-result-object v0

    const-class v1, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;

    invoke-virtual {v0, v1}, Lio/netty/util/ResourceLeakDetectorFactory;->newResourceLeakDetector(Ljava/lang/Class;)Lio/netty/util/ResourceLeakDetector;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->LEAK_DETECTOR:Lio/netty/util/ResourceLeakDetector;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->creationTime:J

    iput-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->lastAccessedTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->valid:Z

    iput-wide p1, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->session:J

    iput-object p3, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->peerHost:Ljava/lang/String;

    iput p4, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->peerPort:I

    iput-wide p5, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->timeout:J

    new-instance p3, Lio/netty/handler/ssl/OpenSslSessionId;

    invoke-static {p1, p2}, Lio/netty/internal/tcnative/SSLSession;->getSessionId(J)[B

    move-result-object p1

    invoke-direct {p3, p1}, Lio/netty/handler/ssl/OpenSslSessionId;-><init>([B)V

    iput-object p3, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->id:Lio/netty/handler/ssl/OpenSslSessionId;

    sget-object p1, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->LEAK_DETECTOR:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {p1, p0}, Lio/netty/util/ResourceLeakDetector;->track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->leakTracker:Lio/netty/util/ResourceLeakTracker;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->freed:Z

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->invalidate()V

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->leakTracker:Lio/netty/util/ResourceLeakTracker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lio/netty/util/ResourceLeakTracker;->close(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lio/netty/handler/ssl/OpenSslSession;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lio/netty/handler/ssl/OpenSslSession;

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->id:Lio/netty/handler/ssl/OpenSslSessionId;

    invoke-interface {p1}, Lio/netty/handler/ssl/OpenSslSession;->sessionId()Lio/netty/handler/ssl/OpenSslSessionId;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/OpenSslSessionId;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized free()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->close()V

    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->session:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSLSession;->free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApplicationBufferSize()I
    .locals 1

    sget v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->creationTime:J

    return-wide v0
.end method

.method public getId()[B
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->id:Lio/netty/handler/ssl/OpenSslSessionId;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionId;->cloneBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->lastAccessedTime:J

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPacketBufferSize()I
    .locals 1

    sget v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_RECORD_SIZE:I

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    iget v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->peerPort:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->getSessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public handshakeFinished([BLjava/lang/String;Ljava/lang/String;[B[[BJJ)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->id:Lio/netty/handler/ssl/OpenSslSessionId;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslSessionId;->hashCode()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->valid:Z

    return-void
.end method

.method public isValid()Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->isValid(J)Z

    move-result v0

    return v0
.end method

.method public isValid(J)Z
    .locals 4

    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->creationTime:J

    iget-wide v2, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->timeout:J

    add-long/2addr v0, v2

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    iget-boolean p1, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->valid:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public session()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->session:J

    return-wide v0
.end method

.method public sessionId()Lio/netty/handler/ssl/OpenSslSessionId;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->id:Lio/netty/handler/ssl/OpenSslSessionId;

    return-object v0
.end method

.method public setLocalCertificate([Ljava/security/cert/Certificate;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setSessionId(Lio/netty/handler/ssl/OpenSslSessionId;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public shouldBeSingleUse()Z
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->session:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSLSession;->shouldBeSingleUse(J)Z

    move-result v0

    return v0
.end method

.method public tryExpandApplicationBufferSize(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public upRef()Z
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->session:J

    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSLSession;->upRef(J)Z

    move-result v0

    return v0
.end method

.method public updateLastAccessedTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;->lastAccessedTime:J

    return-void
.end method
