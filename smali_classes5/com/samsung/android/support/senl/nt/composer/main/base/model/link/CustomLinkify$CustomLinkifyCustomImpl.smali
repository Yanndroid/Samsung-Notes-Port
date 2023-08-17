.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCommonImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomLinkifyCustomImpl"
.end annotation


# instance fields
.field private final sUrlMatchFilter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$MatchFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCommonImpl;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl;->sUrlMatchFilter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$MatchFilter;

    return-void
.end method

.method private gatherMapLinks(Ljava/util/List;Ljava/lang/String;)Z
    .locals 7
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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    invoke-static {p2}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    const/4 v6, 0x5

    add-int/2addr v4, v2

    add-int/2addr v2, v3

    invoke-direct {v5, v6, v4, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;-><init>(III)V

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public addLinks(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

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

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroidx/core/util/PatternsCompat;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl;->sUrlMatchFilter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$MatchFilter;

    const/4 v6, 0x3

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;->gatherLinks(Ljava/util/List;Ljava/lang/String;Ljava/util/regex/Pattern;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$MatchFilter;I)V

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    sget-object v4, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyImpl;->gatherLinks(Ljava/util/List;Ljava/lang/String;Ljava/util/regex/Pattern;Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$MatchFilter;I)V

    :cond_1
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCustomImpl;->gatherMapLinks(Ljava/util/List;Ljava/lang/String;)Z

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify$CustomLinkifyCommonImpl;->addLinks(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method
