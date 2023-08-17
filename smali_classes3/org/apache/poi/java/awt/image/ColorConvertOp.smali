.class public Lorg/apache/poi/java/awt/image/ColorConvertOp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/image/BufferedImageOp;
.implements Lorg/apache/poi/java/awt/image/RasterOp;


# instance fields
.field public CSList:[Lorg/apache/poi/java/awt/color/ColorSpace;

.field public dstMaxVals:[F

.field public dstMinVals:[F

.field public gotProfiles:Z

.field public hints:Lorg/apache/poi/java/awt/RenderingHints;

.field public profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

.field public srcMaxVals:[F

.field public srcMinVals:[F

.field public thisDestProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

.field public thisRasterTransform:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

.field public thisSrcProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

.field public thisTransform:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->deferring:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralMgr;->activateProfiles()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/RenderingHints;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/java/awt/color/ICC_Profile;

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->hints:Lorg/apache/poi/java/awt/RenderingHints;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/color/ColorSpace;Lorg/apache/poi/java/awt/RenderingHints;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ColorSpace cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Lorg/apache/poi/java/awt/color/ICC_Profile;

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    check-cast p1, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->getProfile()Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    new-array v0, v2, [Lorg/apache/poi/java/awt/color/ColorSpace;

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->CSList:[Lorg/apache/poi/java/awt/color/ColorSpace;

    aput-object p1, v0, v1

    :goto_0
    iput-object p2, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->hints:Lorg/apache/poi/java/awt/RenderingHints;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/color/ColorSpace;Lorg/apache/poi/java/awt/color/ColorSpace;Lorg/apache/poi/java/awt/RenderingHints;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    instance-of v0, p1, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    if-eqz v0, :cond_0

    new-array v0, v3, [Lorg/apache/poi/java/awt/color/ICC_Profile;

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-object v3, p1

    check-cast v3, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->getProfile()Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-object v2, p2

    check-cast v2, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->getProfile()Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->getMinMaxValsFromColorSpaces(Lorg/apache/poi/java/awt/color/ColorSpace;Lorg/apache/poi/java/awt/color/ColorSpace;)V

    goto :goto_0

    :cond_0
    new-array v0, v3, [Lorg/apache/poi/java/awt/color/ColorSpace;

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->CSList:[Lorg/apache/poi/java/awt/color/ColorSpace;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    :goto_0
    iput-object p3, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->hints:Lorg/apache/poi/java/awt/RenderingHints;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ColorSpaces cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lorg/apache/poi/java/awt/color/ICC_Profile;Lorg/apache/poi/java/awt/RenderingHints;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Profiles cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->gotProfiles:Z

    array-length v0, p1

    new-array v0, v0, [Lorg/apache/poi/java/awt/color/ICC_Profile;

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->hints:Lorg/apache/poi/java/awt/RenderingHints;

    return-void
.end method

.method private final ICCBIFilter(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/color/ColorSpace;Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/color/ColorSpace;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    array-length v0, v0

    check-cast p2, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->getProfile()Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p3, :cond_1

    if-eqz v0, :cond_0

    iget-object p3, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    add-int/lit8 p4, v0, -0x1

    aget-object p3, p3, p4

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->createCompatibleDestImage(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/image/ColorModel;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p4

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Destination ColorSpace is undefined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_7

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_7

    check-cast p4, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-virtual {p4}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->getProfile()Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object p4

    move-object v5, p4

    move-object p4, p3

    move-object p3, v5

    :goto_0
    if-ne p2, p3, :cond_4

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    aget-object v4, v4, v3

    if-eq p2, v4, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lorg/apache/poi/java/awt/image/BufferedImage;->createGraphics()Lorg/apache/poi/java/awt/Graphics2D;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2, p1, v2, v2, v1}, Lorg/apache/poi/java/awt/Graphics;->drawImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Graphics;->dispose()V

    return-object p4

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Graphics;->dispose()V

    throw p1

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->thisTransform:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->thisSrcProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    if-ne v0, p2, :cond_5

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->thisDestProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    if-eq v0, p3, :cond_6

    :cond_5
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->updateBITransform(Lorg/apache/poi/java/awt/color/ICC_Profile;Lorg/apache/poi/java/awt/color/ICC_Profile;)V

    :cond_6
    iget-object p2, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->thisTransform:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    invoke-interface {p2, p1, p4}, Lorg/apache/poi/sun/java2d/cmm/ColorTransform;->colorConvert(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/image/BufferedImage;)V

    return-object p4

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width or height of BufferedImages do not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createCompatibleDestImage(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/color/ColorSpace;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 8

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object p2

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-array v3, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const/16 v2, 0x8

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/java/awt/image/ComponentColorModel;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v5

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/ColorModel;->getTransparency()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/java/awt/image/ComponentColorModel;-><init>(Lorg/apache/poi/java/awt/color/ColorSpace;[IZZII)V

    move-object p2, v0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result p1

    new-instance v0, Lorg/apache/poi/java/awt/image/BufferedImage;

    invoke-virtual {p2, p3, p1}, Lorg/apache/poi/java/awt/image/ColorModel;->createCompatibleWritableRaster(II)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result p3

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, p3, v1}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v0
.end method

.method private getMinMaxValsFromColorSpaces(Lorg/apache/poi/java/awt/color/ColorSpace;Lorg/apache/poi/java/awt/color/ColorSpace;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->srcMinVals:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->srcMaxVals:[F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->srcMinVals:[F

    invoke-virtual {p1, v2}, Lorg/apache/poi/java/awt/color/ColorSpace;->getMinValue(I)F

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->srcMaxVals:[F

    invoke-virtual {p1, v2}, Lorg/apache/poi/java/awt/color/ColorSpace;->getMaxValue(I)F

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result p1

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->dstMinVals:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->dstMaxVals:[F

    :goto_1
    if-ge v1, p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->dstMinVals:[F

    invoke-virtual {p2, v1}, Lorg/apache/poi/java/awt/color/ColorSpace;->getMinValue(I)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->dstMaxVals:[F

    invoke-virtual {p2, v1}, Lorg/apache/poi/java/awt/color/ColorSpace;->getMaxValue(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getMinMaxValsFromProfiles(Lorg/apache/poi/java/awt/color/ICC_Profile;Lorg/apache/poi/java/awt/color/ICC_Profile;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getNumComponents()I

    move-result p1

    new-array v1, p1, [F

    iput-object v1, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->srcMinVals:[F

    new-array v2, p1, [F

    iput-object v2, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->srcMaxVals:[F

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->setMinMax(II[F[F)V

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result p1

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getNumComponents()I

    move-result p2

    new-array v0, p2, [F

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->dstMinVals:[F

    new-array v1, p2, [F

    iput-object v1, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->dstMaxVals:[F

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->setMinMax(II[F[F)V

    return-void
.end method

.method private getRenderingIntent(Lorg/apache/poi/java/awt/color/ICC_Profile;)I
    .locals 2

    const v0, 0x68656164

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getData(I)[B

    move-result-object p1

    const/16 v0, 0x40

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/16 v1, 0x41

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/16 v1, 0x42

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/16 v1, 0x43

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private final nonICCBIFilter(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/color/ColorSpace;Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/color/ColorSpace;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result v3

    const/16 v4, 0x3e9

    invoke-static {v4}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    const/4 v5, 0x0

    move-object/from16 v6, p1

    if-nez p3, :cond_0

    invoke-virtual {v0, v6, v5}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->createCompatibleDestImage(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/image/ColorModel;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/java/awt/image/ColorModel;->getColorSpace()Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/image/BufferedImage;->getHeight()I

    move-result v7

    if-ne v3, v7, :cond_22

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/image/BufferedImage;->getWidth()I

    move-result v7

    if-ne v2, v7, :cond_22

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getRaster()Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v9

    invoke-virtual {v7}, Lorg/apache/poi/java/awt/image/BufferedImage;->getRaster()Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v6

    invoke-virtual {v7}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v11

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/ColorModel;->getNumColorComponents()I

    move-result v12

    invoke-virtual {v11}, Lorg/apache/poi/java/awt/image/ColorModel;->getNumColorComponents()I

    move-result v13

    invoke-virtual {v11}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result v14

    invoke-virtual {v6}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result v15

    const/16 v16, 0x1

    if-eqz v15, :cond_1

    if-eqz v14, :cond_1

    move/from16 v15, v16

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    iget-object v5, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->CSList:[Lorg/apache/poi/java/awt/color/ColorSpace;

    const/high16 v18, 0x3f800000    # 1.0f

    if-nez v5, :cond_19

    move-object/from16 p3, v7

    iget-object v7, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    array-length v7, v7

    if-eqz v7, :cond_18

    instance-of v5, v1, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->getProfile()Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v5

    move-object v7, v5

    move-object/from16 p4, v10

    move/from16 v5, v16

    goto :goto_2

    :cond_2
    move-object v5, v1

    check-cast v5, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->getProfile()Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v5

    move-object v7, v5

    move-object/from16 p4, v10

    const/4 v5, 0x0

    :goto_2
    instance-of v10, v8, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    if-nez v10, :cond_3

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->getProfile()Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v10

    move-object/from16 v19, v4

    goto :goto_3

    :cond_3
    move-object v10, v8

    check-cast v10, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-virtual {v10}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->getProfile()Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v10

    move-object/from16 v19, v4

    const/16 v16, 0x0

    :goto_3
    iget-object v4, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->thisTransform:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->thisSrcProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    if-ne v4, v7, :cond_4

    iget-object v4, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->thisDestProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    if-eq v4, v10, :cond_5

    :cond_4
    invoke-direct {v0, v7, v10}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->updateBITransform(Lorg/apache/poi/java/awt/color/ICC_Profile;Lorg/apache/poi/java/awt/color/ICC_Profile;)V

    :cond_5
    if-eqz v5, :cond_6

    move-object/from16 v7, v19

    const/4 v10, 0x3

    goto :goto_4

    :cond_6
    move-object v7, v1

    move v10, v12

    :goto_4
    new-array v4, v10, [F

    move-object/from16 v22, v8

    new-array v8, v10, [F

    move-object/from16 v23, v11

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v12, :cond_7

    invoke-virtual {v7, v11}, Lorg/apache/poi/java/awt/color/ColorSpace;->getMinValue(I)F

    move-result v24

    aput v24, v4, v11

    invoke-virtual {v7, v11}, Lorg/apache/poi/java/awt/color/ColorSpace;->getMaxValue(I)F

    move-result v24

    aget v25, v4, v11

    sub-float v24, v24, v25

    const v21, 0x477fff00    # 65535.0f

    div-float v24, v21, v24

    aput v24, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    if-eqz v16, :cond_8

    move-object/from16 v7, v19

    const/4 v11, 0x3

    goto :goto_6

    :cond_8
    move v11, v13

    move-object/from16 v7, v22

    :goto_6
    new-array v0, v11, [F

    move-object/from16 v19, v8

    new-array v8, v11, [F

    move-object/from16 v24, v4

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v13, :cond_9

    invoke-virtual {v7, v4}, Lorg/apache/poi/java/awt/color/ColorSpace;->getMinValue(I)F

    move-result v22

    aput v22, v0, v4

    invoke-virtual {v7, v4}, Lorg/apache/poi/java/awt/color/ColorSpace;->getMaxValue(I)F

    move-result v22

    aget v25, v0, v4

    sub-float v22, v22, v25

    const v21, 0x477fff00    # 65535.0f

    div-float v22, v22, v21

    aput v22, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    if-eqz v14, :cond_a

    add-int/lit8 v4, v13, 0x1

    const/4 v7, 0x3

    if-le v4, v7, :cond_b

    move v7, v4

    goto :goto_8

    :cond_a
    const/4 v7, 0x3

    if-le v13, v7, :cond_b

    move v7, v13

    :cond_b
    :goto_8
    new-array v4, v7, [F

    mul-int v7, v2, v10

    new-array v7, v7, [S

    move-object/from16 v20, v0

    mul-int v0, v2, v11

    new-array v0, v0, [S

    move/from16 v21, v14

    if-eqz v15, :cond_c

    new-array v14, v2, [F

    goto :goto_9

    :cond_c
    const/4 v14, 0x0

    :goto_9
    move/from16 v25, v13

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v3, :cond_17

    move/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v22, 0x0

    :goto_b
    if-ge v3, v2, :cond_10

    invoke-virtual {v9, v3, v13, v4}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v29, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v4, v8, v9}, Lorg/apache/poi/java/awt/image/ColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object v8

    if-eqz v15, :cond_d

    aget v9, v8, v12

    aput v9, v14, v3

    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {v1, v8}, Lorg/apache/poi/java/awt/color/ColorSpace;->toCIEXYZ([F)[F

    move-result-object v8

    :cond_e
    const/4 v9, 0x0

    :goto_c
    if-ge v9, v10, :cond_f

    add-int/lit8 v30, v22, 0x1

    aget v31, v8, v9

    aget v32, v24, v9

    sub-float v31, v31, v32

    aget v32, v19, v9

    mul-float v31, v31, v32

    const/high16 v32, 0x3f000000    # 0.5f

    move-object/from16 v33, v4

    add-float v4, v31, v32

    float-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, v7, v22

    add-int/lit8 v9, v9, 0x1

    move/from16 v22, v30

    move-object/from16 v4, v33

    goto :goto_c

    :cond_f
    move-object/from16 v33, v4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v9, v29

    goto :goto_b

    :cond_10
    move-object/from16 v3, p0

    move-object/from16 v29, v9

    move-object/from16 v4, v20

    iget-object v8, v3, Lorg/apache/poi/java/awt/image/ColorConvertOp;->thisTransform:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    invoke-interface {v8, v7, v0}, Lorg/apache/poi/sun/java2d/cmm/ColorTransform;->colorConvert([S[S)[S

    move/from16 v20, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_d
    if-ge v8, v2, :cond_16

    move/from16 v22, v9

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v11, :cond_11

    add-int/lit8 v30, v22, 0x1

    aget-short v22, v0, v22

    const v31, 0xffff

    move-object/from16 v32, v0

    and-int v0, v22, v31

    int-to-float v0, v0

    aget v22, v28, v9

    mul-float v0, v0, v22

    aget v22, v4, v9

    add-float v0, v0, v22

    aput v0, v27, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v22, v30

    move-object/from16 v0, v32

    goto :goto_e

    :cond_11
    move-object/from16 v32, v0

    move-object/from16 v0, v27

    if-eqz v16, :cond_12

    invoke-virtual {v1, v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->fromCIEXYZ([F)[F

    move-result-object v9

    move-object/from16 v27, v4

    const/4 v4, 0x0

    move/from16 v34, v25

    move-object/from16 v25, v7

    move/from16 v7, v34

    :goto_f
    if-ge v4, v7, :cond_13

    aget v30, v9, v4

    aput v30, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_12
    move-object/from16 v27, v4

    move/from16 v34, v25

    move-object/from16 v25, v7

    move/from16 v7, v34

    :cond_13
    if-eqz v15, :cond_14

    aget v4, v14, v8

    aput v4, v0, v7

    goto :goto_10

    :cond_14
    if-eqz v21, :cond_15

    aput v18, v0, v7

    :cond_15
    :goto_10
    move-object/from16 v4, v23

    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v5}, Lorg/apache/poi/java/awt/image/ColorModel;->getDataElements([FILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v9, p4

    invoke-virtual {v9, v8, v13, v5}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v23, v4

    move/from16 v9, v22

    move-object/from16 v4, v27

    move-object/from16 v27, v0

    move-object/from16 v0, v32

    move-object/from16 v34, v25

    move/from16 v25, v7

    move-object/from16 v7, v34

    goto :goto_d

    :cond_16
    move-object/from16 v9, p4

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v27, v4

    move-object/from16 v4, v23

    move/from16 v34, v25

    move-object/from16 v25, v7

    move/from16 v7, v34

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v20

    move/from16 v3, v26

    move-object/from16 v20, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    move-object v4, v0

    move-object/from16 v0, v32

    move-object/from16 v34, v25

    move/from16 v25, v7

    move-object/from16 v7, v34

    goto/16 :goto_a

    :cond_17
    move-object/from16 v3, p0

    goto/16 :goto_19

    :cond_18
    move/from16 v26, v3

    goto :goto_11

    :cond_19
    move/from16 v26, v3

    move-object/from16 p3, v7

    :goto_11
    move-object/from16 v22, v8

    move-object/from16 v29, v9

    move-object v9, v10

    move-object v4, v11

    move v7, v13

    move/from16 v21, v14

    move-object v3, v0

    if-nez v5, :cond_1a

    const/4 v0, 0x0

    goto :goto_12

    :cond_1a
    array-length v0, v5

    :goto_12
    if-eqz v21, :cond_1b

    add-int/lit8 v13, v7, 0x1

    new-array v5, v13, [F

    goto :goto_13

    :cond_1b
    new-array v5, v7, [F

    :goto_13
    move/from16 v13, v26

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    :goto_14
    if-ge v11, v13, :cond_21

    move-object v14, v10

    move/from16 v26, v13

    move-object/from16 v13, v17

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v2, :cond_20

    move/from16 v16, v2

    move-object/from16 v2, v29

    invoke-virtual {v2, v10, v11, v13}, Lorg/apache/poi/java/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/4 v2, 0x0

    invoke-virtual {v6, v13, v8, v2}, Lorg/apache/poi/java/awt/image/ColorModel;->getNormalizedComponents(Ljava/lang/Object;[FI)[F

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/poi/java/awt/color/ColorSpace;->toCIEXYZ([F)[F

    move-result-object v2

    const/4 v1, 0x0

    :goto_16
    move/from16 v17, v0

    if-ge v1, v0, :cond_1c

    iget-object v0, v3, Lorg/apache/poi/java/awt/image/ColorConvertOp;->CSList:[Lorg/apache/poi/java/awt/color/ColorSpace;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lorg/apache/poi/java/awt/color/ColorSpace;->fromCIEXYZ([F)[F

    move-result-object v0

    iget-object v2, v3, Lorg/apache/poi/java/awt/image/ColorConvertOp;->CSList:[Lorg/apache/poi/java/awt/color/ColorSpace;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->toCIEXYZ([F)[F

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v17

    goto :goto_16

    :cond_1c
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/apache/poi/java/awt/color/ColorSpace;->fromCIEXYZ([F)[F

    move-result-object v1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v7, :cond_1d

    aget v19, v1, v2

    aput v19, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_1d
    if-eqz v15, :cond_1e

    aget v1, v8, v12

    aput v1, v5, v7

    goto :goto_18

    :cond_1e
    if-eqz v21, :cond_1f

    aput v18, v5, v7

    :cond_1f
    :goto_18
    const/4 v1, 0x0

    invoke-virtual {v4, v5, v1, v14}, Lorg/apache/poi/java/awt/image/ColorModel;->getDataElements([FILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v9, v10, v11, v14}, Lorg/apache/poi/java/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p2

    move-object/from16 v22, v0

    move/from16 v2, v16

    move/from16 v0, v17

    goto :goto_15

    :cond_20
    move/from16 v17, v0

    move/from16 v16, v2

    move-object/from16 v0, v22

    const/4 v1, 0x0

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p2

    move-object v10, v14

    move/from16 v0, v17

    move-object/from16 v17, v13

    move/from16 v13, v26

    goto :goto_14

    :cond_21
    :goto_19
    return-object p3

    :cond_22
    move-object v3, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width or height of BufferedImages do not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final nonICCRasterFilter(Lorg/apache/poi/java/awt/image/Raster;Lorg/apache/poi/java/awt/image/WritableRaster;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->CSList:[Lorg/apache/poi/java/awt/color/ColorSpace;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getNumBands()I

    move-result v1

    iget-object v3, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->CSList:[Lorg/apache/poi/java/awt/color/ColorSpace;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v3

    if-ne v1, v3, :cond_14

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->createCompatibleDestRaster(Lorg/apache/poi/java/awt/image/Raster;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v5

    if-ne v3, v5, :cond_13

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v5

    if-ne v3, v5, :cond_13

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/java/awt/image/Raster;->getNumBands()I

    move-result v3

    iget-object v5, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->CSList:[Lorg/apache/poi/java/awt/color/ColorSpace;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v5

    if-ne v3, v5, :cond_12

    move-object/from16 v3, p2

    :goto_0
    iget-object v5, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->srcMinVals:[F

    if-nez v5, :cond_1

    iget-object v5, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->CSList:[Lorg/apache/poi/java/awt/color/ColorSpace;

    aget-object v6, v5, v4

    aget-object v5, v5, v1

    invoke-direct {v0, v6, v5}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->getMinMaxValsFromColorSpaces(Lorg/apache/poi/java/awt/color/ColorSpace;Lorg/apache/poi/java/awt/color/ColorSpace;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/Raster;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getTransferType()I

    move-result v7

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/Raster;->getTransferType()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x4

    if-eq v7, v10, :cond_3

    if-ne v7, v9, :cond_2

    goto :goto_1

    :cond_2
    move v11, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v11, v1

    :goto_2
    if-eq v8, v10, :cond_5

    if-ne v8, v9, :cond_4

    goto :goto_3

    :cond_4
    move v9, v4

    goto :goto_4

    :cond_5
    :goto_3
    move v9, v1

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getNumBands()I

    move-result v13

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/Raster;->getNumBands()I

    move-result v14

    const/16 v16, 0x0

    if-nez v11, :cond_7

    new-array v4, v13, [F

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v13, :cond_8

    if-ne v7, v2, :cond_6

    iget-object v2, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->srcMaxVals:[F

    aget v2, v2, v1

    iget-object v15, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->srcMinVals:[F

    aget v15, v15, v1

    sub-float/2addr v2, v15

    const v15, 0x46fffe00    # 32767.0f

    div-float/2addr v2, v15

    aput v2, v4, v1

    goto :goto_6

    :cond_6
    iget-object v2, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->srcMaxVals:[F

    aget v2, v2, v1

    iget-object v15, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->srcMinVals:[F

    aget v15, v15, v1

    sub-float/2addr v2, v15

    invoke-virtual {v5, v1}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize(I)I

    move-result v15

    const/16 v18, 0x1

    shl-int v15, v18, v15

    add-int/lit8 v15, v15, -0x1

    int-to-float v15, v15

    div-float/2addr v2, v15

    aput v2, v4, v1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    goto :goto_5

    :cond_7
    move-object/from16 v4, v16

    :cond_8
    if-nez v9, :cond_b

    new-array v1, v14, [F

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v14, :cond_a

    const/4 v5, 0x2

    if-ne v8, v5, :cond_9

    iget-object v7, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->dstMaxVals:[F

    aget v7, v7, v2

    iget-object v15, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->dstMinVals:[F

    aget v15, v15, v2

    sub-float/2addr v7, v15

    const v15, 0x46fffe00    # 32767.0f

    div-float v7, v15, v7

    aput v7, v1, v2

    goto :goto_8

    :cond_9
    const v15, 0x46fffe00    # 32767.0f

    invoke-virtual {v6, v2}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize(I)I

    move-result v7

    const/16 v16, 0x1

    shl-int v7, v16, v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    iget-object v5, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->dstMaxVals:[F

    aget v5, v5, v2

    iget-object v15, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->dstMinVals:[F

    aget v15, v15, v2

    sub-float/2addr v5, v15

    div-float/2addr v7, v5

    aput v7, v1, v2

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v16, v1

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v1

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result v2

    new-array v5, v13, [F

    iget-object v6, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->CSList:[Lorg/apache/poi/java/awt/color/ColorSpace;

    const/4 v7, 0x0

    aget-object v8, v6, v7

    const/4 v15, 0x1

    aget-object v6, v6, v15

    move v15, v7

    :goto_9
    if-ge v15, v12, :cond_11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v17

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v18

    move/from16 v24, v15

    move v15, v7

    move/from16 v7, v17

    move/from16 v17, v12

    move/from16 v12, v18

    move/from16 v18, v24

    :goto_a
    if-ge v15, v10, :cond_10

    move/from16 v19, v10

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v13, :cond_d

    move/from16 v20, v13

    move-object/from16 v13, p1

    invoke-virtual {v13, v7, v1, v10}, Lorg/apache/poi/java/awt/image/Raster;->getSampleFloat(III)F

    move-result v21

    if-nez v11, :cond_c

    aget v22, v4, v10

    mul-float v21, v21, v22

    move-object/from16 v22, v4

    iget-object v4, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->srcMinVals:[F

    aget v4, v4, v10

    add-float v21, v21, v4

    goto :goto_c

    :cond_c
    move-object/from16 v22, v4

    :goto_c
    aput v21, v5, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v20

    move-object/from16 v4, v22

    goto :goto_b

    :cond_d
    move-object/from16 v22, v4

    move/from16 v20, v13

    move-object/from16 v13, p1

    invoke-virtual {v8, v5}, Lorg/apache/poi/java/awt/color/ColorSpace;->toCIEXYZ([F)[F

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/apache/poi/java/awt/color/ColorSpace;->fromCIEXYZ([F)[F

    move-result-object v4

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v14, :cond_f

    aget v21, v4, v10

    move-object/from16 v23, v4

    if-nez v9, :cond_e

    iget-object v4, v0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->dstMinVals:[F

    aget v4, v4, v10

    sub-float v21, v21, v4

    aget v4, v16, v10

    mul-float v21, v21, v4

    :cond_e
    move/from16 v4, v21

    invoke-virtual {v3, v12, v2, v10, v4}, Lorg/apache/poi/java/awt/image/WritableRaster;->setSample(IIIF)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v23

    goto :goto_d

    :cond_f
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v19

    move/from16 v13, v20

    move-object/from16 v4, v22

    goto :goto_a

    :cond_10
    move-object/from16 v22, v4

    move/from16 v19, v10

    move/from16 v20, v13

    move-object/from16 v13, p1

    add-int/lit8 v15, v18, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    move/from16 v12, v17

    move/from16 v13, v20

    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_11
    return-object v3

    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Numbers of destination Raster bands and destination color space components do not match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Width or height of Rasters do not match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Numbers of source Raster bands and source color space components do not match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Destination ColorSpace is undefined"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setMinMax(II[F[F)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    aput v0, p3, v2

    const/high16 p1, 0x42c80000    # 100.0f

    aput p1, p4, v2

    const/high16 p1, -0x3d000000    # -128.0f

    aput p1, p3, v3

    const/high16 p2, 0x42fe0000    # 127.0f

    aput p2, p4, v3

    aput p1, p3, v1

    aput p2, p4, v1

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    aput v0, p3, v1

    aput v0, p3, v3

    aput v0, p3, v2

    const p1, 0x3fffff00    # 1.9999695f

    aput p1, p4, v1

    aput p1, p4, v3

    aput p1, p4, v2

    goto :goto_1

    :cond_1
    :goto_0
    if-ge v2, p2, :cond_2

    aput v0, p3, v2

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, p4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private updateBITransform(Lorg/apache/poi/java/awt/color/ICC_Profile;Lorg/apache/poi/java/awt/color/ICC_Profile;)V
    .locals 13

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    aget-object v4, v0, v2

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 v4, v1, 0x1

    move v5, v3

    :goto_1
    const/4 v6, 0x2

    if-eqz v1, :cond_3

    add-int/lit8 v7, v1, -0x1

    aget-object v0, v0, v7

    if-ne p2, v0, :cond_3

    if-ge v4, v6, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v0, v3

    :goto_3
    new-array v7, v4, [Lorg/apache/poi/java/awt/color/ICC_Profile;

    if-eqz v5, :cond_4

    aput-object p1, v7, v2

    move v5, v3

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    move v8, v2

    :goto_5
    if-ge v8, v1, :cond_5

    add-int/lit8 v9, v5, 0x1

    iget-object v10, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    aget-object v10, v10, v8

    aput-object v10, v7, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    aput-object p2, v7, v5

    :cond_6
    new-array v0, v4, [Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    aget-object v1, v7, v2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getProfileClass()I

    move-result v1

    if-ne v1, v6, :cond_7

    move v1, v3

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/CMSManager;->getModule()Lorg/apache/poi/sun/java2d/cmm/PCMM;

    move-result-object v5

    const/4 v8, 0x4

    move v9, v2

    move v10, v3

    :goto_7
    if-ge v9, v4, :cond_a

    add-int/lit8 v11, v4, -0x1

    if-ne v9, v11, :cond_8

    move v10, v6

    goto :goto_8

    :cond_8
    if-ne v10, v8, :cond_9

    aget-object v11, v7, v9

    invoke-virtual {v11}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getProfileClass()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_9

    move v1, v2

    move v10, v3

    :cond_9
    :goto_8
    aget-object v11, v7, v9

    invoke-interface {v5, v11, v1, v10}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform(Lorg/apache/poi/java/awt/color/ICC_Profile;II)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v1

    aput-object v1, v0, v9

    aget-object v1, v7, v9

    invoke-direct {p0, v1}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->getRenderingIntent(Lorg/apache/poi/java/awt/color/ICC_Profile;)I

    move-result v1

    add-int/lit8 v9, v9, 0x1

    move v10, v8

    goto :goto_7

    :cond_a
    invoke-interface {v5, v0}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform([Lorg/apache/poi/sun/java2d/cmm/ColorTransform;)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->thisTransform:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    iput-object p1, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->thisSrcProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    iput-object p2, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->thisDestProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    return-void
.end method


# virtual methods
.method public createCompatibleDestImage(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/image/ColorModel;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 2

    if-nez p2, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->CSList:[Lorg/apache/poi/java/awt/color/ColorSpace;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    array-length v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    new-instance v1, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-direct {v1, v0}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;-><init>(Lorg/apache/poi/java/awt/color/ICC_Profile;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Destination ColorSpace is undefined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->createCompatibleDestImage(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/color/ColorSpace;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public createCompatibleDestRaster(Lorg/apache/poi/java/awt/image/Raster;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->CSList:[Lorg/apache/poi/java/awt/color/ColorSpace;

    const-string v1, "Destination ColorSpace is undefined"

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    array-length v4, v0

    if-ne v4, v3, :cond_0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    array-length v4, v0

    if-lt v4, v3, :cond_2

    sub-int/2addr v4, v2

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getNumComponents()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v3

    new-instance v4, Lorg/apache/poi/java/awt/Point;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinX()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getMinY()I

    move-result p1

    invoke-direct {v4, v5, p1}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    invoke-static {v1, v2, v3, v0, v4}, Lorg/apache/poi/java/awt/image/Raster;->createInterleavedRaster(IIIILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final filter(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/image/BufferedImage;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/poi/java/awt/image/IndexColorModel;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/image/IndexColorModel;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getRaster()Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/java/awt/image/IndexColorModel;->convertToIntDiscrete(Lorg/apache/poi/java/awt/image/Raster;Z)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getColorSpace()Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/poi/java/awt/image/IndexColorModel;

    if-eqz v2, :cond_1

    move-object v2, p2

    move-object p2, v1

    move-object v3, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/BufferedImage;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/ColorModel;->getColorSpace()Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v2

    move-object v3, v2

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v2, v1

    move-object v3, v2

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->CSList:[Lorg/apache/poi/java/awt/color/ColorSpace;

    if-nez v4, :cond_4

    instance-of v4, v0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    if-eqz v4, :cond_4

    if-eqz p2, :cond_3

    instance-of v4, v3, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v0, p2, v3}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->ICCBIFilter(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/color/ColorSpace;Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/color/ColorSpace;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0, p1, v0, p2, v3}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->nonICCBIFilter(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/color/ColorSpace;Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/color/ColorSpace;)Lorg/apache/poi/java/awt/image/BufferedImage;

    move-result-object p1

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/BufferedImage;->createGraphics()Lorg/apache/poi/java/awt/Graphics2D;

    move-result-object p2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p1, v0, v0, v1}, Lorg/apache/poi/java/awt/Graphics;->drawImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Graphics;->dispose()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/Graphics;->dispose()V

    throw p1

    :cond_5
    return-object p1
.end method

.method public final filter(Lorg/apache/poi/java/awt/image/Raster;Lorg/apache/poi/java/awt/image/WritableRaster;)Lorg/apache/poi/java/awt/image/WritableRaster;
    .locals 12

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->CSList:[Lorg/apache/poi/java/awt/color/ColorSpace;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->nonICCRasterFilter(Lorg/apache/poi/java/awt/image/Raster;Lorg/apache/poi/java/awt/image/WritableRaster;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getNumBands()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getNumComponents()I

    move-result v3

    if-ne v2, v3, :cond_c

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->createCompatibleDestRaster(Lorg/apache/poi/java/awt/image/Raster;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/Raster;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_b

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/Raster;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_b

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/Raster;->getNumBands()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    add-int/lit8 v5, v0, -0x1

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getNumComponents()I

    move-result v3

    if-ne v2, v3, :cond_a

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->thisRasterTransform:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    const/4 v3, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-nez v2, :cond_6

    new-array v2, v0, [Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    iget-object v7, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getProfileClass()I

    move-result v7

    if-ne v7, v1, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/CMSManager;->getModule()Lorg/apache/poi/sun/java2d/cmm/PCMM;

    move-result-object v8

    move v9, v4

    move v10, v6

    :goto_2
    if-ge v9, v0, :cond_5

    add-int/lit8 v11, v0, -0x1

    if-ne v9, v11, :cond_3

    move v10, v1

    goto :goto_3

    :cond_3
    if-ne v10, v5, :cond_4

    iget-object v11, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getProfileClass()I

    move-result v11

    if-ne v11, v3, :cond_4

    move v7, v4

    move v10, v6

    :cond_4
    :goto_3
    iget-object v11, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    aget-object v11, v11, v9

    invoke-interface {v8, v11, v7, v10}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform(Lorg/apache/poi/java/awt/color/ICC_Profile;II)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v7

    aput-object v7, v2, v9

    iget-object v7, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    aget-object v7, v7, v9

    invoke-direct {p0, v7}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->getRenderingIntent(Lorg/apache/poi/java/awt/color/ICC_Profile;)I

    move-result v7

    add-int/lit8 v9, v9, 0x1

    move v10, v5

    goto :goto_2

    :cond_5
    invoke-interface {v8, v2}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform([Lorg/apache/poi/sun/java2d/cmm/ColorTransform;)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->thisRasterTransform:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    :cond_6
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getTransferType()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/image/Raster;->getTransferType()I

    move-result v2

    if-eq v1, v5, :cond_8

    if-eq v1, v3, :cond_8

    if-eq v2, v5, :cond_8

    if-ne v2, v3, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->thisRasterTransform:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/sun/java2d/cmm/ColorTransform;->colorConvert(Lorg/apache/poi/java/awt/image/Raster;Lorg/apache/poi/java/awt/image/WritableRaster;)V

    goto :goto_5

    :cond_8
    :goto_4
    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->srcMinVals:[F

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    aget-object v2, v1, v4

    sub-int/2addr v0, v6

    aget-object v0, v1, v0

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->getMinMaxValsFromProfiles(Lorg/apache/poi/java/awt/color/ICC_Profile;Lorg/apache/poi/java/awt/color/ICC_Profile;)V

    :cond_9
    iget-object v5, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->thisRasterTransform:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    iget-object v8, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->srcMinVals:[F

    iget-object v9, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->srcMaxVals:[F

    iget-object v10, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->dstMinVals:[F

    iget-object v11, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->dstMaxVals:[F

    move-object v6, p1

    move-object v7, p2

    invoke-interface/range {v5 .. v11}, Lorg/apache/poi/sun/java2d/cmm/ColorTransform;->colorConvert(Lorg/apache/poi/java/awt/image/Raster;Lorg/apache/poi/java/awt/image/WritableRaster;[F[F[F[F)V

    :goto_5
    return-object p2

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Numbers of destination Raster bands and destination color space components do not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width or height of Rasters do not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Numbers of source Raster bands and source color space components do not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Source or Destination ColorSpace is undefined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getBounds2D(Lorg/apache/poi/java/awt/image/BufferedImage;)Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/BufferedImage;->getRaster()Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/image/ColorConvertOp;->getBounds2D(Lorg/apache/poi/java/awt/image/Raster;)Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object p1

    return-object p1
.end method

.method public final getBounds2D(Lorg/apache/poi/java/awt/image/Raster;)Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/Raster;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method public final getICC_Profiles()[Lorg/apache/poi/java/awt/color/ICC_Profile;
    .locals 4

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->gotProfiles:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    array-length v0, v0

    new-array v0, v0, [Lorg/apache/poi/java/awt/color/ICC_Profile;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->profileList:[Lorg/apache/poi/java/awt/color/ICC_Profile;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPoint2D(Lorg/apache/poi/java/awt/geom/Point2D;Lorg/apache/poi/java/awt/geom/Point2D;)Lorg/apache/poi/java/awt/geom/Point2D;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lorg/apache/poi/java/awt/geom/Point2D$Float;

    invoke-direct {p2}, Lorg/apache/poi/java/awt/geom/Point2D$Float;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/apache/poi/java/awt/geom/Point2D;->setLocation(DD)V

    return-object p2
.end method

.method public final getRenderingHints()Lorg/apache/poi/java/awt/RenderingHints;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/image/ColorConvertOp;->hints:Lorg/apache/poi/java/awt/RenderingHints;

    return-object v0
.end method
