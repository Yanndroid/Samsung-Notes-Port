.class final Lorg/conscrypt/OpenSSLBIOSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;
    }
.end annotation


# instance fields
.field private source:Lorg/conscrypt/OpenSSLBIOInputStream;


# direct methods
.method private constructor <init>(Lorg/conscrypt/OpenSSLBIOInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/OpenSSLBIOSource;->source:Lorg/conscrypt/OpenSSLBIOInputStream;

    return-void
.end method

.method private declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource;->source:Lorg/conscrypt/OpenSSLBIOInputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource;->source:Lorg/conscrypt/OpenSSLBIOInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Lorg/conscrypt/OpenSSLBIOSource;
    .locals 3

    new-instance v0, Lorg/conscrypt/OpenSSLBIOSource;

    new-instance v1, Lorg/conscrypt/OpenSSLBIOInputStream;

    new-instance v2, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;

    invoke-direct {v2, p0}, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 p0, 0x0

    invoke-direct {v1, v2, p0}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    invoke-direct {v0, v1}, Lorg/conscrypt/OpenSSLBIOSource;-><init>(Lorg/conscrypt/OpenSSLBIOInputStream;)V

    return-object v0
.end method


# virtual methods
.method public finalize()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLBIOSource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContext()J
    .locals 2

    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource;->source:Lorg/conscrypt/OpenSSLBIOInputStream;

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v0

    return-wide v0
.end method
