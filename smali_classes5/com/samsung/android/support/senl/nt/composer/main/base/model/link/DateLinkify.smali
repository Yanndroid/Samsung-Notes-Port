.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLinks(Landroid/text/Spannable;Ljava/util/ArrayList;Ljava/util/Locale;)Ljava/util/ArrayList;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;",
            ">;"
        }
    .end annotation

    sput-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->mLocale:Ljava/util/Locale;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherAllLinks(Landroid/text/Spannable;Ljava/util/ArrayList;)V

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkifyHelper;->pruneOverlaps(Ljava/util/ArrayList;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;

    iget v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    iget v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->end:I

    const/4 v2, 0x2

    invoke-static {v1, v0, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->getHyperSpans(IIILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getStart()I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getEnd()I

    move-result v5

    if-gt v1, v4, :cond_2

    if-gt v5, v0, :cond_2

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-gt v4, v1, :cond_3

    if-gt v1, v5, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    return-object p2
.end method

.method private static gatherAllLinks(Landroid/text/Spannable;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->STANDARD_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->STANDARD_ONLY_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->STANDARD_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->STANDARD_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->ENGLISH_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->ENGLISH_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->ENGLISH_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->ENGLISH_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->ENGLISH_TIME_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->WESTERN_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->WESTERN_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->WESTERN_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->WESTERN_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->WESTERN_TIME_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    :goto_0
    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    goto :goto_1

    :cond_0
    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->KOREAN_ONLY_DATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->KOREAN_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->KOREAN_TIME_DATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->KOREAN_DATE_KEYWORD_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DatePatterns;->KOREAN_ONLY_TIME_PATTERN:Ljava/util/regex/Pattern;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;

    const/4 v0, 0x6

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-direct {p2, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/DateLinkSpec;-><init>(III)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getHyperSpans(IIILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getType()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getStart()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getEnd()I

    move-result v3

    if-gt p0, v2, :cond_1

    if-gt v2, p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-gt p0, v3, :cond_0

    if-gt v3, p1, :cond_0

    goto :goto_1

    :cond_2
    return-object v0
.end method
