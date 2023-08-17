.class public Lcom/samsung/android/sdk/pen/text/SpenTextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/text/SpenTextUtils$CustomTypefaceSpan;,
        Lcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;,
        Lcom/samsung/android/sdk/pen/text/SpenTextUtils$CoordinateInfo;
    }
.end annotation


# static fields
.field public static final CR_CHAR:C = '\r'

.field public static final EPSILON:F = 1.0E-7f

.field public static final LF_CHAR:C = '\n'

.field public static final SPACE_CHAR:C = ' '

.field public static final TAB_CHAR:C = '\t'

.field private static final TAG:Ljava/lang/String; = "SpenTextUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFontColorSpan(Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;IILcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v2

    if-ne p2, v2, :cond_0

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;->getColor()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->color:I

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result p2

    if-ne p2, p3, :cond_3

    if-nez p3, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v2

    if-gt v2, p2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result p2

    if-lt p2, p3, :cond_2

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;->getColor()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->color:I

    return v0

    :cond_2
    invoke-virtual {p4}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;->hasDuplicates()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    :goto_0
    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;->getColor()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->color:I

    invoke-virtual {p4}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;->findSpan()V

    goto :goto_1

    :cond_4
    iget p2, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->color:I

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;->getColor()I

    move-result p1

    if-eq p2, p1, :cond_5

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->color:I

    :cond_5
    :goto_1
    move v0, v1

    :goto_2
    return v0
.end method

