.class public Lio/netty/util/ByteProcessor$IndexOfProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ByteProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexOfProcessor"
.end annotation


# instance fields
.field private final byteToFind:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lio/netty/util/ByteProcessor$IndexOfProcessor;->byteToFind:B

    return-void
.end method


# virtual methods
.method public process(B)Z
    .locals 1

    iget-byte v0, p0, Lio/netty/util/ByteProcessor$IndexOfProcessor;->byteToFind:B

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
