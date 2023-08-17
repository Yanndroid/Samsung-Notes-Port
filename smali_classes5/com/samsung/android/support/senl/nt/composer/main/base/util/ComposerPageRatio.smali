.class public Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;
    }
.end annotation


# static fields
.field public static final PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->A4_PORTRAIT:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromSettings(I)Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->A4_PORTRAIT:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->LONG:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    return-object p0
.end method

.method public static equalFloatValues(FFF)Z
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static equalPageRatio(IIII)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->getPageRatio(II)F

    move-result p0

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->getPageRatio(II)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getPageRatio(II)F
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->A4_PORTRAIT:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getPageRatio()F

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->getPageRatio(IIF)F

    move-result p0

    return p0
.end method

.method public static getPageRatio(IIF)F
    .locals 1

    if-nez p0, :cond_0

    return p2

    :cond_0
    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->LONG:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->equal(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getPageRatio()F

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->A4_PORTRAIT:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->equal(F)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getPageRatio()F

    move-result p0

    return p0

    :cond_2
    return p2
.end method

.method public static getPageRatioTypeFromSettings()Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->getPageSizeType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->convertFromSettings(I)Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    move-result-object v0

    return-object v0
.end method

.method public static getPageSizeType()I
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_page_size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
