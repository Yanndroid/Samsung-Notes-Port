.class public Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SDOCX_CRLF_REGEX:Ljava/lang/String; = "\\r|\\n"

.field private static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "CharUtils"

.field private static mFontIndex:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mFontScales:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static mLargeFontIndex:I = -0x1

.field private static mMediumFontIndex:I = -0x1

.field private static mSmallFontIndex:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mFontScales:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mFontIndex:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getLargeFontIndex(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilSpecificSize(Landroid/content/Context;Landroid/widget/TextView;FI)V

    return-void
.end method

.method public static applyTextSizeUntilMediumSize(Landroid/content/Context;Landroid/widget/TextView;F)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getMediumFontIndex(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilSpecificSize(Landroid/content/Context;Landroid/widget/TextView;FI)V

    return-void
.end method

.method public static applyTextSizeUntilSmallSize(Landroid/content/Context;Landroid/widget/TextView;F)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getSmallFontIndex(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilSpecificSize(Landroid/content/Context;Landroid/widget/TextView;FI)V

    return-void
.end method

.method private static applyTextSizeUntilSpecificSize(Landroid/content/Context;Landroid/widget/TextView;FI)V
    .locals 3

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isOtherCorpDevice()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getDexFontScale(Landroid/content/Context;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getFontIndex(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getGlobalFontSize(Landroid/content/Context;)I

    move-result v0

    :goto_0
    if-gt v0, p3, :cond_3

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_3
    invoke-static {p0, p3}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getFontScale(Landroid/content/Context;I)F

    move-result p3

    const/4 v0, 0x0

    mul-float/2addr p2, p3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static arrayJoin(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertSpannablerToSpen(Landroid/text/SpannableStringBuilder;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V
    .locals 12

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSpan()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSpan()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextLimit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_c

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const-class v5, Landroid/text/style/CharacterStyle;

    invoke-virtual {p0, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    if-ge v1, v4, :cond_1

    move v4, v1

    :cond_1
    const-class v5, Landroid/text/style/CharacterStyle;

    invoke-virtual {p0, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/CharacterStyle;

    array-length v6, v5

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_b

    aget-object v8, v5, v7

    instance-of v9, v8, Landroid/text/style/StrikethroughSpan;

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eqz v9, :cond_2

    new-instance v8, Lcom/samsung/android/sdk/pen/document/textspan/SpenStrikethroughSpan;

    invoke-direct {v8, v3, v4, v11, v10}, Lcom/samsung/android/sdk/pen/document/textspan/SpenStrikethroughSpan;-><init>(IIIZ)V

    :goto_3
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_2
    instance-of v9, v8, Landroid/text/style/UnderlineSpan;

    if-eqz v9, :cond_3

    new-instance v8, Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;

    invoke-direct {v8, v3, v4, v11, v10}, Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;-><init>(IIIZ)V

    goto :goto_3

    :cond_3
    instance-of v9, v8, Landroid/text/style/ForegroundColorSpan;

    if-eqz v9, :cond_4

    new-instance v9, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;

    check-cast v8, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v8}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v8

    invoke-direct {v9, v3, v4, v11, v8}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;-><init>(IIII)V

    :goto_4
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    instance-of v9, v8, Landroid/text/style/BackgroundColorSpan;

    if-eqz v9, :cond_5

    new-instance v9, Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;

    check-cast v8, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v8}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v8

    invoke-direct {v9, v3, v4, v11, v8}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;-><init>(IIII)V

    goto :goto_4

    :cond_5
    instance-of v9, v8, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v9, :cond_6

    new-instance v9, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    check-cast v8, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v8}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v9, v3, v4, v11, v8}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;-><init>(IIIF)V

    goto :goto_4

    :cond_6
    instance-of v9, v8, Landroid/text/style/RelativeSizeSpan;

    if-eqz v9, :cond_7

    new-instance v9, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    check-cast v8, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v8}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->getFontSize()F

    move-result v10

    mul-float/2addr v8, v10

    invoke-direct {v9, v3, v4, v11, v8}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;-><init>(IIIF)V

    goto :goto_4

    :cond_7
    instance-of v9, v8, Landroid/text/style/StyleSpan;

    if-eqz v9, :cond_9

    check-cast v8, Landroid/text/style/StyleSpan;

    invoke-virtual {v8}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v8

    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_8

    new-instance v9, Lcom/samsung/android/sdk/pen/document/textspan/SpenBoldSpan;

    invoke-direct {v9, v3, v4, v11, v10}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBoldSpan;-><init>(IIIZ)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_a

    new-instance v8, Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;

    invoke-direct {v8, v3, v4, v11, v10}, Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;-><init>(IIIZ)V

    goto :goto_3

    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertSpannablerToSpen#CharacterStyle It is not supported. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CharUtils"

    invoke-static {v9, v8}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_b
    move v3, v4

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextSpan(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextParagraph()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextParagraph()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v3, Landroid/text/style/BulletSpan;

    invoke-virtual {p0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/BulletSpan;

    array-length v3, v1

    move v4, v2

    :goto_7
    if-ge v4, v3, :cond_e

    aget-object v5, v1, v4

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v6, v5

    new-instance v5, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    add-int/lit8 v7, v6, 0x1

    const/16 v8, 0x8

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;-><init>(III)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setTextParagraph(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static convertToLocalNumberString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-gt v0, v2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%d"

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static cutText(Ljava/lang/CharSequence;IIILandroid/graphics/Paint;)Ljava/lang/CharSequence;
    .locals 17
    .param p4    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v8, p2, v0

    add-int/lit8 v3, v1, 0xa

    const/4 v12, 0x0

    if-le v8, v3, :cond_0

    add-int v2, v8, v0

    move-object/from16 v3, p0

    invoke-interface {v3, v12, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v13, v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    move v13, v2

    move-object v2, v3

    :goto_0
    new-array v14, v13, [F

    new-array v4, v13, [C

    const/4 v15, 0x1

    if-nez p4, :cond_1

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v15}, Landroid/graphics/Paint;-><init>(I)V

    goto :goto_1

    :cond_1
    move-object/from16 v3, p4

    :goto_1
    invoke-static {v2, v12, v8, v4, v12}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v6, v8

    move-object v10, v14

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move v3, v12

    move v4, v3

    :goto_2
    if-ge v12, v13, :cond_4

    aget v5, v14, v12

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    if-eq v3, v4, :cond_2

    if-ge v1, v4, :cond_2

    sub-int/2addr v3, v15

    invoke-interface {v2, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_2
    move v3, v12

    :cond_3
    add-int/lit8 v4, v12, 0x1

    move/from16 v16, v12

    move v12, v4

    move/from16 v4, v16

    goto :goto_2

    :cond_4
    add-int/2addr v1, v0

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "_"

    const-string v2, "-"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayLanguage, languageForDisplay is invalid, locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", langCode: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CharUtils"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    if-le v0, v3, :cond_2

    const-string v0, "GB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "UK"

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "_"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static getFontIndex(Landroid/content/Context;F)I
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mFontIndex:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getSystemFontScale(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mFontIndex:Ljava/util/Map;

    aget-object v3, p0, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mFontIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_1
    sget-object p0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mFontIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mFontIndex:Ljava/util/Map;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return v1
.end method

.method private static getFontScale(Landroid/content/Context;I)F
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mFontScales:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getSystemFontScale(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mFontScales:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mFontScales:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    sget-object p0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mFontScales:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_3

    sget-object p0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mFontScales:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static getLargeFontIndex(Landroid/content/Context;)I
    .locals 4

    sget v0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mLargeFontIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getSystemFontIndex(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    const-string v0, "Large"

    goto :goto_0

    :cond_1
    const-string v0, "1.3"

    :goto_0
    if-eqz p0, :cond_3

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sput v2, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mLargeFontIndex:I

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x4

    sput p0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mLargeFontIndex:I

    return p0
.end method

.method private static getMediumFontIndex(Landroid/content/Context;)I
    .locals 4

    sget v0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mMediumFontIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getSystemFontIndex(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    const-string v0, "Medium"

    goto :goto_0

    :cond_1
    const-string v0, "1.1"

    :goto_0
    if-eqz p0, :cond_3

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sput v2, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mMediumFontIndex:I

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x3

    sput p0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mMediumFontIndex:I

    return p0
.end method

.method public static getPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isSemDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/text/TextUtilsCompat;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "highlightMessage: NoSuchMethodError] "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CharUtils"

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSmallFontIndex(Landroid/content/Context;)I
    .locals 4

    sget v0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mSmallFontIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->getSystemFontIndex(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    const-string v0, "Small"

    goto :goto_0

    :cond_1
    const-string v0, "1.0"

    :goto_0
    if-eqz p0, :cond_3

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sput v2, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mSmallFontIndex:I

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x2

    sput p0, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->mSmallFontIndex:I

    return p0
.end method

.method private static getSystemFontIndex(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "com.android.settings"

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    const-string v2, "entry_7_step_font_size"

    :goto_0
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getStringArrayFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    const-string v2, "sec_entryvalues_8_step_font_size"

    goto :goto_0
.end method

.method private static getSystemFontScale(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "com.android.settings"

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    const-string v2, "entryvalues_7_step_font_size"

    :goto_0
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getStringArrayFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    const-string v2, "sec_entryvalues_8_step_font_size"

    goto :goto_0
.end method

.method public static isValidByteSymbol(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x262a

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    const/16 p1, 0x271d

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
