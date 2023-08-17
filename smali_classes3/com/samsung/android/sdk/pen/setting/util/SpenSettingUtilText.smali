.class public Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;
    }
.end annotation


# static fields
.field private static final FONT_SIZE:Ljava/lang/String; = "font_size"

.field private static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static mDeviceCorpCheck:I = -0x1

.field private static mFontScale:F = -1.0f

.field private static mLargeFontIndex:I = -0x1


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

.method public static adjustCharLineSeparation(Landroid/widget/TextView;I)V
    .locals 10

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move v8, v3

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v8, v3

    if-le v8, p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v7, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public static varargs applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V
    .locals 6

    if-eqz p0, :cond_4

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    sget v0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->mDeviceCorpCheck:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_2

    :goto_0
    array-length p0, p2

    if-ge v2, p0, :cond_1

    aget-object p0, p2, v2

    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->getLargeFontIndex(Landroid/content/Context;)I

    move-result v3

    if-gt v0, v3, :cond_3

    :goto_1
    array-length p0, p2

    if-ge v2, p0, :cond_4

    aget-object p0, p2, v2

    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->getFontScale(Landroid/content/Context;I)F

    move-result v0

    move v1, v2

    :goto_2
    array-length v3, p2

    if-ge v1, v3, :cond_4

    aget-object v3, p2, v1

    mul-float v4, p1, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public static varargs findMinValue(I[Landroid/widget/TextView;)V
    .locals 6

    array-length v0, p1

    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    move v3, v1

    move v4, v3

    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_2

    aget-object v5, p1, v3

    invoke-virtual {v5, v1, v1}, Landroid/widget/TextView;->measure(II)V

    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-le v4, p0, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    move v3, v1

    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_1

    aget-object v4, p1, v3

    aget v5, v0, v3

    sub-float/2addr v5, v2

    invoke-virtual {v4, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static getFontScale(Landroid/content/Context;I)F
    .locals 2

    sget v0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->mFontScale:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->getSystemFontScale(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->mDeviceCorpCheck:I

    array-length v1, p0

    if-lt p1, v1, :cond_1

    array-length p1, p0

    sub-int/2addr p1, v0

    :cond_1
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    :goto_0
    sput p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->mFontScale:F

    return p0

    :cond_2
    const/4 p0, 0x0

    sput p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->mDeviceCorpCheck:I

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private static getFontSizeIndex(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDesktopMode;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "font_size"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDesktopMode;->getFontScale(Landroid/content/Context;)F

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->getSystemFontScale(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v3, v0

    if-ltz v3, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method private static getLargeFontIndex(Landroid/content/Context;)I
    .locals 5

    sget v0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->mLargeFontIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->getSystemFontIndex(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_1

    const-string v0, "Large"

    goto :goto_0

    :cond_1
    const-string v0, "1.3"

    :goto_0
    const/4 v2, 0x0

    if-eqz p0, :cond_4

    const/4 v3, 0x1

    sput v3, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->mDeviceCorpCheck:I

    array-length v3, p0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, p0, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sput v2, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->mLargeFontIndex:I

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    sget p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->mLargeFontIndex:I

    if-ne p0, v1, :cond_5

    const/4 p0, 0x4

    sput p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->mLargeFontIndex:I

    goto :goto_3

    :cond_4
    sput v2, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->mDeviceCorpCheck:I

    :cond_5
    :goto_3
    sget p0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->mLargeFontIndex:I

    return p0
.end method

.method private static getStringArrayFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "array"

    invoke-virtual {p0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getSystemFontIndex(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "com.android.settings"

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    const-string v0, "entry_7_step_font_size"

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->getStringArrayFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "sec_entryvalues_8_step_font_size"

    goto :goto_0
.end method

.method private static getSystemFontScale(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "com.android.settings"

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    const-string v0, "entryvalues_7_step_font_size"

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->getStringArrayFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "sec_entryvalues_8_step_font_size"

    goto :goto_0
.end method

.method private static isEllipsis(Landroid/widget/TextView;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    invoke-virtual {v0, p0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p0

    if-lez p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static resizeTextSize(Landroid/widget/TextView;)V
    .locals 8

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->isEllipsis(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEllipsis is TRUE. [BEFORE] getWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " textSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpenSettingUtilText"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v1, v6

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v6, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[AFTER] textSize="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static varargs setDefaultButtonTextStyle(Landroid/content/Context;[Landroid/widget/TextView;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->MEDIUM:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    invoke-static {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTextAppearance(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    sget v0, Lcom/samsung/android/spen/R$color;->component_common:I

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static varargs setTextAppearance(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->MEDIUM:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/spen/R$style;->RobotoMedium:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/spen/R$style;->RobotoRegular:I

    :goto_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v2, p0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static varargs setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTextAppearance(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    return-void
.end method
