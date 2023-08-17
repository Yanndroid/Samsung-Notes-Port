.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;
.super Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;
.source "SourceFile"


# static fields
.field private static final FILE_PATH_GET_EPEN_POS:Ljava/lang/String; = "/sys/class/sec/sec_epen/get_epen_pos"

.field private static final START_OFF_SET:I = 0x12c

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mRotation:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "StartingPenHoverAnimation"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;-><init>()V

    return-void
.end method

.method private getHeight(I)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isEnabledMobileKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInputMethodWindowVisibleHeight(Landroid/content/Context;)I

    move-result v0

    add-int/2addr p1, v0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHeight# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private getSpenRippleData()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->TAG:Ljava/lang/String;

    const-string v1, "getSpenRippleData#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/sec_epen/get_epen_pos"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v3

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v0

    :goto_0
    :try_start_3
    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->TAG:Ljava/lang/String;

    const-string v4, "getSpenRippleData# "

    invoke-static {v3, v4, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_0
    return-object v0

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_1
    throw v0
.end method

.method private isExceptionalCase(IIII)Z
    .locals 1

    const/4 v0, 0x1

    if-lez p3, :cond_3

    if-gtz p4, :cond_0

    goto :goto_2

    :cond_0
    if-ltz p1, :cond_2

    if-gt p1, p3, :cond_2

    if-ltz p2, :cond_2

    if-le p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->TAG:Ljava/lang/String;

    const-string p2, "isExceptionalCase# wrong point"

    :goto_1
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    :goto_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->TAG:Ljava/lang/String;

    const-string p2, "isExceptionalCase# maxX/Y is zero"

    goto :goto_1
.end method


# virtual methods
.method public getSpenRipplePoint()Landroid/graphics/PointF;
    .locals 11

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->TAG:Ljava/lang/String;

    const-string v1, "getSpenRipplePoint#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->getSpenRippleData()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_0
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget-byte v7, v3, v6

    const/16 v8, 0x30

    if-lt v7, v8, :cond_1

    aget-byte v7, v3, v6

    const/16 v8, 0x39

    if-le v7, v8, :cond_2

    :cond_1
    aget-byte v7, v3, v6

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_2

    const/16 v7, 0x20

    aput-byte v7, v3, v6

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v0, v2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSpenRipplePoint# "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    aget-object v8, v0, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    aget-object v9, v0, v8

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    aget-object v10, v0, v9

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v0, v5

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_7

    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v0, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v6, v0, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v4, v5, v6, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->isExceptionalCase(IIII)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpenRipplePoint# getPhysicalScreenSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->getPhysicalScreenSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mRotation:I

    if-eqz v1, :cond_6

    if-ne v8, v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayHeight:I

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->getHeight(I)I

    move-result v2

    mul-int/2addr v4, v2

    int-to-float v2, v4

    int-to-float v3, v6

    div-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayWidth:I

    mul-int/2addr v5, v3

    int-to-float v3, v5

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    :cond_6
    :goto_1
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayWidth:I

    mul-int/2addr v4, v2

    int-to-float v2, v4

    int-to-float v3, v6

    div-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayHeight:I

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->getHeight(I)I

    move-result v3

    mul-int/2addr v5, v3

    int-to-float v3, v5

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    :cond_7
    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getStartOffset()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/RunningChecker;->isScreenOffActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initPosition()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPosition# animationView is already removed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mContainer:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->main_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->screenoff_pen_hover_animation_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->screenoff_pen_hover_animation_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->getSpenRipplePoint()Landroid/graphics/PointF;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initPosition# ripplePoint "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mRotation:I

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_3

    const/4 v6, 0x2

    if-ne v6, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    if-ne v6, v4, :cond_2

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayWidth:I

    iget v6, v3, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v6, v0

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget v0, v3, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :cond_2
    iget v4, v3, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-int v0, v0

    sub-int/2addr v4, v0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayHeight:I

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    sub-int/2addr v0, v3

    goto :goto_3

    :cond_3
    :goto_1
    iget v4, v3, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-int v0, v0

    sub-int/2addr v4, v0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget v0, v3, Landroid/graphics/PointF;->y:F

    :goto_2
    float-to-int v0, v0

    :goto_3
    int-to-float v1, v1

    div-float/2addr v1, v5

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initSystemValues()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mRotation:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayWidth:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayHeight:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSystemValues# rotation/displayWidth/displayHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;->mDisplayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
