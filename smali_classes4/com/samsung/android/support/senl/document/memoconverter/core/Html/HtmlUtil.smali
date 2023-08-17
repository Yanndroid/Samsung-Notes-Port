.class public final Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil$HtmlParser;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtmlUtil"

.field private static isImageSpan:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HtmlUtil"

    invoke-static {v0, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static filterHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromHtml(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;
    .locals 3

    new-instance v0, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    :try_start_0
    const-string v1, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil$HtmlParser;->access$000()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlToSpannedConverter;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlToSpannedConverter;-><init>(Landroid/content/Context;Lorg/ccil/cowan/tagsoup/Parser;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlToSpannedConverter;->releaseObject()V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static processHtmlImage(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 5

    :goto_0
    if-ge p2, p3, :cond_1

    const-class v0, Landroid/text/SpannableString;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    const-class v1, Landroid/text/SpannableString;

    invoke-interface {p1, p2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/SpannableString;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    move p2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\ufffc"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<p> "

    const-string v1, "<p>&nbsp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 4

    :goto_0
    if-ge p2, p3, :cond_2

    const/16 v0, 0xa

    invoke-static {p1, v0, p2, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    if-gez v1, :cond_0

    move v1, p3

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v1, p3, :cond_1

    invoke-interface {p1, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sub-int v0, v1, v2

    invoke-static {p0, p1, p2, v0, v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    move p2, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    const-class v0, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    move p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-string v1, "<p>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-class v2, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    invoke-static {p0, p1, v1, v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    move v1, v2

    goto :goto_0

    :cond_1
    const-string p1, "</p>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .locals 5

    :goto_0
    const/4 v0, 0x0

    if-ge p2, p3, :cond_3

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, p2, p3, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    const-class v2, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, p2, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    move v3, v0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    instance-of v4, v4, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;

    if-eqz v4, :cond_0

    aget-object v4, v2, v3

    check-cast v4, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->toHtml()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    sput-boolean v4, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil;->isImageSpan:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-boolean v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil;->isImageSpan:Z

    if-nez v2, :cond_2

    invoke-static {p0, p1, p2, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil;->processHtmlImage(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    :cond_2
    sput-boolean v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlUtil;->isImageSpan:Z

    move p2, v1

    goto :goto_0

    :cond_3
    :goto_2
    if-ge v0, p4, :cond_4

    const-string p1, "</p>\n<p>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 4

    :goto_0
    if-ge p2, p3, :cond_8

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    const/16 v3, 0x22

    if-eq v0, v3, :cond_4

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_3

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_5

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    const-string v0, "&apos;"

    goto :goto_1

    :cond_1
    const-string v0, "&amp;"

    goto :goto_1

    :cond_2
    const-string v0, "&gt;"

    goto :goto_1

    :cond_3
    const-string v0, "&lt;"

    goto :goto_1

    :cond_4
    const-string v0, "&quot;"

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_7

    :cond_6
    const-string p2, "&nbsp;"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method
