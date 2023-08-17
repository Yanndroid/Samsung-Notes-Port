.class public Lorg/apache/poi/java/awt/GridBagConstraints;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ABOVE_BASELINE:I = 0x400

.field public static final ABOVE_BASELINE_LEADING:I = 0x500

.field public static final ABOVE_BASELINE_TRAILING:I = 0x600

.field public static final BASELINE:I = 0x100

.field public static final BASELINE_LEADING:I = 0x200

.field public static final BASELINE_TRAILING:I = 0x300

.field public static final BELOW_BASELINE:I = 0x700

.field public static final BELOW_BASELINE_LEADING:I = 0x800

.field public static final BELOW_BASELINE_TRAILING:I = 0x900

.field public static final BOTH:I = 0x1

.field public static final CENTER:I = 0xa

.field public static final EAST:I = 0xd

.field public static final FIRST_LINE_END:I = 0x18

.field public static final FIRST_LINE_START:I = 0x17

.field public static final HORIZONTAL:I = 0x2

.field public static final LAST_LINE_END:I = 0x1a

.field public static final LAST_LINE_START:I = 0x19

.field public static final LINE_END:I = 0x16

.field public static final LINE_START:I = 0x15

.field public static final NONE:I = 0x0

.field public static final NORTH:I = 0xb

.field public static final NORTHEAST:I = 0xc

.field public static final NORTHWEST:I = 0x12

.field public static final PAGE_END:I = 0x14

.field public static final PAGE_START:I = 0x13

.field public static final RELATIVE:I = -0x1

.field public static final REMAINDER:I = 0x0

.field public static final SOUTH:I = 0xf

.field public static final SOUTHEAST:I = 0xe

.field public static final SOUTHWEST:I = 0x10

.field public static final VERTICAL:I = 0x3

.field public static final WEST:I = 0x11

.field private static final serialVersionUID:J = -0xde0f6f13019d931L


# instance fields
.field public anchor:I

.field public transient ascent:I

.field public transient baselineResizeBehavior:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

.field public transient centerOffset:I

.field public transient centerPadding:I

.field public transient descent:I

.field public fill:I

.field public gridheight:I

.field public gridwidth:I

.field public gridx:I

.field public gridy:I

.field public insets:Lorg/apache/poi/java/awt/Insets;

.field public ipadx:I

.field public ipady:I

.field public minHeight:I

.field public minWidth:I

.field public tempHeight:I

.field public tempWidth:I

.field public tempX:I

.field public tempY:I

.field public weightx:D

.field public weighty:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->gridx:I

    iput v0, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->gridy:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->gridwidth:I

    iput v0, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->gridheight:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->weightx:D

    iput-wide v0, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->weighty:D

    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->anchor:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->fill:I

    new-instance v1, Lorg/apache/poi/java/awt/Insets;

    invoke-direct {v1, v0, v0, v0, v0}, Lorg/apache/poi/java/awt/Insets;-><init>(IIII)V

    iput-object v1, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iput v0, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->ipadx:I

    iput v0, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->ipady:I

    return-void
.end method

.method public constructor <init>(IIIIDDIILorg/apache/poi/java/awt/Insets;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->gridx:I

    iput p2, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->gridy:I

    iput p3, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->gridwidth:I

    iput p4, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->gridheight:I

    iput p10, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->fill:I

    iput p12, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->ipadx:I

    iput p13, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->ipady:I

    iput-object p11, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    iput p9, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->anchor:I

    iput-wide p5, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->weightx:D

    iput-wide p7, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->weighty:D

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/GridBagConstraints;

    iget-object v1, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Insets;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Insets;

    iput-object v1, v0, Lorg/apache/poi/java/awt/GridBagConstraints;->insets:Lorg/apache/poi/java/awt/Insets;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public isVerticallyResizable()Z
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/GridBagConstraints;->fill:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
