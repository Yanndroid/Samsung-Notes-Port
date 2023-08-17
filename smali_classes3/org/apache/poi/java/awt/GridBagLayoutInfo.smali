.class public Lorg/apache/poi/java/awt/GridBagLayoutInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x43fe395014f0cb29L


# instance fields
.field public baselineType:[S

.field public hasBaseline:Z

.field public height:I

.field public maxAscent:[I

.field public maxDescent:[I

.field public minHeight:[I

.field public minWidth:[I

.field public startx:I

.field public starty:I

.field public weightX:[D

.field public weightY:[D

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->width:I

    iput p2, p0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->height:I

    return-void
.end method


# virtual methods
.method public hasBaseline(I)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->hasBaseline:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->baselineType:[S

    aget-short p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasConstantDescent(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->baselineType:[S

    aget-short p1, v0, p1

    sget-object v0, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;->CONSTANT_DESCENT:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
