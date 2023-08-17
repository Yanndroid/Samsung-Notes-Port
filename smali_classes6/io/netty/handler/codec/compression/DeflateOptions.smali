.class public Lio/netty/handler/codec/compression/DeflateOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/compression/CompressionOptions;


# static fields
.field public static final DEFAULT:Lio/netty/handler/codec/compression/DeflateOptions;


# instance fields
.field private final compressionLevel:I

.field private final memLevel:I

.field private final windowBits:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/netty/handler/codec/compression/DeflateOptions;

    const/4 v1, 0x6

    const/16 v2, 0xf

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/compression/DeflateOptions;-><init>(III)V

    sput-object v0, Lio/netty/handler/codec/compression/DeflateOptions;->DEFAULT:Lio/netty/handler/codec/compression/DeflateOptions;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x9

    const-string v2, "compressionLevel"

    invoke-static {p1, v0, v1, v2}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/compression/DeflateOptions;->compressionLevel:I

    const/16 p1, 0xf

    const-string v0, "windowBits"

    invoke-static {p2, v1, p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/compression/DeflateOptions;->windowBits:I

    const/4 p1, 0x1

    const-string p2, "memLevel"

    invoke-static {p3, p1, v1, p2}, Lio/netty/util/internal/ObjectUtil;->checkInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/compression/DeflateOptions;->memLevel:I

    return-void
.end method


# virtual methods
.method public compressionLevel()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/compression/DeflateOptions;->compressionLevel:I

    return v0
.end method

.method public memLevel()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/compression/DeflateOptions;->memLevel:I

    return v0
.end method

.method public windowBits()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/compression/DeflateOptions;->windowBits:I

    return v0
.end method
