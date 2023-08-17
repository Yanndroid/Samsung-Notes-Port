.class public final Lorg/apache/poi/java/awt/DisplayMode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BIT_DEPTH_MULTI:I = -0x1

.field public static final REFRESH_RATE_UNKNOWN:I


# instance fields
.field private bitDepth:I

.field private refreshRate:I

.field private size:Lorg/apache/poi/java/awt/Dimension;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/java/awt/Dimension;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/DisplayMode;->size:Lorg/apache/poi/java/awt/Dimension;

    iput p3, p0, Lorg/apache/poi/java/awt/DisplayMode;->bitDepth:I

    iput p4, p0, Lorg/apache/poi/java/awt/DisplayMode;->refreshRate:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/DisplayMode;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/DisplayMode;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/DisplayMode;->equals(Lorg/apache/poi/java/awt/DisplayMode;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Lorg/apache/poi/java/awt/DisplayMode;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/DisplayMode;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/DisplayMode;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/DisplayMode;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/DisplayMode;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/DisplayMode;->getBitDepth()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/DisplayMode;->getBitDepth()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/DisplayMode;->getRefreshRate()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/DisplayMode;->getRefreshRate()I

    move-result p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getBitDepth()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/DisplayMode;->bitDepth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/DisplayMode;->size:Lorg/apache/poi/java/awt/Dimension;

    iget v0, v0, Lorg/apache/poi/java/awt/Dimension;->height:I

    return v0
.end method

.method public getRefreshRate()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/DisplayMode;->refreshRate:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/DisplayMode;->size:Lorg/apache/poi/java/awt/Dimension;

    iget v0, v0, Lorg/apache/poi/java/awt/Dimension;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/DisplayMode;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/DisplayMode;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/DisplayMode;->getBitDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/DisplayMode;->getRefreshRate()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method
