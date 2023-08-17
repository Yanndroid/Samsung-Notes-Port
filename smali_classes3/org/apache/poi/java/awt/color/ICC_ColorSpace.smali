.class public Lorg/apache/poi/java/awt/color/ICC_ColorSpace;
.super Lorg/apache/poi/java/awt/color/ColorSpace;
.source "SourceFile"


# static fields
.field public static final serialVersionUID:J = 0x2ff5c8d6d34eb6fbL


# instance fields
.field private diffMinMax:[F

.field private invDiffMinMax:[F

.field private maxVal:[F

.field private minVal:[F

.field private needScaleInit:Z

.field private transient srgb2this:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

.field private transient this2srgb:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

.field private transient this2xyz:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

.field private thisProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

.field private transient xyz2this:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/color/ICC_Profile;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getColorSpaceType()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getNumComponents()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/java/awt/color/ColorSpace;-><init>(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->needScaleInit:Z

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getProfileClass()I

    move-result v1

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid profile type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->thisProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    invoke-direct {p0}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->setMinMax()V

    return-void
.end method

.method private setComponentScaling()V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->diffMinMax:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->invDiffMinMax:[F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->minVal:[F

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->getMinValue(I)F

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->maxVal:[F

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->getMaxValue(I)F

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->diffMinMax:[F

    iget-object v4, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->maxVal:[F

    aget v4, v4, v2

    iget-object v5, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->minVal:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v2

    iget-object v4, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->invDiffMinMax:[F

    const v5, 0x477fff00    # 65535.0f

    aget v3, v3, v2

    div-float/2addr v5, v3

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->needScaleInit:Z

    return-void
.end method

.method private setMinMax()V
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getType()I

    move-result v1

    new-array v2, v0, [F

    iput-object v2, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->minVal:[F

    new-array v3, v0, [F

    iput-object v3, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->maxVal:[F

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    aput v4, v2, v6

    const/high16 v0, 0x42c80000    # 100.0f

    aput v0, v3, v6

    const/high16 v0, -0x3d000000    # -128.0f

    aput v0, v2, v7

    const/high16 v1, 0x42fe0000    # 127.0f

    aput v1, v3, v7

    aput v0, v2, v5

    aput v1, v3, v5

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    aput v4, v2, v5

    aput v4, v2, v7

    aput v4, v2, v6

    const v0, 0x3fffff00    # 1.9999695f

    aput v0, v3, v5

    aput v0, v3, v7

    aput v0, v3, v6

    goto :goto_1

    :cond_1
    :goto_0
    if-ge v6, v0, :cond_2

    iget-object v1, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->minVal:[F

    aput v4, v1, v6

    iget-object v1, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->maxVal:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public fromCIEXYZ([F)[F
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->xyz2this:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v2, v0, [Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    const/16 v3, 0x3e9

    invoke-static {v3}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/CMSManager;->getModule()Lorg/apache/poi/sun/java2d/cmm/PCMM;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->getProfile()Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v3

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-interface {v4, v3, v5, v6}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform(Lorg/apache/poi/java/awt/color/ICC_Profile;II)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v3

    aput-object v3, v2, v1

    :try_start_0
    iget-object v3, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->thisProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    invoke-interface {v4, v3, v6, v0}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform(Lorg/apache/poi/java/awt/color/ICC_Profile;II)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v3

    aput-object v3, v2, v6
    :try_end_0
    .catch Lorg/apache/poi/java/awt/color/CMMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/CMSManager;->getModule()Lorg/apache/poi/sun/java2d/cmm/PCMM;

    move-result-object v3

    iget-object v7, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->thisProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    invoke-interface {v3, v7, v5, v0}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform(Lorg/apache/poi/java/awt/color/ICC_Profile;II)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v0

    aput-object v0, v2, v6

    :goto_0
    invoke-interface {v4, v2}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform([Lorg/apache/poi/sun/java2d/cmm/ColorTransform;)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->xyz2this:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->needScaleInit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->setComponentScaling()V

    :cond_0
    const/4 v0, 0x3

    new-array v2, v0, [S

    const/high16 v3, 0x47000000    # 32768.0f

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_1

    aget v5, p1, v4

    mul-float/2addr v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-short v5, v5

    aput-short v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->xyz2this:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    const/4 v0, 0x0

    invoke-interface {p1, v2, v0}, Lorg/apache/poi/sun/java2d/cmm/ColorTransform;->colorConvert([S[S)[S

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    new-array v2, v0, [F

    :goto_2
    if-ge v1, v0, :cond_2

    aget-short v3, p1, v1

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x477fff00    # 65535.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->diffMinMax:[F

    aget v4, v4, v1

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->minVal:[F

    aget v4, v4, v1

    add-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v2
.end method

.method public fromRGB([F)[F
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->srgb2this:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v2, v0, [Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    const/16 v3, 0x3e8

    invoke-static {v3}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/CMSManager;->getModule()Lorg/apache/poi/sun/java2d/cmm/PCMM;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->getProfile()Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v3

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-interface {v4, v3, v5, v6}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform(Lorg/apache/poi/java/awt/color/ICC_Profile;II)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->thisProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    invoke-interface {v4, v3, v5, v0}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform(Lorg/apache/poi/java/awt/color/ICC_Profile;II)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-interface {v4, v2}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform([Lorg/apache/poi/sun/java2d/cmm/ColorTransform;)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->srgb2this:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->needScaleInit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->setComponentScaling()V

    :cond_0
    const/4 v0, 0x3

    new-array v2, v0, [S

    move v3, v1

    :goto_0
    const v4, 0x477fff00    # 65535.0f

    if-ge v3, v0, :cond_1

    aget v5, p1, v3

    mul-float/2addr v5, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v5, v4

    float-to-int v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->srgb2this:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    const/4 v0, 0x0

    invoke-interface {p1, v2, v0}, Lorg/apache/poi/sun/java2d/cmm/ColorTransform;->colorConvert([S[S)[S

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    new-array v2, v0, [F

    :goto_1
    if-ge v1, v0, :cond_2

    aget-short v3, p1, v1

    const v5, 0xffff

    and-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget-object v5, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->diffMinMax:[F

    aget v5, v5, v1

    mul-float/2addr v3, v5

    iget-object v5, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->minVal:[F

    aget v5, v5, v1

    add-float/2addr v3, v5

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public getMaxValue(I)F
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->maxVal:[F

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Component index out of range: + component"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMinValue(I)F
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->minVal:[F

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Component index out of range: + component"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getProfile()Lorg/apache/poi/java/awt/color/ICC_Profile;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->thisProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    return-object v0
.end method

.method public toCIEXYZ([F)[F
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->this2xyz:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v2, v0, [Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    const/16 v3, 0x3e9

    invoke-static {v3}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/CMSManager;->getModule()Lorg/apache/poi/sun/java2d/cmm/PCMM;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    :try_start_0
    iget-object v7, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->thisProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    invoke-interface {v4, v7, v6, v6}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform(Lorg/apache/poi/java/awt/color/ICC_Profile;II)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v7

    aput-object v7, v2, v1
    :try_end_0
    .catch Lorg/apache/poi/java/awt/color/CMMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v7, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->thisProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    invoke-interface {v4, v7, v5, v6}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform(Lorg/apache/poi/java/awt/color/ICC_Profile;II)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v7

    aput-object v7, v2, v1

    :goto_0
    invoke-virtual {v3}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->getProfile()Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v3

    invoke-interface {v4, v3, v5, v0}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform(Lorg/apache/poi/java/awt/color/ICC_Profile;II)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-interface {v4, v2}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform([Lorg/apache/poi/sun/java2d/cmm/ColorTransform;)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->this2xyz:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->needScaleInit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->setComponentScaling()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    new-array v2, v0, [S

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    aget v4, p1, v3

    iget-object v5, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->minVal:[F

    aget v5, v5, v3

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->invDiffMinMax:[F

    aget v5, v5, v3

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->this2xyz:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    const/4 v0, 0x0

    invoke-interface {p1, v2, v0}, Lorg/apache/poi/sun/java2d/cmm/ColorTransform;->colorConvert([S[S)[S

    move-result-object p1

    const v0, 0x3fffff00    # 1.9999695f

    const/4 v2, 0x3

    new-array v3, v2, [F

    :goto_2
    if-ge v1, v2, :cond_2

    aget-short v4, p1, v1

    const v5, 0xffff

    and-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x477fff00    # 65535.0f

    div-float/2addr v4, v5

    mul-float/2addr v4, v0

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v3
.end method

.method public toRGB([F)[F
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->this2srgb:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v2, v0, [Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    const/16 v3, 0x3e8

    invoke-static {v3}, Lorg/apache/poi/java/awt/color/ColorSpace;->getInstance(I)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;

    invoke-static {}, Lorg/apache/poi/sun/java2d/cmm/CMSManager;->getModule()Lorg/apache/poi/sun/java2d/cmm/PCMM;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->thisProfile:Lorg/apache/poi/java/awt/color/ICC_Profile;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform(Lorg/apache/poi/java/awt/color/ICC_Profile;II)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->getProfile()Lorg/apache/poi/java/awt/color/ICC_Profile;

    move-result-object v3

    invoke-interface {v4, v3, v6, v0}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform(Lorg/apache/poi/java/awt/color/ICC_Profile;II)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-interface {v4, v2}, Lorg/apache/poi/sun/java2d/cmm/PCMM;->createTransform([Lorg/apache/poi/sun/java2d/cmm/ColorTransform;)Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->this2srgb:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->needScaleInit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->setComponentScaling()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    new-array v2, v0, [S

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    aget v4, p1, v3

    iget-object v5, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->minVal:[F

    aget v5, v5, v3

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->invDiffMinMax:[F

    aget v5, v5, v3

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/java/awt/color/ICC_ColorSpace;->this2srgb:Lorg/apache/poi/sun/java2d/cmm/ColorTransform;

    const/4 v0, 0x0

    invoke-interface {p1, v2, v0}, Lorg/apache/poi/sun/java2d/cmm/ColorTransform;->colorConvert([S[S)[S

    move-result-object p1

    const/4 v0, 0x3

    new-array v2, v0, [F

    :goto_1
    if-ge v1, v0, :cond_2

    aget-short v3, p1, v1

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x477fff00    # 65535.0f

    div-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method
