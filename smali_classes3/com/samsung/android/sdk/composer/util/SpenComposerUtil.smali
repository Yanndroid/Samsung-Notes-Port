.class public Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/composer/util/SpenComposerUtil$SearchInfo;
    }
.end annotation


# static fields
.field private static IMAGE_MIN_SIZE:I = 0x4a

.field private static IMAGE_RESIZE_MIN_WIDTH:I = 0xb4

.field private static MAX_TEXTURE_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "ComposerUtil"

.field private static TASK_STATUS_DONE_RATIO:F = 0.7f

.field private static VIEW_LEFT_RIGHT_MARGIN:I = 0x18

.field private static mIsOtherCorpDevice:I = -0x1

.field private static mIsWifiOnlyModel:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateDefaultRatioOnScreen(FIII)F
    .locals 14

    move v7, p0

    move/from16 v2, p2

    move/from16 v3, p3

    const/high16 v0, 0x3f800000    # 1.0f

    if-lez v2, :cond_4

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    int-to-float v8, v3

    int-to-float v9, v2

    div-float v10, v8, v9

    sget v1, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->VIEW_LEFT_RIGHT_MARGIN:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    sub-int v11, p1, v1

    if-gtz v11, :cond_1

    return v0

    :cond_1
    const/4 v12, 0x0

    invoke-static {p0, v2, v10, v11, v12}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->calculateEditedResizeRatioOnScreen(FIFIZ)F

    move-result v13

    const/4 v6, 0x0

    move v0, p1

    move v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v13

    move v5, v11

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->getImageViewSize(IFIIFIZ)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    sget v2, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->MAX_TEXTURE_SIZE:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    sget v1, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->IMAGE_RESIZE_MIN_WIDTH:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    sget v0, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->MAX_TEXTURE_SIZE:I

    int-to-float v0, v0

    mul-float/2addr v9, v0

    div-float/2addr v9, v8

    float-to-int v0, v9

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    invoke-static {p0, v1, v10, v11, v12}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->calculateEditedResizeRatioOnScreen(FIFIZ)F

    move-result v13

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateDefaultRatioOnScreen result - resizeRatio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposerUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_4
    :goto_1
    return v0
.end method

