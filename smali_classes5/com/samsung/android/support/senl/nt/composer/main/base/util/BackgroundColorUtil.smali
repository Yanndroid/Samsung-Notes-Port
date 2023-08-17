.class public Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;
    }
.end annotation


# static fields
.field public static final BG_COLOR:I = 0x0

.field public static final DARK_THEME:I = 0x2

.field public static final REVERSE_COLOR:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static mBlackColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

.field private static mWhiteColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ColorUtil"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->mWhiteColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->mBlackColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackgroundThemeColor(Landroid/content/Context;IZZ)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getBlackColor(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->isComposerViewDarkTheme(Landroid/content/Context;IZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method public static getBackgroundThemeColorTable(Landroid/content/Context;IZZ)[I
    .locals 7

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getBlackColor(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_default_button_color_light:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_default_button_color_dark:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [I

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getBackgroundThemeColor(Landroid/content/Context;IZZ)I

    move-result p1

    const/4 v4, 0x0

    aput p1, v3, v4

    aget p1, v3, v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne p1, v0, :cond_0

    aput v2, v3, v6

    aput v6, v3, v5

    goto :goto_0

    :cond_0
    aput v1, v3, v6

    aput v4, v3, v5

    :goto_0
    invoke-static {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->isDarkModeNote(Landroid/content/Context;ZZ)Z

    move-result p0

    if-eqz p0, :cond_1

    aget p0, v3, v4

    const/high16 p1, -0x1000000

    const p2, 0x3dcccccd    # 0.1f

    invoke-static {p0, p1, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    aput p0, v3, v4

    :cond_1
    return-object v3
.end method

.method public static getBlackColor(Landroid/content/Context;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->mBlackColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_main_background_dark:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;-><init>(I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->mBlackColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    :cond_0
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->mBlackColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;->intValue()I

    move-result p0

    return p0
.end method

.method public static getColorAdjustment(Landroid/content/Context;I)I
    .locals 0

    return p1
.end method

.method private static getCutoutColor(Landroid/app/Activity;IZZIII)I
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_background_light:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_background_dark:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->isDarkModeNote(Landroid/content/Context;ZZ)Z

    move-result p0

    const/high16 p2, 0x3f000000    # 0.5f

    if-eqz p0, :cond_2

    const p0, 0x3dcccccd    # 0.1f

    if-ne p1, p6, :cond_0

    invoke-static {p4, v1, p0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-static {p1, v1, p0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    goto :goto_0

    :cond_0
    if-ne p1, p5, :cond_1

    invoke-static {v1, p4, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p4, v1, p0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    invoke-static {v1, p0, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    goto :goto_0

    :cond_2
    if-ne p1, p5, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v0, p4, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static getDefaultBackgroundColor(I)I
    .locals 2

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_page_color"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getDefaultBackgroundInvert()Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getSettingDarkModeNote()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultBackgroundInvert# type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultBackgroundInvert# unexpected type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v3

    :cond_1
    return v2

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getSettingDarkModeNoteIndividuallyInfo()Z

    move-result v0

    return v0
.end method

.method private static getDimColor(Landroid/app/Activity;III)I
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_window_background_color_light:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_window_background_color_dark:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    const p0, 0x3e99999a    # 0.3f

    invoke-static {v0, p1, p0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static getInvertBackgroundColorType(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;->None:Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;->Pdf:Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasBackgroundImage()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;->Image:Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getSettingDarkModeNote()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getSettingDarkModeNoteIndividuallyInfo()Z
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_page_color_adjust_in_dark_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getWhiteColor(Landroid/content/Context;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->mWhiteColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_main_background_light:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;-><init>(I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->mWhiteColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    :cond_0
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->mWhiteColor:Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/INTEGER;->intValue()I

    move-result p0

    return p0
.end method

.method public static hasBackgroundImage(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasBackgroundImage()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static isBackgroundDarkTheme(Landroid/content/Context;IZZ)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->isComposerViewDarkTheme(Landroid/content/Context;IZZ)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    return p3

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getBlackColor(Landroid/content/Context;)I

    move-result p0

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    return p3
.end method

.method public static isComposerViewDarkTheme(Landroid/content/Context;IZZ)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getWhiteColor(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->isDarkModeNote(Landroid/content/Context;ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isDarkModeNote(Landroid/content/Context;ZZ)Z
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getSettingDarkModeNote()I

    move-result p0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultBackgroundInvert# type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getDefaultBackgroundInvert# unexpected type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0

    :cond_2
    xor-int/lit8 p0, p2, 0x1

    return p0

    :cond_3
    return p1
.end method

.method public static setCutoutColor(Landroid/app/Activity;IZZ)V
    .locals 7

    if-eqz p0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getBackgroundThemeColor(Landroid/content/Context;IZZ)I

    move-result v4

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getWhiteColor(Landroid/content/Context;)I

    move-result v5

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getBlackColor(Landroid/content/Context;)I

    move-result v6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->getFeature()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->isFoldableModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->getDisplayDeviceType(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->DISPLAY_DEVICE_TYPE_MAIN:I

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getCutoutColor(Landroid/app/Activity;IZZIII)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p0, v4, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getDimColor(Landroid/app/Activity;III)I

    move-result p1

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->setDisplayCutoutBGColor(Landroid/app/Activity;I)V

    :cond_1
    return-void
.end method

.method public static setNavigationBar(Landroid/app/Activity;IZZ)V
    .locals 0

    if-eqz p0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getBackgroundThemeColor(Landroid/content/Context;IZZ)I

    move-result p1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getWhiteColor(Landroid/content/Context;)I

    move-result p2

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getBlackColor(Landroid/content/Context;)I

    move-result p3

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getDimColor(Landroid/app/Activity;III)I

    move-result p2

    if-ne p1, p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setNavigationBarTheme(Landroid/app/Activity;IZ)V

    :cond_1
    return-void
.end method

.method public static setStatusBar(Landroid/app/Activity;IZZ)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getBackgroundThemeColorTable(Landroid/content/Context;IZZ)[I

    move-result-object p1

    const/4 p2, 0x2

    aget p2, p1, p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    aget p1, p1, v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setStatusBarTheme(Landroid/app/Activity;IZ)V

    goto :goto_0

    :cond_0
    aget p1, p1, v0

    invoke-static {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setStatusBarTheme(Landroid/app/Activity;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static updateAntiGreenishColor(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getAntiGreenishColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
