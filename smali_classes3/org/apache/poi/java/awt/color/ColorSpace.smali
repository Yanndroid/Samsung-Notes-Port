.class public abstract Lorg/apache/poi/java/awt/color/ColorSpace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CS_CIEXYZ:I = 0x3e9

.field public static final CS_GRAY:I = 0x3eb

.field public static final CS_LINEAR_RGB:I = 0x3ec

.field public static final CS_PYCC:I = 0x3ea

.field public static final CS_sRGB:I = 0x3e8

.field private static GRAYspace:Lorg/apache/poi/java/awt/color/ColorSpace; = null

.field private static LINEAR_RGBspace:Lorg/apache/poi/java/awt/color/ColorSpace; = null

.field private static PYCCspace:Lorg/apache/poi/java/awt/color/ColorSpace; = null

.field public static final TYPE_2CLR:I = 0xc

.field public static final TYPE_3CLR:I = 0xd

.field public static final TYPE_4CLR:I = 0xe

.field public static final TYPE_5CLR:I = 0xf

.field public static final TYPE_6CLR:I = 0x10

.field public static final TYPE_7CLR:I = 0x11

.field public static final TYPE_8CLR:I = 0x12

.field public static final TYPE_9CLR:I = 0x13

.field public static final TYPE_ACLR:I = 0x14

.field public static final TYPE_BCLR:I = 0x15

.field public static final TYPE_CCLR:I = 0x16

.field public static final TYPE_CMY:I = 0xb

.field public static final TYPE_CMYK:I = 0x9

.field public static final TYPE_DCLR:I = 0x17

.field public static final TYPE_ECLR:I = 0x18

.field public static final TYPE_FCLR:I = 0x19

.field public static final TYPE_GRAY:I = 0x6

.field public static final TYPE_HLS:I = 0x8

.field public static final TYPE_HSV:I = 0x7

.field public static final TYPE_Lab:I = 0x1

.field public static final TYPE_Luv:I = 0x2

.field public static final TYPE_RGB:I = 0x5

.field public static final TYPE_XYZ:I = 0x0

.field public static final TYPE_YCbCr:I = 0x3

.field public static final TYPE_Yxy:I = 0x4

.field private static XYZspace:Lorg/apache/poi/java/awt/color/ColorSpace; = null

.field private static sRGBspace:Lorg/apache/poi/java/awt/color/ColorSpace; = null

.field public static final serialVersionUID:J = -0x5aeab10b0a47b3cL


