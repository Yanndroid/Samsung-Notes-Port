.class public Lorg/apache/poi/java/awt/GridBagLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/LayoutManager2;
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPIRICMULTIPLIER:I = 0x2

.field public static final MAXGRIDSIZE:I = 0x200

.field public static final MINSIZE:I = 0x1

.field public static final PREFERREDSIZE:I = 0x2

.field public static final serialVersionUID:J = 0x7aa990a858ee0f3dL


# instance fields
.field public columnWeights:[D

.field public columnWidths:[I

.field private componentAdjusting:Lorg/apache/poi/java/awt/Component;

.field public comptable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lorg/apache/poi/java/awt/Component;",
            "Lorg/apache/poi/java/awt/GridBagConstraints;",
            ">;"
        }
    .end annotation
.end field

.field public defaultConstraints:Lorg/apache/poi/java/awt/GridBagConstraints;

.field public layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

.field public transient rightToLeft:Z

.field public rowHeights:[I

.field public rowWeights:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->rightToLeft:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->comptable:Ljava/util/Hashtable;

    new-instance v0, Lorg/apache/poi/java/awt/GridBagConstraints;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/GridBagConstraints;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->defaultConstraints:Lorg/apache/poi/java/awt/GridBagConstraints;

    return-void
.end method

.method private alignAboveBaseline(Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Rectangle;II)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget v1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->hasBaseline(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget v1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->hasConstantDescent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/2addr p4, p3

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget-object v0, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->maxDescent:[I

    iget v1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    aget v0, v0, v1

    sub-int/2addr p4, v0

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget-object p4, p4, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->maxAscent:[I

    iget v0, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    aget p4, p4, v0

    add-int/2addr p4, p3

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GridBagConstraints;->isVerticallyResizable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget p1, p1, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int/2addr p3, p1

    iput p3, p2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    sub-int/2addr p4, p3

    iput p4, p2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    goto :goto_1

    :cond_1
    iget p3, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->minHeight:I

    iget p1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->ipady:I

    add-int/2addr p3, p1

    iput p3, p2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr p4, p3

    iput p4, p2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/poi/java/awt/GridBagLayout;->centerVertically(Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Rectangle;I)V

    :goto_1
    return-void
.end method

.method private alignBelowBaseline(Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Rectangle;II)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget v1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->hasBaseline(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget v1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->hasConstantDescent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int v0, p3, p4

    iget-object v1, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget-object v1, v1, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->maxDescent:[I

    iget v2, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget-object v0, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->maxAscent:[I

    iget v1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    aget v0, v0, v1

    add-int/2addr v0, p3

    :goto_0
    iput v0, p2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GridBagConstraints;->isVerticallyResizable()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/2addr p3, p4

    iget p4, p2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    sub-int/2addr p3, p4

    iget-object p1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget p1, p1, Lorg/apache/poi/java/awt/Insets;->bottom:I

    sub-int/2addr p3, p1

    iput p3, p2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/poi/java/awt/GridBagLayout;->centerVertically(Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Rectangle;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private alignOnBaseline(Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Rectangle;II)V
    .locals 7

    iget v0, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->ascent:I

    if-ltz v0, :cond_c

    iget-object v1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->baselineResizeBehavior:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    sget-object v2, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;->CONSTANT_DESCENT:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    add-int/2addr p4, p3

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget-object v0, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->maxDescent:[I

    iget v1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    iget v2, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->tempHeight:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    aget v0, v0, v1

    sub-int/2addr p4, v0

    iget v0, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->descent:I

    add-int/2addr p4, v0

    iget-object v0, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v0, v0, Lorg/apache/poi/java/awt/Insets;->bottom:I

    sub-int/2addr p4, v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GridBagConstraints;->isVerticallyResizable()Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->minHeight:I

    sub-int/2addr p4, p1

    iput p4, p2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    :goto_0
    iput p1, p2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    goto/16 :goto_4

    :cond_0
    sub-int/2addr p4, p3

    iget-object p1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget p1, p1, Lorg/apache/poi/java/awt/Insets;->top:I

    sub-int/2addr p4, p1

    iput p4, p2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    goto/16 :goto_4

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget v2, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->hasConstantDescent(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget-object v1, v1, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->maxDescent:[I

    iget v2, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    aget v1, v1, v2

    sub-int v1, p4, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget-object v1, v1, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->maxAscent:[I

    iget v2, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    aget v1, v1, v2

    :goto_1
    iget-object v2, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->baselineResizeBehavior:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    sget-object v4, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;->OTHER:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    if-ne v2, v4, :cond_8

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/poi/java/awt/GridBagLayout;->componentAdjusting:Lorg/apache/poi/java/awt/Component;

    iget v4, p2, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v5, p2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    invoke-virtual {v2, v4, v5}, Lorg/apache/poi/java/awt/Component;->getBaseline(II)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v4, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v4, v4, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int/2addr v2, v4

    :cond_3
    if-ltz v2, :cond_6

    if-gt v2, v1, :cond_6

    iget v4, p2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v4, v2

    iget-object v5, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v6, v5, Lorg/apache/poi/java/awt/Insets;->top:I

    sub-int/2addr v4, v6

    add-int/2addr v4, v1

    iget v5, v5, Lorg/apache/poi/java/awt/Insets;->bottom:I

    sub-int v5, p4, v5

    if-gt v4, v5, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GridBagConstraints;->isVerticallyResizable()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/apache/poi/java/awt/GridBagLayout;->componentAdjusting:Lorg/apache/poi/java/awt/Component;

    iget v5, p2, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget-object v6, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v6, v6, Lorg/apache/poi/java/awt/Insets;->bottom:I

    sub-int v6, p4, v6

    sub-int/2addr v6, v1

    add-int/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/java/awt/Component;->getBaseline(II)I

    move-result v4

    if-ltz v4, :cond_5

    iget-object v5, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v5, v5, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int/2addr v4, v5

    :cond_5
    if-ltz v4, :cond_6

    if-gt v4, v2, :cond_6

    iget-object v0, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v0, v0, Lorg/apache/poi/java/awt/Insets;->bottom:I

    sub-int v0, p4, v0

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    iput v0, p2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    move v0, v3

    move v2, v4

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    iget v0, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->ascent:I

    iget v2, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->minWidth:I

    iput v2, p2, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v2, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->minHeight:I

    iput v2, p2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    goto :goto_3

    :cond_7
    move v0, v2

    :cond_8
    :goto_3
    add-int v2, p3, v1

    sub-int v0, v2, v0

    iget-object v4, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v4, v4, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int/2addr v0, v4

    iput v0, p2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GridBagConstraints;->isVerticallyResizable()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lorg/apache/poi/java/awt/GridBagLayout$1;->$SwitchMap$java$awt$Component$BaselineResizeBehavior:[I

    iget-object v4, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->baselineResizeBehavior:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v3, :cond_b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_9

    goto :goto_4

    :cond_9
    iget v0, p2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    sub-int v4, v0, p3

    iget-object v5, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v6, v5, Lorg/apache/poi/java/awt/Insets;->top:I

    sub-int/2addr v4, v6

    add-int/2addr p3, p4

    sub-int/2addr p3, v0

    iget p4, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->minHeight:I

    sub-int/2addr p3, p4

    iget p4, v5, Lorg/apache/poi/java/awt/Insets;->bottom:I

    sub-int/2addr p3, p4

    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    add-int/2addr p3, p3

    if-lez p3, :cond_a

    iget p4, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->minHeight:I

    iget v0, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->centerPadding:I

    add-int/2addr p4, v0

    add-int/2addr p4, p3

    div-int/2addr p4, v3

    iget v0, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->centerOffset:I

    add-int/2addr p4, v0

    if-eq p4, v1, :cond_a

    add-int/lit8 p3, p3, -0x1

    :cond_a
    iget p4, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->minHeight:I

    add-int/2addr p4, p3

    iput p4, p2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iget p3, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->centerPadding:I

    add-int/2addr p4, p3

    div-int/2addr p4, v3

    sub-int/2addr v2, p4

    iget p1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->centerOffset:I

    sub-int/2addr v2, p1

    iput v2, p2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    goto :goto_4

    :cond_b
    iget v0, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->minHeight:I

    add-int/2addr p3, p4

    iget p4, p2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    sub-int/2addr p3, p4

    iget-object p1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget p1, p1, Lorg/apache/poi/java/awt/Insets;->bottom:I

    sub-int/2addr p3, p1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/poi/java/awt/GridBagLayout;->centerVertically(Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Rectangle;I)V

    :cond_d
    :goto_4
    return-void
.end method

.method private calculateBaseline(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Dimension;)Z
    .locals 7

    iget v0, p2, Lorg/apache/poi/java/awt/GridBagConstraints;->anchor:I

    const/4 v1, 0x0

    const/16 v2, 0x100

    if-eq v0, v2, :cond_1

    const/16 v2, 0x200

    if-eq v0, v2, :cond_1

    const/16 v2, 0x300

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p2, Lorg/apache/poi/java/awt/GridBagConstraints;->ascent:I

    return v1

    :cond_1
    :goto_0
    iget v0, p3, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v2, p2, Lorg/apache/poi/java/awt/GridBagConstraints;->ipadx:I

    add-int/2addr v0, v2

    iget p3, p3, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v2, p2, Lorg/apache/poi/java/awt/GridBagConstraints;->ipady:I

    add-int/2addr p3, v2

    invoke-virtual {p1, v0, p3}, Lorg/apache/poi/java/awt/Component;->getBaseline(II)I

    move-result v2

    iput v2, p2, Lorg/apache/poi/java/awt/GridBagConstraints;->ascent:I

    const/4 v3, 0x1

    if-ltz v2, :cond_3

    sub-int v4, p3, v2

    iget-object v5, p2, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v6, v5, Lorg/apache/poi/java/awt/Insets;->bottom:I

    add-int/2addr v4, v6

    iput v4, p2, Lorg/apache/poi/java/awt/GridBagConstraints;->descent:I

    iget v4, v5, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int/2addr v4, v2

    iput v4, p2, Lorg/apache/poi/java/awt/GridBagConstraints;->ascent:I

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getBaselineResizeBehavior()Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    move-result-object v4

    iput-object v4, p2, Lorg/apache/poi/java/awt/GridBagConstraints;->baselineResizeBehavior:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    iput v1, p2, Lorg/apache/poi/java/awt/GridBagConstraints;->centerPadding:I

    sget-object v1, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;->CENTER_OFFSET:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    if-ne v4, v1, :cond_3

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/java/awt/Component;->getBaseline(II)I

    move-result p1

    div-int/lit8 v0, p3, 0x2

    sub-int v0, v2, v0

    iput v0, p2, Lorg/apache/poi/java/awt/GridBagConstraints;->centerOffset:I

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_2

    if-eq v2, p1, :cond_3

    goto :goto_1

    :cond_2
    if-ne v2, p1, :cond_3

    sub-int/2addr v0, v3

    iput v0, p2, Lorg/apache/poi/java/awt/GridBagConstraints;->centerOffset:I

    :goto_1
    iput v3, p2, Lorg/apache/poi/java/awt/GridBagConstraints;->centerPadding:I

    :cond_3
    return v3
.end method

.method private centerVertically(Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Rectangle;I)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GridBagConstraints;->isVerticallyResizable()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    const/4 v1, 0x0

    iget-object v2, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v3, v2, Lorg/apache/poi/java/awt/Insets;->top:I

    sub-int/2addr p3, v3

    iget v2, v2, Lorg/apache/poi/java/awt/Insets;->bottom:I

    sub-int/2addr p3, v2

    iget v2, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->minHeight:I

    sub-int/2addr p3, v2

    iget p1, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->ipady:I

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    :cond_0
    return-void
.end method

.method private preInitMaximumArraySizes(Lorg/apache/poi/java/awt/Container;)[J
    .locals 10

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getComponents()[Lorg/apache/poi/java/awt/Component;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v2, v5, :cond_5

    aget-object v5, p1, v2

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v5}, Lorg/apache/poi/java/awt/GridBagLayout;->lookupConstraints(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/GridBagConstraints;

    move-result-object v5

    iget v7, v5, Lorg/apache/poi/java/awt/GridBagConstraints;->gridx:I

    iget v8, v5, Lorg/apache/poi/java/awt/GridBagConstraints;->gridy:I

    iget v9, v5, Lorg/apache/poi/java/awt/GridBagConstraints;->gridwidth:I

    iget v5, v5, Lorg/apache/poi/java/awt/GridBagConstraints;->gridheight:I

    if-gez v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    move v7, v4

    :cond_1
    if-gez v8, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v8, v3

    :cond_2
    if-gtz v9, :cond_3

    move v9, v6

    :cond_3
    if-gtz v5, :cond_4

    goto :goto_1

    :cond_4
    move v6, v5

    :goto_1
    add-int/2addr v8, v6

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v7, v9

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    int-to-long v2, v3

    aput-wide v2, v0, v1

    int-to-long v1, v4

    aput-wide v1, v0, v6

    return-object v0
.end method

.method private removeConstraints(Lorg/apache/poi/java/awt/Component;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->comptable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public AdjustForGravity(Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Rectangle;)V
    .locals 13

    iget v0, p2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v1, p2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iget-boolean v2, p0, Lorg/apache/poi/java/awt/GridBagLayout;->rightToLeft:Z

    iget v3, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    if-nez v2, :cond_0

    iget-object v4, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v4, v4, Lorg/apache/poi/java/awt/Insets;->left:I

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    iget v4, p2, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget-object v5, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v5, v5, Lorg/apache/poi/java/awt/Insets;->right:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    :goto_0
    iput v3, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v3, p2, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget-object v4, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v5, v4, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v6, v4, Lorg/apache/poi/java/awt/Insets;->right:I

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    iput v3, p2, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v5, v4, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int v6, v0, v5

    iput v6, p2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v4, v4, Lorg/apache/poi/java/awt/Insets;->bottom:I

    add-int/2addr v5, v4

    sub-int v4, v1, v5

    iput v4, p2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iget v5, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->fill:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eq v5, v9, :cond_1

    if-eq v5, v7, :cond_1

    iget v10, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->minWidth:I

    iget v11, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->ipadx:I

    add-int v12, v10, v11

    if-le v3, v12, :cond_1

    add-int v12, v10, v11

    sub-int/2addr v3, v12

    add-int/2addr v10, v11

    iput v10, p2, Lorg/apache/poi/java/awt/Rectangle;->width:I

    goto :goto_1

    :cond_1
    move v3, v8

    :goto_1
    const/4 v10, 0x3

    if-eq v5, v10, :cond_2

    if-eq v5, v7, :cond_2

    iget v5, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->minHeight:I

    iget v7, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->ipady:I

    add-int v10, v5, v7

    if-le v4, v10, :cond_2

    add-int v8, v5, v7

    sub-int v8, v4, v8

    add-int/2addr v5, v7

    iput v5, p2, Lorg/apache/poi/java/awt/Rectangle;->height:I

    :cond_2
    iget v4, p1, Lorg/apache/poi/java/awt/GridBagConstraints;->anchor:I

    const/16 v5, 0x100

    if-eq v4, v5, :cond_f

    const/16 v5, 0x200

    if-eq v4, v5, :cond_e

    const/16 v5, 0x300

    if-eq v4, v5, :cond_d

    const/16 v5, 0x400

    if-eq v4, v5, :cond_b

    const/16 v5, 0x500

    if-eq v4, v5, :cond_a

    const/16 v5, 0x600

    if-eq v4, v5, :cond_9

    const/16 v5, 0x700

    if-eq v4, v5, :cond_7

    const/16 v5, 0x800

    if-eq v4, v5, :cond_6

    const/16 v5, 0x900

    if-eq v4, v5, :cond_5

    packed-switch v4, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal anchor value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-nez v2, :cond_4

    :goto_2
    iget p1, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    goto :goto_4

    :pswitch_1
    if-eqz v2, :cond_4

    goto :goto_2

    :pswitch_2
    if-nez v2, :cond_11

    goto :goto_5

    :pswitch_3
    if-eqz v2, :cond_11

    goto :goto_5

    :pswitch_4
    if-nez v2, :cond_3

    :goto_3
    iget p1, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    goto :goto_7

    :pswitch_5
    if-eqz v2, :cond_3

    goto :goto_3

    :pswitch_6
    iget p1, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    div-int/2addr v3, v9

    goto :goto_4

    :pswitch_7
    iget p1, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    :goto_4
    add-int/2addr p1, v3

    iput p1, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    goto :goto_8

    :pswitch_8
    iget p1, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    goto :goto_7

    :goto_5
    :pswitch_9
    iget p1, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    goto :goto_6

    :pswitch_a
    iget p1, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    div-int/2addr v3, v9

    :goto_6
    add-int/2addr p1, v3

    iput p1, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    goto :goto_f

    :pswitch_b
    iget p1, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    div-int/2addr v3, v9

    :goto_7
    add-int/2addr p1, v3

    iput p1, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    :cond_3
    :pswitch_c
    div-int/2addr v8, v9

    :cond_4
    :goto_8
    :pswitch_d
    add-int/2addr v6, v8

    iput v6, p2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    goto :goto_f

    :cond_5
    if-nez v2, :cond_8

    :goto_9
    iget v2, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    goto :goto_a

    :cond_6
    if-eqz v2, :cond_8

    goto :goto_9

    :cond_7
    iget v2, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    div-int/2addr v3, v9

    :goto_a
    add-int/2addr v2, v3

    iput v2, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    :cond_8
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/poi/java/awt/GridBagLayout;->alignBelowBaseline(Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Rectangle;II)V

    goto :goto_f

    :cond_9
    if-nez v2, :cond_c

    :goto_b
    iget v2, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    goto :goto_c

    :cond_a
    if-eqz v2, :cond_c

    goto :goto_b

    :cond_b
    iget v2, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    div-int/2addr v3, v9

    :goto_c
    add-int/2addr v2, v3

    iput v2, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    :cond_c
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/poi/java/awt/GridBagLayout;->alignAboveBaseline(Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Rectangle;II)V

    goto :goto_f

    :cond_d
    if-nez v2, :cond_10

    :goto_d
    iget v2, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    goto :goto_e

    :cond_e
    if-eqz v2, :cond_10

    goto :goto_d

    :cond_f
    iget v2, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    div-int/2addr v3, v9

    :goto_e
    add-int/2addr v2, v3

    iput v2, p2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    :cond_10
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/poi/java/awt/GridBagLayout;->alignOnBaseline(Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Rectangle;II)V

    :cond_11
    :goto_f
    :pswitch_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ArrangeGrid(Lorg/apache/poi/java/awt/Container;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/Container;->getComponents()[Lorg/apache/poi/java/awt/Component;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {v4}, Lorg/apache/poi/java/awt/Rectangle;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/Component;->getComponentOrientation()Lorg/apache/poi/java/awt/ComponentOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/ComponentOrientation;->isLeftToRight()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    iput-boolean v5, v0, Lorg/apache/poi/java/awt/GridBagLayout;->rightToLeft:Z

    array-length v5, v3

    if-nez v5, :cond_2

    iget-object v5, v0, Lorg/apache/poi/java/awt/GridBagLayout;->columnWidths:[I

    if-eqz v5, :cond_0

    array-length v5, v5

    if-nez v5, :cond_2

    :cond_0
    iget-object v5, v0, Lorg/apache/poi/java/awt/GridBagLayout;->rowHeights:[I

    if-eqz v5, :cond_1

    array-length v5, v5

    if-nez v5, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v5, 0x2

    invoke-virtual {v0, v1, v5}, Lorg/apache/poi/java/awt/GridBagLayout;->getLayoutInfo(Lorg/apache/poi/java/awt/Container;I)Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/apache/poi/java/awt/GridBagLayout;->getMinSize(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/GridBagLayoutInfo;)Lorg/apache/poi/java/awt/Dimension;

    move-result-object v8

    iget v9, v1, Lorg/apache/poi/java/awt/Component;->width:I

    iget v10, v8, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-lt v9, v10, :cond_3

    iget v9, v1, Lorg/apache/poi/java/awt/Component;->height:I

    iget v10, v8, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-ge v9, v10, :cond_4

    :cond_3
    invoke-virtual {v0, v1, v6}, Lorg/apache/poi/java/awt/GridBagLayout;->getLayoutInfo(Lorg/apache/poi/java/awt/Container;I)Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/apache/poi/java/awt/GridBagLayout;->getMinSize(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/GridBagLayoutInfo;)Lorg/apache/poi/java/awt/Dimension;

    move-result-object v8

    :cond_4
    iput-object v7, v0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget v6, v8, Lorg/apache/poi/java/awt/Dimension;->width:I

    iput v6, v4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v8, v8, Lorg/apache/poi/java/awt/Dimension;->height:I

    iput v8, v4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iget v8, v1, Lorg/apache/poi/java/awt/Component;->width:I

    sub-int/2addr v8, v6

    const-wide/16 v9, 0x0

    const/4 v6, 0x0

    if-eqz v8, :cond_8

    move v11, v6

    move-wide v12, v9

    :goto_0
    iget v14, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->width:I

    if-ge v11, v14, :cond_5

    iget-object v14, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightX:[D

    aget-wide v15, v14, v11

    add-double/2addr v12, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    cmpl-double v11, v12, v9

    if-lez v11, :cond_7

    move v11, v6

    :goto_1
    iget v14, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->width:I

    if-ge v11, v14, :cond_7

    int-to-double v14, v8

    iget-object v5, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightX:[D

    aget-wide v17, v5, v11

    mul-double v14, v14, v17

    div-double/2addr v14, v12

    double-to-int v5, v14

    iget-object v14, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minWidth:[I

    aget v15, v14, v11

    add-int/2addr v15, v5

    aput v15, v14, v11

    iget v15, v4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/2addr v15, v5

    iput v15, v4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    aget v5, v14, v11

    if-gez v5, :cond_6

    aget v5, v14, v11

    sub-int/2addr v15, v5

    iput v15, v4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    aput v6, v14, v11

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x2

    goto :goto_1

    :cond_7
    iget v5, v1, Lorg/apache/poi/java/awt/Component;->width:I

    iget v8, v4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    sub-int/2addr v5, v8

    goto :goto_2

    :cond_8
    move v5, v6

    :goto_2
    iget v8, v1, Lorg/apache/poi/java/awt/Component;->height:I

    iget v11, v4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v8, v11

    if-eqz v8, :cond_c

    move v11, v6

    move-wide v12, v9

    :goto_3
    iget v14, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->height:I

    if-ge v11, v14, :cond_9

    iget-object v14, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightY:[D

    aget-wide v17, v14, v11

    add-double v12, v12, v17

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_9
    cmpl-double v9, v12, v9

    if-lez v9, :cond_b

    move v9, v6

    :goto_4
    iget v10, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->height:I

    if-ge v9, v10, :cond_b

    int-to-double v10, v8

    iget-object v14, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightY:[D

    aget-wide v17, v14, v9

    mul-double v10, v10, v17

    div-double/2addr v10, v12

    double-to-int v10, v10

    iget-object v11, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minHeight:[I

    aget v14, v11, v9

    add-int/2addr v14, v10

    aput v14, v11, v9

    iget v14, v4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/2addr v14, v10

    iput v14, v4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    aget v10, v11, v9

    if-gez v10, :cond_a

    aget v10, v11, v9

    sub-int/2addr v14, v10

    iput v14, v4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    aput v6, v11, v9

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_b
    iget v8, v1, Lorg/apache/poi/java/awt/Component;->height:I

    iget v9, v4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    sub-int/2addr v8, v9

    goto :goto_5

    :cond_c
    move v8, v6

    :goto_5
    const/4 v9, 0x2

    div-int/2addr v5, v9

    iget v10, v2, Lorg/apache/poi/java/awt/Insets;->left:I

    add-int/2addr v10, v5

    iput v10, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->startx:I

    div-int/2addr v8, v9

    iget v9, v2, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int/2addr v8, v9

    iput v8, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->starty:I

    move v8, v6

    :goto_6
    array-length v9, v3

    if-ge v8, v9, :cond_19

    aget-object v9, v3, v8

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v10

    if-nez v10, :cond_d

    goto/16 :goto_d

    :cond_d
    invoke-virtual {v0, v9}, Lorg/apache/poi/java/awt/GridBagLayout;->lookupConstraints(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/GridBagConstraints;

    move-result-object v10

    iget-boolean v11, v0, Lorg/apache/poi/java/awt/GridBagLayout;->rightToLeft:Z

    if-nez v11, :cond_e

    iget v11, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->startx:I

    iput v11, v4, Lorg/apache/poi/java/awt/Rectangle;->x:I

    move v11, v6

    :goto_7
    iget v12, v10, Lorg/apache/poi/java/awt/GridBagConstraints;->tempX:I

    if-ge v11, v12, :cond_f

    iget v12, v4, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget-object v13, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minWidth:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    iput v12, v4, Lorg/apache/poi/java/awt/Rectangle;->x:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_e
    iget v11, v1, Lorg/apache/poi/java/awt/Component;->width:I

    iget v12, v2, Lorg/apache/poi/java/awt/Insets;->right:I

    add-int/2addr v12, v5

    sub-int/2addr v11, v12

    iput v11, v4, Lorg/apache/poi/java/awt/Rectangle;->x:I

    move v11, v6

    :goto_8
    iget v12, v10, Lorg/apache/poi/java/awt/GridBagConstraints;->tempX:I

    if-ge v11, v12, :cond_f

    iget v12, v4, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget-object v13, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minWidth:[I

    aget v13, v13, v11

    sub-int/2addr v12, v13

    iput v12, v4, Lorg/apache/poi/java/awt/Rectangle;->x:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_f
    iget v11, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->starty:I

    iput v11, v4, Lorg/apache/poi/java/awt/Rectangle;->y:I

    move v11, v6

    :goto_9
    iget v12, v10, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    if-ge v11, v12, :cond_10

    iget v12, v4, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget-object v13, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minHeight:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    iput v12, v4, Lorg/apache/poi/java/awt/Rectangle;->y:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_10
    iput v6, v4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v11, v10, Lorg/apache/poi/java/awt/GridBagConstraints;->tempX:I

    :goto_a
    iget v12, v10, Lorg/apache/poi/java/awt/GridBagConstraints;->tempX:I

    iget v13, v10, Lorg/apache/poi/java/awt/GridBagConstraints;->tempWidth:I

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_11

    iget v12, v4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget-object v13, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minWidth:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    iput v12, v4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_11
    iput v6, v4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iget v11, v10, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    :goto_b
    iget v12, v10, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    iget v13, v10, Lorg/apache/poi/java/awt/GridBagConstraints;->tempHeight:I

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_12

    iget v12, v4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iget-object v13, v7, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minHeight:[I

    aget v13, v13, v11

    add-int/2addr v12, v13

    iput v12, v4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_12
    iput-object v9, v0, Lorg/apache/poi/java/awt/GridBagLayout;->componentAdjusting:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, v10, v4}, Lorg/apache/poi/java/awt/GridBagLayout;->adjustForGravity(Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Rectangle;)V

    iget v10, v4, Lorg/apache/poi/java/awt/Rectangle;->x:I

    if-gez v10, :cond_13

    iget v11, v4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/2addr v11, v10

    iput v11, v4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iput v6, v4, Lorg/apache/poi/java/awt/Rectangle;->x:I

    :cond_13
    iget v10, v4, Lorg/apache/poi/java/awt/Rectangle;->y:I

    if-gez v10, :cond_14

    iget v11, v4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/2addr v11, v10

    iput v11, v4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iput v6, v4, Lorg/apache/poi/java/awt/Rectangle;->y:I

    :cond_14
    iget v10, v4, Lorg/apache/poi/java/awt/Rectangle;->width:I

    if-lez v10, :cond_17

    iget v11, v4, Lorg/apache/poi/java/awt/Rectangle;->height:I

    if-gtz v11, :cond_15

    goto :goto_c

    :cond_15
    iget v12, v9, Lorg/apache/poi/java/awt/Component;->x:I

    iget v13, v4, Lorg/apache/poi/java/awt/Rectangle;->x:I

    if-ne v12, v13, :cond_16

    iget v12, v9, Lorg/apache/poi/java/awt/Component;->y:I

    iget v14, v4, Lorg/apache/poi/java/awt/Rectangle;->y:I

    if-ne v12, v14, :cond_16

    iget v12, v9, Lorg/apache/poi/java/awt/Component;->width:I

    if-ne v12, v10, :cond_16

    iget v12, v9, Lorg/apache/poi/java/awt/Component;->height:I

    if-eq v12, v11, :cond_18

    :cond_16
    iget v12, v4, Lorg/apache/poi/java/awt/Rectangle;->y:I

    invoke-virtual {v9, v13, v12, v10, v11}, Lorg/apache/poi/java/awt/Component;->setBounds(IIII)V

    goto :goto_d

    :cond_17
    :goto_c
    invoke-virtual {v9, v6, v6, v6, v6}, Lorg/apache/poi/java/awt/Component;->setBounds(IIII)V

    :cond_18
    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    :cond_19
    return-void
.end method

.method public GetLayoutInfo(Lorg/apache/poi/java/awt/Container;I)Lorg/apache/poi/java/awt/GridBagLayoutInfo;
    .locals 33

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/Container;->getComponents()[Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    invoke-direct/range {p0 .. p1}, Lorg/apache/poi/java/awt/GridBagLayout;->preInitMaximumArraySizes(Lorg/apache/poi/java/awt/Container;)[J

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    const-wide/16 v7, 0x2

    mul-long/2addr v5, v7

    const-wide/32 v9, 0x7fffffff

    cmp-long v5, v5, v9

    const/4 v6, 0x2

    if-lez v5, :cond_0

    const v5, 0x7fffffff

    goto :goto_0

    :cond_0
    aget-wide v12, v3, v4

    long-to-int v5, v12

    mul-int/2addr v5, v6

    :goto_0
    const/4 v12, 0x1

    aget-wide v13, v3, v12

    mul-long/2addr v13, v7

    cmp-long v7, v13, v9

    if-lez v7, :cond_1

    const v3, 0x7fffffff

    goto :goto_1

    :cond_1
    aget-wide v7, v3, v12

    long-to-int v3, v7

    mul-int/2addr v3, v6

    :goto_1
    iget-object v7, v1, Lorg/apache/poi/java/awt/GridBagLayout;->rowHeights:[I

    if-eqz v7, :cond_2

    array-length v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_2
    iget-object v7, v1, Lorg/apache/poi/java/awt/GridBagLayout;->columnWidths:[I

    if-eqz v7, :cond_3

    array-length v7, v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_3
    new-array v7, v5, [I

    new-array v8, v3, [I

    move v10, v4

    move v13, v10

    move v14, v13

    move v15, v14

    const/16 v16, -0x1

    const/16 v17, -0x1

    :goto_2
    array-length v9, v0

    if-ge v10, v9, :cond_19

    aget-object v9, v0, v10

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v22, v0

    move/from16 v21, v3

    move/from16 v20, v5

    move v3, v6

    move/from16 v0, p2

    goto/16 :goto_b

    :cond_4
    invoke-virtual {v1, v9}, Lorg/apache/poi/java/awt/GridBagLayout;->lookupConstraints(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/GridBagConstraints;

    move-result-object v11

    iget v4, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->gridx:I

    iget v6, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->gridy:I

    iget v12, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->gridwidth:I

    move/from16 v20, v5

    if-gtz v12, :cond_5

    const/4 v12, 0x1

    :cond_5
    iget v5, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->gridheight:I

    if-gtz v5, :cond_6

    const/4 v5, 0x1

    :cond_6
    if-gez v4, :cond_9

    if-gez v6, :cond_9

    if-ltz v16, :cond_7

    move/from16 v6, v16

    goto :goto_3

    :cond_7
    if-ltz v17, :cond_8

    move/from16 v4, v17

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    :cond_9
    :goto_3
    move-object/from16 v22, v0

    move/from16 v21, v3

    if-gez v4, :cond_c

    move v0, v6

    move/from16 v23, v15

    const/4 v3, 0x0

    :goto_4
    add-int v15, v6, v5

    if-ge v0, v15, :cond_a

    aget v15, v7, v0

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    sub-int/2addr v3, v4

    const/4 v0, 0x1

    sub-int/2addr v3, v0

    if-gez v3, :cond_b

    const/4 v4, 0x0

    goto :goto_6

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move/from16 v23, v15

    if-gez v6, :cond_f

    move v3, v4

    const/4 v0, 0x0

    :goto_5
    add-int v15, v4, v12

    if-ge v3, v15, :cond_d

    aget v15, v8, v3

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    sub-int/2addr v0, v6

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-gez v0, :cond_e

    const/4 v6, 0x0

    goto :goto_6

    :cond_e
    move v6, v0

    :cond_f
    :goto_6
    add-int/2addr v12, v4

    if-ge v13, v12, :cond_10

    move v13, v12

    :cond_10
    add-int/2addr v5, v6

    if-ge v14, v5, :cond_11

    move v14, v5

    :cond_11
    :goto_7
    if-ge v4, v12, :cond_12

    aput v5, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_12
    :goto_8
    if-ge v6, v5, :cond_13

    aput v12, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_13
    move/from16 v0, p2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_14

    invoke-virtual {v9}, Lorg/apache/poi/java/awt/Component;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v4

    goto :goto_9

    :cond_14
    invoke-virtual {v9}, Lorg/apache/poi/java/awt/Component;->getMinimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v4

    :goto_9
    iget v6, v4, Lorg/apache/poi/java/awt/Dimension;->width:I

    iput v6, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->minWidth:I

    iget v6, v4, Lorg/apache/poi/java/awt/Dimension;->height:I

    iput v6, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->minHeight:I

    invoke-direct {v1, v9, v11, v4}, Lorg/apache/poi/java/awt/GridBagLayout;->calculateBaseline(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Dimension;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v15, 0x1

    goto :goto_a

    :cond_15
    move/from16 v15, v23

    :goto_a
    iget v4, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->gridheight:I

    if-nez v4, :cond_16

    iget v6, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->gridwidth:I

    if-nez v6, :cond_16

    const/16 v16, -0x1

    const/16 v17, -0x1

    :cond_16
    if-nez v4, :cond_17

    if-gez v16, :cond_17

    move/from16 v17, v12

    goto :goto_b

    :cond_17
    iget v4, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->gridwidth:I

    if-nez v4, :cond_18

    if-gez v17, :cond_18

    move/from16 v16, v5

    :cond_18
    :goto_b
    add-int/lit8 v10, v10, 0x1

    move v6, v3

    move/from16 v5, v20

    move/from16 v3, v21

    move-object/from16 v0, v22

    const/4 v4, 0x0

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_19
    move-object/from16 v22, v0

    move/from16 v21, v3

    move/from16 v20, v5

    move/from16 v23, v15

    iget-object v0, v1, Lorg/apache/poi/java/awt/GridBagLayout;->columnWidths:[I

    if-eqz v0, :cond_1a

    array-length v3, v0

    if-ge v13, v3, :cond_1a

    array-length v13, v0

    :cond_1a
    iget-object v0, v1, Lorg/apache/poi/java/awt/GridBagLayout;->rowHeights:[I

    if-eqz v0, :cond_1b

    array-length v3, v0

    if-ge v14, v3, :cond_1b

    array-length v14, v0

    :cond_1b
    new-instance v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    invoke-direct {v0, v13, v14}, Lorg/apache/poi/java/awt/GridBagLayoutInfo;-><init>(II)V

    const/4 v3, 0x0

    invoke-static {v7, v3}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v8, v3}, Ljava/util/Arrays;->fill([II)V

    const/4 v3, 0x0

    if-eqz v23, :cond_1c

    new-array v3, v14, [I

    iput-object v3, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->maxAscent:[I

    new-array v4, v14, [I

    iput-object v4, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->maxDescent:[I

    new-array v5, v14, [S

    iput-object v5, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->baselineType:[S

    const/4 v6, 0x1

    iput-boolean v6, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->hasBaseline:Z

    goto :goto_c

    :cond_1c
    move-object v4, v3

    move-object v5, v4

    :goto_c
    move-object/from16 v10, v22

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v11, -0x1

    :goto_d
    array-length v12, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v6, v12, :cond_3b

    :try_start_1
    aget-object v12, v10, v6

    invoke-virtual {v12}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v24

    if-nez v24, :cond_1d

    move-object/from16 v28, v7

    move-object/from16 v25, v10

    goto/16 :goto_1e

    :cond_1d
    invoke-virtual {v1, v12}, Lorg/apache/poi/java/awt/GridBagLayout;->lookupConstraints(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/GridBagConstraints;

    move-result-object v12

    iget v13, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->gridx:I

    iget v14, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->gridy:I

    iget v15, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->gridwidth:I

    move-object/from16 v25, v10

    iget v10, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->gridheight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v13, :cond_20

    if-gez v14, :cond_20

    if-ltz v9, :cond_1e

    move v14, v9

    goto :goto_e

    :cond_1e
    if-ltz v11, :cond_1f

    move v13, v11

    goto :goto_e

    :cond_1f
    const/4 v14, 0x0

    :cond_20
    :goto_e
    if-gez v13, :cond_25

    if-gtz v10, :cond_21

    move/from16 v26, v9

    :try_start_2
    iget v9, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->height:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sub-int/2addr v9, v14

    add-int/2addr v9, v10

    const/4 v10, 0x1

    if-ge v9, v10, :cond_22

    const/4 v9, 0x1

    goto :goto_f

    :cond_21
    move/from16 v26, v9

    move v9, v10

    :cond_22
    :goto_f
    move/from16 v27, v11

    move v11, v14

    const/4 v10, 0x0

    :goto_10
    add-int v1, v14, v9

    if-ge v11, v1, :cond_23

    :try_start_3
    aget v1, v7, v11

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_23
    sub-int/2addr v10, v13

    const/4 v1, 0x1

    sub-int/2addr v10, v1

    if-gez v10, :cond_24

    move v10, v9

    move/from16 v19, v15

    const/4 v13, 0x0

    goto :goto_11

    :cond_24
    move v13, v10

    move/from16 v19, v15

    move v10, v9

    :goto_11
    move v9, v1

    goto :goto_15

    :cond_25
    move/from16 v26, v9

    move/from16 v27, v11

    const/4 v1, 0x1

    if-gez v14, :cond_2a

    if-gtz v15, :cond_27

    iget v9, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->width:I

    sub-int/2addr v9, v13

    add-int/2addr v9, v15

    if-ge v9, v1, :cond_26

    const/4 v15, 0x1

    goto :goto_12

    :cond_26
    move v15, v9

    :cond_27
    :goto_12
    move v9, v13

    const/4 v1, 0x0

    :goto_13
    add-int v11, v13, v15

    if-ge v9, v11, :cond_28

    aget v11, v8, v9

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_28
    sub-int/2addr v1, v14

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    if-gez v1, :cond_29

    move/from16 v19, v15

    const/4 v14, 0x0

    goto :goto_15

    :cond_29
    move v14, v1

    goto :goto_14

    :cond_2a
    move v9, v1

    :goto_14
    move/from16 v19, v15

    :goto_15
    if-gtz v19, :cond_2b

    iget v1, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->width:I

    sub-int/2addr v1, v13

    add-int v1, v19, v1

    if-ge v1, v9, :cond_2c

    move v1, v9

    goto :goto_16

    :cond_2b
    move/from16 v1, v19

    :cond_2c
    :goto_16
    if-gtz v10, :cond_2d

    iget v11, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->height:I

    sub-int/2addr v11, v14

    add-int/2addr v10, v11

    if-ge v10, v9, :cond_2d

    const/4 v10, 0x1

    :cond_2d
    add-int v9, v13, v1

    add-int v11, v14, v10

    move v15, v13

    :goto_17
    if-ge v15, v9, :cond_2e

    aput v11, v8, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_17

    :cond_2e
    move v15, v14

    :goto_18
    if-ge v15, v11, :cond_2f

    aput v9, v7, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_18

    :cond_2f
    iget v15, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->gridheight:I

    if-nez v15, :cond_30

    move-object/from16 v28, v7

    iget v7, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->gridwidth:I

    if-nez v7, :cond_31

    const/16 v26, -0x1

    const/16 v27, -0x1

    goto :goto_19

    :cond_30
    move-object/from16 v28, v7

    :cond_31
    :goto_19
    if-nez v15, :cond_32

    if-gez v26, :cond_32

    move/from16 v27, v9

    goto :goto_1a

    :cond_32
    iget v7, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->gridwidth:I

    if-nez v7, :cond_33

    if-gez v27, :cond_33

    move v9, v11

    goto :goto_1b

    :cond_33
    :goto_1a
    move/from16 v9, v26

    :goto_1b
    iput v13, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->tempX:I

    iput v14, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    iput v1, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->tempWidth:I

    iput v10, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->tempHeight:I

    iget v1, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->anchor:I

    if-eqz v23, :cond_3a

    const/16 v7, 0x100

    if-eq v1, v7, :cond_36

    const/16 v7, 0x200

    if-eq v1, v7, :cond_36

    const/16 v7, 0x300

    if-eq v1, v7, :cond_36

    const/16 v7, 0x400

    if-eq v1, v7, :cond_35

    const/16 v7, 0x500

    if-eq v1, v7, :cond_35

    const/16 v7, 0x600

    if-eq v1, v7, :cond_35

    const/16 v7, 0x700

    if-eq v1, v7, :cond_34

    const/16 v7, 0x800

    if-eq v1, v7, :cond_34

    const/16 v7, 0x900

    if-eq v1, v7, :cond_34

    goto/16 :goto_1d

    :cond_34
    iget v1, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->minHeight:I

    iget-object v7, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v7, v7, Lorg/apache/poi/java/awt/Insets;->bottom:I

    add-int/2addr v1, v7

    iget v7, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->ipady:I

    add-int/2addr v1, v7

    aget v7, v4, v14

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v4, v14

    aget v1, v3, v14

    iget-object v7, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v7, v7, Lorg/apache/poi/java/awt/Insets;->top:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v3, v14

    goto/16 :goto_1d

    :cond_35
    iget v1, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->minHeight:I

    iget-object v7, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v7, v7, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int/2addr v1, v7

    iget v7, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->ipady:I

    add-int/2addr v1, v7

    aget v7, v3, v14

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v3, v14

    aget v1, v4, v14

    iget-object v7, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v7, v7, Lorg/apache/poi/java/awt/Insets;->bottom:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v4, v14

    goto :goto_1d

    :cond_36
    iget v1, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->ascent:I

    if-ltz v1, :cond_3a

    const/4 v7, 0x1

    if-ne v10, v7, :cond_37

    aget v7, v3, v14

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v3, v14

    aget v1, v4, v14

    iget v7, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->descent:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v4, v14

    goto :goto_1c

    :cond_37
    iget-object v7, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->baselineResizeBehavior:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    sget-object v10, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;->CONSTANT_DESCENT:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    if-ne v7, v10, :cond_38

    add-int/lit8 v1, v11, -0x1

    aget v7, v4, v1

    iget v10, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->descent:I

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v4, v1

    goto :goto_1c

    :cond_38
    aget v7, v3, v14

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v3, v14

    :goto_1c
    iget-object v1, v12, Lorg/apache/poi/java/awt/GridBagConstraints;->baselineResizeBehavior:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    sget-object v7, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;->CONSTANT_DESCENT:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    if-ne v1, v7, :cond_39

    add-int/lit8 v11, v11, -0x1

    aget-short v7, v5, v11

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v10, 0x1

    shl-int v1, v10, v1

    or-int/2addr v1, v7

    int-to-short v1, v1

    aput-short v1, v5, v11

    goto :goto_1d

    :cond_39
    aget-short v7, v5, v14

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v10, 0x1

    shl-int v1, v10, v1

    or-int/2addr v1, v7

    int-to-short v1, v1

    aput-short v1, v5, v14

    :cond_3a
    :goto_1d
    move/from16 v11, v27

    :goto_1e
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v10, v25

    move-object/from16 v7, v28

    goto/16 :goto_d

    :cond_3b
    move-object/from16 v25, v10

    move/from16 v1, v21

    new-array v5, v1, [D

    iput-object v5, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightX:[D

    move/from16 v5, v20

    new-array v6, v5, [D

    iput-object v6, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightY:[D

    new-array v1, v1, [I

    iput-object v1, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minWidth:[I

    new-array v5, v5, [I

    iput-object v5, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minHeight:[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v5, p0

    :try_start_4
    iget-object v6, v5, Lorg/apache/poi/java/awt/GridBagLayout;->columnWidths:[I

    if-eqz v6, :cond_3c

    array-length v7, v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3c
    iget-object v1, v5, Lorg/apache/poi/java/awt/GridBagLayout;->rowHeights:[I

    if-eqz v1, :cond_3d

    iget-object v6, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minHeight:[I

    array-length v7, v1

    const/4 v8, 0x0

    invoke-static {v1, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3d
    iget-object v1, v5, Lorg/apache/poi/java/awt/GridBagLayout;->columnWeights:[D

    if-eqz v1, :cond_3e

    iget-object v6, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightX:[D

    array-length v7, v6

    array-length v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v1, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3e
    iget-object v1, v5, Lorg/apache/poi/java/awt/GridBagLayout;->rowWeights:[D

    if-eqz v1, :cond_3f

    iget-object v6, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightY:[D

    array-length v7, v6

    array-length v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v1, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f

    :cond_3f
    const/4 v8, 0x0

    :goto_1f
    const/4 v1, 0x1

    const v6, 0x7fffffff

    :goto_20
    if-eq v1, v6, :cond_5e

    move v7, v6

    move v9, v8

    move-object/from16 v10, v25

    :goto_21
    array-length v11, v10

    if-ge v9, v11, :cond_5d

    aget-object v11, v10, v9

    invoke-virtual {v11}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v12

    if-nez v12, :cond_40

    move/from16 v18, v9

    const/16 v14, 0x400

    const/16 v15, 0x500

    goto/16 :goto_35

    :cond_40
    invoke-virtual {v5, v11}, Lorg/apache/poi/java/awt/GridBagLayout;->lookupConstraints(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/GridBagConstraints;

    move-result-object v11

    iget v12, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempWidth:I

    const-wide/16 v13, 0x0

    if-ne v12, v1, :cond_48

    iget v15, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempX:I

    add-int/2addr v12, v15

    move/from16 v18, v9

    iget-wide v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->weightx:D

    :goto_22
    if-ge v15, v12, :cond_41

    iget-object v6, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightX:[D

    aget-wide v25, v6, v15

    sub-double v8, v8, v25

    add-int/lit8 v15, v15, 0x1

    const v6, 0x7fffffff

    goto :goto_22

    :cond_41
    cmpl-double v6, v8, v13

    if-lez v6, :cond_44

    iget v6, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempX:I

    move-wide/from16 v25, v13

    :goto_23
    if-ge v6, v12, :cond_42

    iget-object v15, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightX:[D

    aget-wide v27, v15, v6

    add-double v25, v25, v27

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_42
    iget v6, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempX:I

    :goto_24
    cmpl-double v15, v25, v13

    if-lez v15, :cond_43

    if-ge v6, v12, :cond_43

    iget-object v15, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightX:[D

    aget-wide v27, v15, v6

    mul-double v29, v27, v8

    div-double v29, v29, v25

    aget-wide v31, v15, v6

    add-double v31, v31, v29

    aput-wide v31, v15, v6

    sub-double v8, v8, v29

    sub-double v25, v25, v27

    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_43
    iget-object v6, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightX:[D

    add-int/lit8 v15, v12, -0x1

    aget-wide v25, v6, v15

    add-double v25, v25, v8

    aput-wide v25, v6, v15

    :cond_44
    iget v6, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->minWidth:I

    iget v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->ipadx:I

    add-int/2addr v6, v8

    iget-object v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v9, v8, Lorg/apache/poi/java/awt/Insets;->left:I

    add-int/2addr v6, v9

    iget v8, v8, Lorg/apache/poi/java/awt/Insets;->right:I

    add-int/2addr v6, v8

    iget v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempX:I

    :goto_25
    if-ge v8, v12, :cond_45

    iget-object v9, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minWidth:[I

    aget v9, v9, v8

    sub-int/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_45
    if-lez v6, :cond_49

    iget v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempX:I

    move-wide/from16 v25, v13

    :goto_26
    if-ge v8, v12, :cond_46

    iget-object v9, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightX:[D

    aget-wide v27, v9, v8

    add-double v25, v25, v27

    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    :cond_46
    iget v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempX:I

    :goto_27
    cmpl-double v9, v25, v13

    if-lez v9, :cond_47

    if-ge v8, v12, :cond_47

    iget-object v9, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightX:[D

    aget-wide v27, v9, v8

    int-to-double v13, v6

    mul-double v13, v13, v27

    div-double v13, v13, v25

    double-to-int v9, v13

    iget-object v13, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minWidth:[I

    aget v14, v13, v8

    add-int/2addr v14, v9

    aput v14, v13, v8

    sub-int/2addr v6, v9

    sub-double v25, v25, v27

    add-int/lit8 v8, v8, 0x1

    const-wide/16 v13, 0x0

    goto :goto_27

    :cond_47
    iget-object v8, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minWidth:[I

    add-int/lit8 v12, v12, -0x1

    aget v9, v8, v12

    add-int/2addr v9, v6

    aput v9, v8, v12

    goto :goto_28

    :cond_48
    move/from16 v18, v9

    if-le v12, v1, :cond_49

    if-ge v12, v7, :cond_49

    move v7, v12

    :cond_49
    :goto_28
    iget v6, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempHeight:I

    if-ne v6, v1, :cond_5b

    iget v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    add-int/2addr v6, v8

    iget-wide v12, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->weighty:D

    :goto_29
    if-ge v8, v6, :cond_4a

    iget-object v9, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightY:[D

    aget-wide v14, v9, v8

    sub-double/2addr v12, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :cond_4a
    const-wide/16 v8, 0x0

    cmpl-double v14, v12, v8

    if-lez v14, :cond_4d

    iget v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    const-wide/16 v14, 0x0

    :goto_2a
    if-ge v8, v6, :cond_4b

    iget-object v9, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightY:[D

    aget-wide v25, v9, v8

    add-double v14, v14, v25

    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    :cond_4b
    iget v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    :goto_2b
    const-wide/16 v25, 0x0

    cmpl-double v9, v14, v25

    if-lez v9, :cond_4c

    if-ge v8, v6, :cond_4c

    iget-object v9, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightY:[D

    aget-wide v25, v9, v8

    mul-double v27, v25, v12

    div-double v27, v27, v14

    aget-wide v31, v9, v8

    add-double v31, v31, v27

    aput-wide v31, v9, v8

    sub-double v12, v12, v27

    sub-double v14, v14, v25

    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    :cond_4c
    iget-object v8, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightY:[D

    add-int/lit8 v9, v6, -0x1

    aget-wide v14, v8, v9

    add-double/2addr v14, v12

    aput-wide v14, v8, v9

    :cond_4d
    if-eqz v23, :cond_56

    iget v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->anchor:I

    const/16 v9, 0x100

    const/16 v12, 0x200

    const/16 v13, 0x300

    if-eq v8, v9, :cond_53

    if-eq v8, v12, :cond_53

    const/16 v14, 0x400

    if-eq v8, v13, :cond_52

    const/16 v15, 0x500

    if-eq v8, v14, :cond_51

    if-eq v8, v15, :cond_51

    const/16 v9, 0x600

    if-eq v8, v9, :cond_51

    const/16 v9, 0x700

    if-eq v8, v9, :cond_4f

    const/16 v9, 0x800

    if-eq v8, v9, :cond_4f

    const/16 v9, 0x900

    if-eq v8, v9, :cond_50

    :cond_4e
    const/4 v9, 0x1

    goto :goto_30

    :cond_4f
    const/16 v9, 0x900

    :cond_50
    iget v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    aget v8, v3, v8

    iget v9, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->minHeight:I

    add-int/2addr v8, v9

    iget-object v9, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v9, v9, Lorg/apache/poi/java/awt/Insets;->bottom:I

    add-int/2addr v8, v9

    iget v9, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->ipady:I

    goto :goto_2c

    :cond_51
    iget-object v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v8, v8, Lorg/apache/poi/java/awt/Insets;->top:I

    iget v9, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->minHeight:I

    add-int/2addr v8, v9

    iget v9, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->ipady:I

    add-int/2addr v8, v9

    iget v9, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    aget v9, v4, v9

    :goto_2c
    add-int/2addr v8, v9

    :goto_2d
    const/4 v9, 0x1

    goto :goto_31

    :cond_52
    :goto_2e
    const/16 v15, 0x500

    goto :goto_2f

    :cond_53
    const/16 v14, 0x400

    goto :goto_2e

    :goto_2f
    iget v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->ascent:I

    if-ltz v8, :cond_4e

    iget v9, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempHeight:I

    const/4 v12, 0x1

    if-ne v9, v12, :cond_54

    iget v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    aget v9, v3, v8

    aget v8, v4, v8

    add-int/2addr v8, v9

    goto :goto_2d

    :cond_54
    iget-object v12, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->baselineResizeBehavior:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    sget-object v13, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;->CONSTANT_DESCENT:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    if-eq v12, v13, :cond_55

    iget v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    aget v8, v3, v8

    iget v9, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->descent:I

    goto :goto_2c

    :cond_55
    iget v12, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    add-int/2addr v12, v9

    const/4 v9, 0x1

    sub-int/2addr v12, v9

    aget v12, v4, v12

    add-int/2addr v8, v12

    goto :goto_31

    :cond_56
    const/4 v9, 0x1

    const/16 v14, 0x400

    const/16 v15, 0x500

    :goto_30
    const/4 v8, -0x1

    :goto_31
    const/4 v12, -0x1

    if-ne v8, v12, :cond_57

    iget v8, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->minHeight:I

    iget v13, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->ipady:I

    add-int/2addr v8, v13

    iget-object v13, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v9, v13, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int/2addr v8, v9

    iget v9, v13, Lorg/apache/poi/java/awt/Insets;->bottom:I

    add-int/2addr v8, v9

    :cond_57
    iget v9, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    :goto_32
    if-ge v9, v6, :cond_58

    iget-object v13, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minHeight:[I

    aget v13, v13, v9

    sub-int/2addr v8, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_32

    :cond_58
    if-lez v8, :cond_5c

    iget v9, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    const-wide/16 v21, 0x0

    :goto_33
    if-ge v9, v6, :cond_59

    iget-object v13, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightY:[D

    aget-wide v25, v13, v9

    add-double v21, v21, v25

    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    :cond_59
    iget v9, v11, Lorg/apache/poi/java/awt/GridBagConstraints;->tempY:I

    const-wide/16 v25, 0x0

    :goto_34
    cmpl-double v11, v21, v25

    if-lez v11, :cond_5a

    if-ge v9, v6, :cond_5a

    iget-object v11, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightY:[D

    aget-wide v27, v11, v9

    int-to-double v12, v8

    mul-double v12, v12, v27

    div-double v12, v12, v21

    double-to-int v11, v12

    iget-object v12, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minHeight:[I

    aget v13, v12, v9

    add-int/2addr v13, v11

    aput v13, v12, v9

    sub-int/2addr v8, v11

    sub-double v21, v21, v27

    add-int/lit8 v9, v9, 0x1

    const/4 v12, -0x1

    goto :goto_34

    :cond_5a
    iget-object v9, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minHeight:[I

    add-int/lit8 v6, v6, -0x1

    aget v11, v9, v6

    add-int/2addr v11, v8

    aput v11, v9, v6

    goto :goto_35

    :cond_5b
    const/16 v14, 0x400

    const/16 v15, 0x500

    if-le v6, v1, :cond_5c

    if-ge v6, v7, :cond_5c

    move v7, v6

    :cond_5c
    :goto_35
    add-int/lit8 v9, v18, 0x1

    const v6, 0x7fffffff

    const/4 v8, 0x0

    goto/16 :goto_21

    :cond_5d
    move v1, v7

    move-object/from16 v25, v10

    goto/16 :goto_20

    :cond_5e
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_36

    :catchall_1
    move-exception v0

    move-object v5, v1

    :goto_36
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_36
.end method

.method public GetMinSize(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/GridBagLayoutInfo;)Lorg/apache/poi/java/awt/Dimension;
    .locals 5

    new-instance v0, Lorg/apache/poi/java/awt/Dimension;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/Dimension;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Container;->getInsets()Lorg/apache/poi/java/awt/Insets;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p2, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->width:I

    if-ge v2, v4, :cond_0

    iget-object v4, p2, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minWidth:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p1, Lorg/apache/poi/java/awt/Insets;->left:I

    add-int/2addr v3, v2

    iget v2, p1, Lorg/apache/poi/java/awt/Insets;->right:I

    add-int/2addr v3, v2

    iput v3, v0, Lorg/apache/poi/java/awt/Dimension;->width:I

    move v2, v1

    :goto_1
    iget v3, p2, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->height:I

    if-ge v1, v3, :cond_1

    iget-object v3, p2, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minHeight:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget p2, p1, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int/2addr v2, p2

    iget p1, p1, Lorg/apache/poi/java/awt/Insets;->bottom:I

    add-int/2addr v2, p1

    iput v2, v0, Lorg/apache/poi/java/awt/Dimension;->height:I

    return-object v0
.end method

.method public addLayoutComponent(Ljava/lang/String;Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    return-void
.end method

.method public addLayoutComponent(Lorg/apache/poi/java/awt/Component;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lorg/apache/poi/java/awt/GridBagConstraints;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/apache/poi/java/awt/GridBagConstraints;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/GridBagLayout;->setConstraints(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/GridBagConstraints;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot add to layout: constraints must be a GridBagConstraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public adjustForGravity(Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Rectangle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/GridBagLayout;->AdjustForGravity(Lorg/apache/poi/java/awt/GridBagConstraints;Lorg/apache/poi/java/awt/Rectangle;)V

    return-void
.end method

.method public arrangeGrid(Lorg/apache/poi/java/awt/Container;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/GridBagLayout;->ArrangeGrid(Lorg/apache/poi/java/awt/Container;)V

    return-void
.end method

.method public getConstraints(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/GridBagConstraints;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->comptable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/GridBagConstraints;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->defaultConstraints:Lorg/apache/poi/java/awt/GridBagConstraints;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/GridBagLayout;->setConstraints(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/GridBagConstraints;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->comptable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/java/awt/GridBagConstraints;

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GridBagConstraints;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/GridBagConstraints;

    return-object p1
.end method

.method public getLayoutAlignmentX(Lorg/apache/poi/java/awt/Container;)F
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method public getLayoutAlignmentY(Lorg/apache/poi/java/awt/Container;)F
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method public getLayoutDimensions()[[I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    return-object v0

    :cond_0
    new-array v1, v1, [[I

    iget v2, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->width:I

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget v3, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->height:I

    new-array v3, v3, [I

    const/4 v5, 0x1

    aput-object v3, v1, v5

    iget-object v0, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minWidth:[I

    aget-object v3, v1, v4

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget-object v2, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minHeight:[I

    aget-object v3, v1, v5

    iget v0, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->height:I

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :array_0
    .array-data 4
        0x2
        0x0
    .end array-data
.end method

.method public getLayoutInfo(Lorg/apache/poi/java/awt/Container;I)Lorg/apache/poi/java/awt/GridBagLayoutInfo;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/GridBagLayout;->GetLayoutInfo(Lorg/apache/poi/java/awt/Container;I)Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    move-result-object p1

    return-object p1
.end method

.method public getLayoutOrigin()Lorg/apache/poi/java/awt/Point;
    .locals 3

    new-instance v0, Lorg/apache/poi/java/awt/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    if-eqz v1, :cond_0

    iget v2, v1, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->startx:I

    iput v2, v0, Lorg/apache/poi/java/awt/Point;->x:I

    iget v1, v1, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->starty:I

    iput v1, v0, Lorg/apache/poi/java/awt/Point;->y:I

    :cond_0
    return-object v0
.end method

.method public getLayoutWeights()[[D
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    const-class v1, D

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    return-object v0

    :cond_0
    new-array v1, v1, [[D

    iget v2, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->width:I

    new-array v3, v2, [D

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget v3, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->height:I

    new-array v3, v3, [D

    const/4 v5, 0x1

    aput-object v3, v1, v5

    iget-object v0, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightX:[D

    aget-object v3, v1, v4

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget-object v2, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->weightY:[D

    aget-object v3, v1, v5

    iget v0, v0, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->height:I

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :array_0
    .array-data 4
        0x2
        0x0
    .end array-data
.end method

.method public getMinSize(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/GridBagLayoutInfo;)Lorg/apache/poi/java/awt/Dimension;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/GridBagLayout;->GetMinSize(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/GridBagLayoutInfo;)Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public invalidateLayout(Lorg/apache/poi/java/awt/Container;)V
    .locals 0

    return-void
.end method

.method public layoutContainer(Lorg/apache/poi/java/awt/Container;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/GridBagLayout;->arrangeGrid(Lorg/apache/poi/java/awt/Container;)V

    return-void
.end method

.method public location(II)Lorg/apache/poi/java/awt/Point;
    .locals 6

    new-instance v0, Lorg/apache/poi/java/awt/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    iget-object v2, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    iget v3, v2, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->startx:I

    iget-boolean v4, p0, Lorg/apache/poi/java/awt/GridBagLayout;->rightToLeft:Z

    if-nez v4, :cond_2

    move v2, v1

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget v5, v4, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->width:I

    if-ge v2, v5, :cond_5

    iget-object v4, v4, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minWidth:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    if-le v3, p1, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, v2, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->width:I

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    if-le v3, p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget-object v4, v4, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minWidth:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    :cond_5
    :goto_3
    iput v2, v0, Lorg/apache/poi/java/awt/Point;->x:I

    iget-object p1, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget p1, p1, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->starty:I

    :goto_4
    iget-object v2, p0, Lorg/apache/poi/java/awt/GridBagLayout;->layoutInfo:Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    iget v3, v2, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->height:I

    if-ge v1, v3, :cond_7

    iget-object v2, v2, Lorg/apache/poi/java/awt/GridBagLayoutInfo;->minHeight:[I

    aget v2, v2, v1

    add-int/2addr p1, v2

    if-le p1, p2, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    iput v1, v0, Lorg/apache/poi/java/awt/Point;->y:I

    return-object v0
.end method

.method public lookupConstraints(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/GridBagConstraints;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->comptable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/GridBagConstraints;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->defaultConstraints:Lorg/apache/poi/java/awt/GridBagConstraints;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/GridBagLayout;->setConstraints(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/GridBagConstraints;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->comptable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/java/awt/GridBagConstraints;

    :cond_0
    return-object v0
.end method

.method public maximumLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    new-instance p1, Lorg/apache/poi/java/awt/Dimension;

    const v0, 0x7fffffff

    invoke-direct {p1, v0, v0}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-object p1
.end method

.method public minimumLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/GridBagLayout;->getLayoutInfo(Lorg/apache/poi/java/awt/Container;I)Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/GridBagLayout;->getMinSize(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/GridBagLayoutInfo;)Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public preferredLayoutSize(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/GridBagLayout;->getLayoutInfo(Lorg/apache/poi/java/awt/Container;I)Lorg/apache/poi/java/awt/GridBagLayoutInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/GridBagLayout;->getMinSize(Lorg/apache/poi/java/awt/Container;Lorg/apache/poi/java/awt/GridBagLayoutInfo;)Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public removeLayoutComponent(Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/GridBagLayout;->removeConstraints(Lorg/apache/poi/java/awt/Component;)V

    return-void
.end method

.method public setConstraints(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/GridBagConstraints;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/GridBagLayout;->comptable:Ljava/util/Hashtable;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/GridBagConstraints;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/java/awt/GridBagConstraints;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
