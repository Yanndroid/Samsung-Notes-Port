.class public abstract Lorg/conscrypt/AllocatedBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Lorg/conscrypt/AllocatedBuffer;
    .locals 1

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lorg/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/conscrypt/AllocatedBuffer$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/AllocatedBuffer$1;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public abstract nioBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract release()Lorg/conscrypt/AllocatedBuffer;
.end method

.method public retain()Lorg/conscrypt/AllocatedBuffer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method