# instance fields
.field private transient compName:[Ljava/lang/String;

.field private numComponents:I

.field private type:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->compName:[Ljava/lang/String;

    iput p1, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->type:I

    iput p2, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->numComponents:I

    return-void
.end method

.method public static getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown color space"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-class p0, Lorg/apache/poi/java/awt/color/ColorSpace;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/poi/java/awt/color/ColorSpace;->LINEAR_RGBspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    if-nez v0, :cond_0

    const/16 v0, 0x3ec

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getInstance(I)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;-><init>(Lorg/apache/poi/java/awt/color/ICC_Profile;)V

    sput-object v1, Lorg/apache/poi/java/awt/color/ColorSpace;->LINEAR_RGBspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    sput-object v1, Lorg/apache/poi/sun/java2d/cmm/CMSManager;->LINEAR_RGBspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/color/ColorSpace;->LINEAR_RGBspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    const-class p0, Lorg/apache/poi/java/awt/color/ColorSpace;

    monitor-enter p0

    :try_start_1
    sget-object v0, Lorg/apache/poi/java/awt/color/ColorSpace;->GRAYspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    if-nez v0, :cond_1

    const/16 v0, 0x3eb

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getInstance(I)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;-><init>(Lorg/apache/poi/java/awt/color/ICC_Profile;)V

    sput-object v1, Lorg/apache/poi/java/awt/color/ColorSpace;->GRAYspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    sput-object v1, Lorg/apache/poi/sun/java2d/cmm/CMSManager;->GRAYspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    :cond_1
    sget-object v0, Lorg/apache/poi/java/awt/color/ColorSpace;->GRAYspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_2
    const-class p0, Lorg/apache/poi/java/awt/color/ColorSpace;

    monitor-enter p0

    :try_start_2
    sget-object v0, Lorg/apache/poi/java/awt/color/ColorSpace;->PYCCspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    if-nez v0, :cond_2

    const/16 v0, 0x3ea

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getInstance(I)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;-><init>(Lorg/apache/poi/java/awt/color/ICC_Profile;)V

    sput-object v1, Lorg/apache/poi/java/awt/color/ColorSpace;->PYCCspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    :cond_2
    sget-object v0, Lorg/apache/poi/java/awt/color/ColorSpace;->PYCCspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :pswitch_3
    const-class p0, Lorg/apache/poi/java/awt/color/ColorSpace;

    monitor-enter p0

    :try_start_3
    sget-object v0, Lorg/apache/poi/java/awt/color/ColorSpace;->XYZspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    if-nez v0, :cond_3

    const/16 v0, 0x3e9

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getInstance(I)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;-><init>(Lorg/apache/poi/java/awt/color/ICC_Profile;)V

    sput-object v1, Lorg/apache/poi/java/awt/color/ColorSpace;->XYZspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    :cond_3
    sget-object v0, Lorg/apache/poi/java/awt/color/ColorSpace;->XYZspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    monitor-exit p0

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :pswitch_4
    const-class p0, Lorg/apache/poi/java/awt/color/ColorSpace;

    monitor-enter p0

    :try_start_4
    sget-object v0, Lorg/apache/poi/java/awt/color/ColorSpace;->sRGBspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    if-nez v0, :cond_4

    const/16 v0, 0x3e8

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getInstance(I)Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;-><init>(Lorg/apache/poi/java/awt/color/ICC_Profile;)V

    sput-object v1, Lorg/apache/poi/java/awt/color/ColorSpace;->sRGBspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    :cond_4
    sget-object v0, Lorg/apache/poi/java/awt/color/ColorSpace;->sRGBspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    monitor-exit p0

    :goto_0
    return-object v0

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isCS_CIEXYZ(Lorg/apache/poi/java/awt/color/ColorSpace;)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/color/ColorSpace;->XYZspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract fromCIEXYZ([F)[F
.end method

.method public abstract fromRGB([F)[F
.end method

.method public getMaxValue(I)F
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->numComponents:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component index out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMinValue(I)F
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->numComponents:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component index out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 9

    if-ltz p1, :cond_2

    iget v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->numComponents:I

    add-int/lit8 v1, v0, -0x1

    if-gt p1, v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->compName:[Ljava/lang/String;

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->type:I

    const-string v2, "Yellow"

    const-string v3, "Magenta"

    const-string v4, "Cyan"

    const-string v5, "Saturation"

    const-string v6, "Hue"

    const-string v7, "L"

    const-string v8, "Y"

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    goto/16 :goto_0

    :pswitch_1
    filled-new-array {v4, v3, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->compName:[Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "Black"

    filled-new-array {v4, v3, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->compName:[Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "Lightness"

    filled-new-array {v6, v0, v5}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->compName:[Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "Value"

    filled-new-array {v6, v5, v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->compName:[Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "Gray"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->compName:[Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    const-string v0, "Red"

    const-string v1, "Green"

    const-string v2, "Blue"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->compName:[Ljava/lang/String;

    goto :goto_1

    :pswitch_7
    const-string/jumbo v0, "x"

    const-string/jumbo v1, "y"

    filled-new-array {v8, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->compName:[Ljava/lang/String;

    goto :goto_1

    :pswitch_8
    const-string v0, "Cb"

    const-string v1, "Cr"

    filled-new-array {v8, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->compName:[Ljava/lang/String;

    goto :goto_1

    :pswitch_9
    const-string/jumbo v0, "u"

    const-string/jumbo v1, "v"

    filled-new-array {v7, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->compName:[Ljava/lang/String;

    goto :goto_1

    :pswitch_a
    const-string v0, "a"

    const-string v1, "b"

    filled-new-array {v7, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->compName:[Ljava/lang/String;

    goto :goto_1

    :pswitch_b
    const-string v0, "X"

    const-string v1, "Z"

    filled-new-array {v0, v8, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->compName:[Ljava/lang/String;

    goto :goto_1

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unnamed color component("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->compName:[Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->compName:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component index out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getNumComponents()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->numComponents:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/color/ColorSpace;->type:I

    return v0
.end method

.method public isCS_sRGB()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/color/ColorSpace;->sRGBspace:Lorg/apache/poi/java/awt/color/ColorSpace;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract toCIEXYZ([F)[F
.end method

.method public abstract toRGB([F)[F
.end method
