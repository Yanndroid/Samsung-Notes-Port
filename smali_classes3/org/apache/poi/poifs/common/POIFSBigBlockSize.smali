.class public final Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bigBlockSize:I

.field private headerValue:S


# direct methods
.method public constructor <init>(IS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->bigBlockSize:I

    iput-short p2, p0, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->headerValue:S

    return-void
.end method


# virtual methods
.method public getBATEntriesPerBlock()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->bigBlockSize:I

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getBigBlockSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->bigBlockSize:I

    return v0
.end method

.method public getHeaderValue()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->headerValue:S

    return v0
.end method

.method public getNextXBATChainOffset()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getPropertiesPerBlock()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->bigBlockSize:I

    div-int/lit16 v0, v0, 0x80

    return v0
.end method

.method public getXBATEntriesPerBlock()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