.method private static calculateEditedResizeRatioOnScreen(FIFIZ)F
    .locals 2

    sget v0, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->IMAGE_MIN_SIZE:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    int-to-float p0, p0

    div-float/2addr p0, p2

    float-to-int p0, p0

    :cond_0
    if-le p0, p3, :cond_1

    move p0, p3

    :cond_1
    if-gt p3, p1, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    if-gt p1, p0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    sub-int/2addr p1, p0

    int-to-float p1, p1

    sub-int/2addr p3, p0

    int-to-float p0, p3

    div-float p0, p1, p0

    :goto_0
    if-eqz p4, :cond_4

    sget p1, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->TASK_STATUS_DONE_RATIO:F

    div-float/2addr p0, p1

    :cond_4
    cmpl-float p1, p0, v0

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, p0

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "calculateEditedResizeRatioOnScreen result - ratio:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ComposerUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static createSearchHightlightPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v2, "[$*()+|<>?{}\\[\\]\\{\\}\\^\\\\\\.]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_4

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\\"

    invoke-virtual {v3, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v4, :cond_3

    const-string v1, "[\\s]{0,}"

    invoke-virtual {v3, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method private static findHighlightText(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->createSearchHightlightPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findHighlightText : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ComposerUtil"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "IllegalArgumentException"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getImageViewSize(IFIIFIZ)Landroid/graphics/RectF;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImageViewSize screenWidthPixel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",density:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "bitmap W:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",H:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resizeRatio:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", maxWidth:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", done?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ComposerUtil"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->IMAGE_MIN_SIZE:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    const/4 v3, 0x0

    cmpg-float v4, p4, v3

    if-gez v4, :cond_0

    invoke-static {p1, p0, p2, p3}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->calculateDefaultRatioOnScreen(FIII)F

    move-result p4

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, p4, v4

    if-lez v5, :cond_1

    move p4, v4

    :cond_1
    if-le p2, p3, :cond_2

    int-to-float v0, v0

    int-to-float v4, p2

    int-to-float v5, p3

    div-float/2addr v4, v5

    mul-float/2addr v0, v4

    float-to-int v0, v0

    :cond_2
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    if-eqz p2, :cond_3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    goto :goto_0

    :cond_3
    move p3, v3

    :goto_0
    if-eqz p6, :cond_4

    sget p2, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->TASK_STATUS_DONE_RATIO:F

    mul-float/2addr p4, p2

    :cond_4
    sget p2, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->VIEW_LEFT_RIGHT_MARGIN:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    sub-int/2addr p0, p1

    if-ge p5, p0, :cond_5

    goto :goto_1

    :cond_5
    move p5, p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getImageViewSize oldW:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", maxImgW:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v0, p5, :cond_6

    goto :goto_2

    :cond_6
    sub-int/2addr p5, v0

    int-to-float p0, p5

    mul-float/2addr p0, p4

    float-to-int p0, p0

    add-int/2addr v0, p0

    :goto_2
    int-to-float p0, v0

    mul-float/2addr p3, p0

    float-to-int p1, p3

    int-to-float p2, p1

    invoke-virtual {v4, v3, v3, p0, p2}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getImageViewSize result - W:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ratio:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static getWord(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;I)[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le p1, v3, :cond_0

    goto :goto_0

    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_1

    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/text/BreakIterator;->following(I)I

    invoke-virtual {v3}, Ljava/text/BreakIterator;->previous()I

    move-result p0

    aput p0, v0, v2

    invoke-virtual {v3}, Ljava/text/BreakIterator;->next()I

    move-result p0

    aput p0, v0, v1

    return-object v0

    :cond_1
    invoke-static {}, Landroid/icu/text/BreakIterator;->getWordInstance()Landroid/icu/text/BreakIterator;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    invoke-virtual {v3}, Landroid/icu/text/BreakIterator;->previous()I

    move-result p0

    aput p0, v0, v2

    invoke-virtual {v3}, Landroid/icu/text/BreakIterator;->next()I

    move-result p0

    aput p0, v0, v1

    return-object v0

    :cond_2
    :goto_0
    aput v2, v0, v2

    aput v2, v0, v1

    return-object v0
.end method

.method private static highlightMessage(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;[F[I)V
    .locals 8

    const-string v0, "ComposerUtil"

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    if-nez p4, :cond_0

    goto/16 :goto_a

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    aget-char v5, p1, v4

    invoke-static {v5}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isCombinedCode(C)Z

    move-result v5

    if-eqz v5, :cond_1

    move p1, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move p1, v3

    move v4, p1

    :goto_1
    invoke-virtual {p0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    :goto_2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_c

    if-nez p1, :cond_3

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p2

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-static {p4, p2, v5, v6}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->setArray([IIII)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    move v5, v4

    :goto_3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    if-ge v5, v7, :cond_5

    aget-char v7, p2, v5

    invoke-static {v7}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isCombinedCode(C)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    if-ne v5, v7, :cond_6

    const-string p2, "highlightMessage:: it is not combined."

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    aget-char p2, p2, v5

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isIndianChar(C)Z

    move-result p2

    const/4 v5, 0x0

    if-eqz p2, :cond_8

    :goto_5
    if-le v7, v3, :cond_7

    add-int/lit8 p2, v7, -0x1

    aget-char p2, v1, p2

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isHalant(C)Z

    move-result p2

    if-eqz p2, :cond_7

    add-int/lit8 v7, v7, -0x2

    goto :goto_5

    :cond_7
    if-ge v7, v3, :cond_9

    const-string p2, "highlightMessage:: pre pos halant is smaller than min."

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    goto :goto_7

    :cond_8
    :goto_6
    if-le v7, v3, :cond_9

    aget p2, p3, v7

    cmpl-float p2, p2, v5

    if-nez p2, :cond_9

    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    :cond_9
    :goto_7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    :goto_8
    if-ge p2, v2, :cond_b

    aget v3, p3, p2

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_a

    add-int/lit8 v3, p2, -0x1

    aget-char v3, v1, v3

    invoke-static {v3}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isHalant(C)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_9

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    add-int/lit8 v3, p2, -0x1

    invoke-static {p4, v7, p2, v6}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->setArray([IIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    const-string p0, "IllegalArgumentException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_a
    return-void
.end method

.method public static isAccessibilityEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "enabled_accessibility_services"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_0
    const-string v1, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "(?i).*com.samsung.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAccessibilityEnabled() error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/regex/PatternSyntaxException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ComposerUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v0
.end method

.method public static isCombinedCode(C)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isIndianChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isThaiChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isKhmerChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isMyanmarChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isLaoChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isHalant(C)Z
    .locals 1

    const/16 v0, 0x94d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9cd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa4d

    if-eq p0, v0, :cond_1

    const/16 v0, 0xacd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xbcd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc4d

    if-eq p0, v0, :cond_1

    const/16 v0, 0xccd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd4d

    if-eq p0, v0, :cond_1

    const/16 v0, 0xddf

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb4d

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isIndianChar(C)Z
    .locals 1

    const/16 v0, 0x900

    if-lt p0, v0, :cond_0

    const/16 v0, 0xdff

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isKhmerChar(C)Z
    .locals 1

    const/16 v0, 0x1780

    if-lt p0, v0, :cond_0

    const/16 v0, 0x17f9

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLDUModel(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isSemDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v0, v2}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/SystemPropertiesWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/SystemPropertiesWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/spen/libwrapper/SystemPropertiesWrapper;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PAP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "FOP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LDU"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :catch_0
    :cond_3
    return v1
.end method

.method private static isLaoChar(C)Z
    .locals 1

    const/16 v0, 0xe81

    if-lt p0, v0, :cond_0

    const/16 v0, 0xedd

    if-le p0, v0, :cond_1

    :cond_0
    const v0, 0xe001

    if-lt p0, v0, :cond_2

    const v0, 0xe018

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static isMyanmarChar(C)Z
    .locals 1

    const/16 v0, 0x1000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1097

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isOtherCorpDevice()Z
    .locals 4

    sget v0, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->mIsOtherCorpDevice:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isSemDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sput v1, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->mIsOtherCorpDevice:I

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "com.sec.android.secmediarecorder.SecMediaRecorder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sput v1, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->mIsOtherCorpDevice:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput v2, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->mIsOtherCorpDevice:I

    :cond_1
    :goto_0
    sget v0, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->mIsOtherCorpDevice:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isSemDevice()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice()Z

    move-result v0

    return v0
.end method

.method public static isShopDemo(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "shopdemo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isShopDemoDevice(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isLDUModel(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isShopDemo(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShopDemoDevice : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposerUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private static isSurrogate(C)Z
    .locals 1

    const v0, 0xfc00

    and-int/2addr p0, v0

    const v0, 0xd800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isThaiChar(C)Z
    .locals 1

    const/16 v0, 0xe01

    if-lt p0, v0, :cond_0

    const/16 v0, 0xe5b

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUPSM(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isOtherCorpDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ComposerUtil"

    const-string v1, "IllegalArgumentException UPSM"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    :goto_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    :goto_1
    return v0
.end method

.method public static isWifiOnlyModel(Landroid/content/Context;)Z
    .locals 3

    sget v0, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->mIsWifiOnlyModel:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.hardware.telephony"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v1

    sput p0, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->mIsWifiOnlyModel:I

    :cond_0
    sget p0, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->mIsWifiOnlyModel:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static performHapticFeedback(Landroid/view/View;I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->create(Landroid/content/Context;Landroid/view/View;)Lcom/samsung/android/spen/libwrapper/ViewWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->performHapticFeedback(I)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static searchText(Ljava/lang/String;Ljava/lang/String;[FLjava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[F",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/util/SpenComposerUtil$SearchInfo;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->createSearchHightlightPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {v3, p1, p0, p2, p3}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->searchTextWithPattern(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;[FLjava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method private static searchTextWithPattern(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;[FLjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[F",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/util/SpenComposerUtil$SearchInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ComposerUtil"

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    if-nez p4, :cond_0

    goto/16 :goto_a

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    aget-char v5, p1, v4

    invoke-static {v5}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isCombinedCode(C)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move p1, v3

    move v4, p1

    :goto_1
    invoke-virtual {p0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    :goto_2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_c

    if-nez p1, :cond_3

    new-instance p2, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil$SearchInfo;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-direct {p2, v5, v6}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil$SearchInfo;-><init>(II)V

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    move v5, v4

    :goto_3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    if-ge v5, v6, :cond_5

    aget-char v6, p2, v5

    invoke-static {v6}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isCombinedCode(C)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    if-ne v5, v6, :cond_6

    const-string p2, "highlightMessage:: it is not combined."

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    aget-char p2, p2, v5

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isIndianChar(C)Z

    move-result p2

    const/4 v5, 0x0

    if-eqz p2, :cond_8

    :goto_5
    if-le v6, v3, :cond_7

    add-int/lit8 p2, v6, -0x1

    aget-char p2, v1, p2

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isHalant(C)Z

    move-result p2

    if-eqz p2, :cond_7

    add-int/lit8 v6, v6, -0x2

    goto :goto_5

    :cond_7
    if-ge v6, v3, :cond_9

    const-string p2, "highlightMessage:: pre pos halant is smaller than min."

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    goto :goto_7

    :cond_8
    :goto_6
    if-le v6, v3, :cond_9

    aget p2, p3, v6

    cmpl-float p2, p2, v5

    if-nez p2, :cond_9

    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_9
    :goto_7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    :goto_8
    if-ge p2, v2, :cond_b

    aget v3, p3, p2

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_a

    add-int/lit8 v3, p2, -0x1

    aget-char v3, v1, v3

    invoke-static {v3}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->isHalant(C)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_9

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    add-int/lit8 v3, p2, -0x1

    new-instance v5, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil$SearchInfo;

    invoke-direct {v5, v6, p2}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil$SearchInfo;-><init>(II)V

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    const-string p0, "IllegalArgumentException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_a
    return-void
.end method

.method private static setArray([IIII)V
    .locals 1

    array-length v0, p0

    if-le p2, v0, :cond_0

    array-length p2, p0

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_1

    aput p3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setHighlightText(Ljava/lang/String;Ljava/lang/String;[F[I)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->createSearchHightlightPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {v3, p1, p0, p2, p3}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->highlightMessage(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;[F[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static setHighlightText(Ljava/lang/String;Ljava/lang/String;[F)[I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/sdk/composer/util/SpenComposerUtil;->setHighlightText(Ljava/lang/String;Ljava/lang/String;[F[I)V

    return-object v0
.end method