.method private static checkFontNameSpan(Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;IILcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p2, p3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v1

    if-ne p2, v1, :cond_0

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontNameSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontNameSpan;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->font:Ljava/lang/String;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result p2

    if-ne p2, p3, :cond_3

    if-nez p3, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v1

    if-gt v1, p2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result p2

    if-lt p2, p3, :cond_2

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontNameSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontNameSpan;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->font:Ljava/lang/String;

    return v0

    :cond_2
    invoke-virtual {p4}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;->hasDuplicates()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    :goto_0
    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontNameSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontNameSpan;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->font:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;->findSpan()V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->font:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontNameSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontNameSpan;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->font:Ljava/lang/String;

    :cond_5
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private static checkFontSpan(Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;IILcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p2, p3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v1

    if-ne p2, v1, :cond_0

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->getSize()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->size:F

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result p2

    if-ne p2, p3, :cond_3

    if-nez p3, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v1

    if-gt v1, p2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result p2

    if-lt p2, p3, :cond_2

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->getSize()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->size:F

    return v0

    :cond_2
    invoke-virtual {p4}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;->hasDuplicates()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    :goto_0
    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->getSize()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->size:F

    invoke-virtual {p4}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils$DuplicateSpanVerifier;->findSpan()V

    goto :goto_1

    :cond_4
    iget p2, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->size:F

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->getSize()F

    move-result p1

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;->size:F

    :cond_5
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public static getDefaultTypeFaceSpan()Landroid/text/style/CharacterStyle;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/text/SpenTextUtils$CustomTypefaceSpan;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils$CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    return-object v0
.end method

.method public static getEnterCount(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;IZ)I
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    const/16 v3, 0xa

    if-eqz p2, :cond_5

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnterCount() invalid pos : "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenTextUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    :goto_0
    move p2, v0

    :goto_1
    if-ge v0, p1, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, p2

    goto :goto_4

    :cond_5
    :goto_2
    if-ge p1, v1, :cond_8

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p2, v3, :cond_7

    if-ne p2, v2, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    const/4 v0, 0x1

    :cond_8
    :goto_4
    return v0
.end method

.method public static getKeyListener(Ljava/lang/String;)Landroid/text/method/TextKeyListener;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    sget-object p0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    :goto_0
    invoke-static {v0, p0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_0
.end method

.method public static initEditable(Landroid/text/Editable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x0

    if-lez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initEditable replace : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "SpenTextUtils"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-interface {p0, v1, p2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    if-eqz p1, :cond_3

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static insertLineFeed(Landroid/text/Editable;I)V
    .locals 2

    if-eqz p0, :cond_2

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-lez p1, :cond_1

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_2
    :goto_1
    return-void
.end method

.method public static isBullet(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextParagraph()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->getEnterCount(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;IZ)I

    move-result p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;

    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->getBulletType()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v3

    if-gt v3, p0, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v1

    if-ge p0, v1, :cond_1

    return v2

    :cond_2
    return v0
.end method

.method public static isEnter(Ljava/lang/CharSequence;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-ltz p1, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0xd

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static isIndent(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextParagraph()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/samsung/android/sdk/pen/text/SpenTextUtils;->getEnterCount(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;IZ)I

    move-result p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;

    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenIndentLevelParagraph;->getIndentLevel()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getStart()I

    move-result v3

    if-gt v3, p0, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->getEnd()I

    move-result v1

    if-ge p0, v1, :cond_1

    return v2

    :cond_2
    return v0
.end method

.method public static isUndoRedoIncompletely(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 2
    .param p0    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getUndoStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getRedoStatus()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
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

.method public static sendAccessibilityEventTypeViewTextChanged(Landroid/view/View;Ljava/lang/CharSequence;III)V
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static setParagraphAlign(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setParagraphAlign()\nalign = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;->setPosition(II)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenAlignmentParagraph;->setAlignment(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)V

    return-void
.end method

.method public static setTextBold(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;ZII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextBold()\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenBoldSpan;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBoldSpan;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setPosition(II)V

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setExpansion(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBoldSpan;->setBoldStyleEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    return-void
.end method

.method public static setTextFontColor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextFontColor()\ncolor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setPosition(II)V

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setExpansion(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;->setColor(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    return-void
.end method

.method public static setTextFontName(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextFontName()\nfont = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontNameSpan;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontNameSpan;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setPosition(II)V

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setExpansion(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontNameSpan;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    return-void
.end method

.method public static setTextFontSize(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;FII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextFontSize()\nsize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setPosition(II)V

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setExpansion(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->setSize(F)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    return-void
.end method

.method public static setTextItalic(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;ZII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextItalic()\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setPosition(II)V

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setExpansion(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenItalicSpan;->setItalicStyleEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    return-void
.end method

.method public static setTextUnderline(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;ZII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextUnderline()\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenTextUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setPosition(II)V

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->setExpansion(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenUnderlineSpan;->setUnderlineStyleEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    return-void
.end method

.method public static updateCursorAnchoInfo(Landroid/view/View;Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;Landroid/graphics/PointF;Landroid/graphics/RectF;)V
    .locals 6

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/16 p3, 0x9

    new-array p3, p3, [F

    iget v0, p2, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x2

    aput v0, p3, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x5

    aput p2, p3, v0

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {p1, p2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCursorAnchoInfo view - "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p3, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SpenTextUtils"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateCursorAnchoInfo cursor - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/inputmethod/CursorAnchorInfo;->getInsertionMarkerHorizontal()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/inputmethod/CursorAnchorInfo;->getInsertionMarkerTop()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static updateEditable(Landroid/text/Editable;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public static updateSelection(Landroid/view/View;Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;Landroid/text/Editable;)V
    .locals 8

    const-string v0, "SpenTextUtils"

    const-string/jumbo v1, "updateSelection()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/text/inputmethod/SpenInputConnection;->getBatchEditNesting()I

    move-result p1

    if-gtz p1, :cond_2

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v1, -0x1

    if-lez p1, :cond_1

    invoke-static {p2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result p1

    invoke-static {p2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result p2

    move v6, p1

    move v7, p2

    goto :goto_0

    :cond_1
    move v6, v1

    move v7, v6

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSelection() selStart : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", selEnd : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", candStart : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", candEnd : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    :cond_2
    :goto_1
    return-void
.end method
