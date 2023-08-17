.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCommonImpl;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomLinkifyCommonImpl"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/a;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateTimeString;->setWesternDateTimeFormat(Landroid/content/Context;)V

    return-void
.end method

.method private gatherPhoneLinks(Ljava/util/List;Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    sget-object p2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->d()Landroid/text/util/Linkify$MatchFilter;

    move-result-object v1

    const-string v2, "tel:"

    const/4 v3, 0x0

    invoke-static {v0, p2, v2, v1, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    array-length v2, v1

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    invoke-virtual {v0, v6}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v0, v6}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    add-int/lit8 v8, p2, -0x1

    :goto_1
    if-ltz v8, :cond_1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    iget v9, v9, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    iget v10, v10, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->end:I

    if-gt v9, v7, :cond_0

    if-gt v6, v10, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_2
    if-nez v5, :cond_2

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    const/4 v8, 0x2

    invoke-direct {v5, v8, v7, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;-><init>(III)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p2, :cond_4

    move v3, v5

    :cond_4
    return v3
.end method


# virtual methods
.method public addLinks(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCommonImpl;->gatherPhoneLinks(Ljava/util/List;Ljava/lang/String;)Z

    :cond_0
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->addLinks(Landroid/text/Spannable;Ljava/util/ArrayList;Ljava/util/Locale;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;->addLinks(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method
