.class public Lcom/samsung/android/support/senl/nt/base/common/util/HighlightTextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HighlightTextUtils"

.field private static startHighlightingFrom:I


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

.method private static createSearchHighlightPattern(Ljava/lang/String;)[Ljava/util/regex/Pattern;
    .locals 11

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [Ljava/util/regex/Pattern;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v5, p0, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    const-string v8, "[$*()+|<>?{}\\[\\]\\{\\}\\^\\\\\\.]"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v7

    :goto_2
    if-ltz v10, :cond_4

    add-int/lit8 v7, v10, 0x1

    invoke-virtual {v5, v10, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "\\"

    invoke-virtual {v9, v10, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v10, :cond_3

    const-string v7, "[\\s]{0,}"

    invoke-virtual {v9, v10, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    aput-object v6, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static highlightMessage([Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;ILandroid/text/TextPaint;)Landroid/text/SpannableStringBuilder;
    .locals 10

    const-string v0, "HighlightTextUtils"

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    if-nez p3, :cond_0

    goto/16 :goto_5

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_b

    aget-object v4, p0, v3

    :try_start_0
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    sput v2, Lcom/samsung/android/support/senl/nt/base/common/util/HighlightTextUtils;->startHighlightingFrom:I

    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_a

    array-length v5, p1

    move v6, v2

    move v7, v6

    :goto_2
    if-ge v6, v5, :cond_6

    aget v8, p1, v6

    if-nez v8, :cond_2

    aget v8, p2, v6

    if-nez v8, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    aget v9, p1, v6

    if-lt v8, v9, :cond_3

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    aget v9, p2, v6

    if-lt v8, v9, :cond_4

    :cond_3
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    aget v9, p1, v6

    if-le v8, v9, :cond_5

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    aget v9, p2, v6

    if-gt v8, v9, :cond_5

    :cond_4
    const/4 v7, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-nez v7, :cond_1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ge v6, v5, :cond_7

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "highligh end="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isSemDevice()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_8

    :try_start_1
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {p5, v7, v8}, Lcom/samsung/android/support/senl/cm/base/framework/text/TextUtilsCompat;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_0
    move-exception v7

    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "highlightMessage: NoSuchMethodError] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    if-eqz v6, :cond_9

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    array-length v6, v6

    add-int/2addr v5, v6

    :cond_9
    invoke-static {p3, v4, v2, p5, p4}, Lcom/samsung/android/support/senl/nt/base/common/util/HighlightTextUtils;->highlightRegional(Landroid/text/SpannableStringBuilder;Ljava/util/regex/Matcher;ZLandroid/text/TextPaint;I)Z

    move-result v6

    if-nez v6, :cond_1

    sget v6, Lcom/samsung/android/support/senl/nt/base/common/util/HighlightTextUtils;->startHighlightingFrom:I

    if-gtz v6, :cond_1

    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v6, p4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {p3, v6, v7, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    const-string v4, "IllegalArgumentException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_5
    return-object p3
.end method

.method private static highlightRegional(Landroid/text/SpannableStringBuilder;Ljava/util/regex/Matcher;ZLandroid/text/TextPaint;I)Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isSemDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget v2, Lcom/samsung/android/support/senl/nt/base/common/util/HighlightTextUtils;->startHighlightingFrom:I

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p3, v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/text/TextUtilsCompat;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/base/common/util/HighlightTextUtils;->startHighlightingFrom:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p3, v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/text/TextUtilsCompat;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "highlightRegional: NoSuchMethodError] "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HighlightTextUtils"

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-nez v0, :cond_2

    return v1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/HighlightTextUtils;->createSearchHighlightPattern(Ljava/lang/String;)[Ljava/util/regex/Pattern;

    move-result-object p1

    if-eqz p1, :cond_6

    array-length p3, p1

    move v0, v1

    :goto_2
    if-ge v0, p3, :cond_6

    aget-object v2, p1, v0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :cond_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    sget v4, Lcom/samsung/android/support/senl/nt/base/common/util/HighlightTextUtils;->startHighlightingFrom:I

    if-lt v3, v4, :cond_3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    if-eqz p2, :cond_4

    invoke-direct {v4, p4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v4, v3, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_4
    invoke-direct {v4, p4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_3
    sput v2, Lcom/samsung/android/support/senl/nt/base/common/util/HighlightTextUtils;->startHighlightingFrom:I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public static setHighlightText(Landroid/text/SpannableString;Ljava/lang/String;Landroid/text/TextPaint;I)Landroid/text/SpannableString;
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    new-array v2, v0, [I

    new-array v3, v0, [I

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/HighlightTextUtils;->createSearchHighlightPattern(Ljava/lang/String;)[Ljava/util/regex/Pattern;

    move-result-object v1

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move v5, p3

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/base/common/util/HighlightTextUtils;->highlightMessage([Ljava/util/regex/Pattern;[I[ILandroid/text/SpannableStringBuilder;ILandroid/text/TextPaint;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-static {p0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method
