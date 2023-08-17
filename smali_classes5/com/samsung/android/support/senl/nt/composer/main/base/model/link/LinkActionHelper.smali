.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/LinkActionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mCustomLinkSpecComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastContextMenuHyperTextCustomLinkSpec:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/LinkActionHelper$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/LinkActionHelper$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/LinkActionHelper;->mCustomLinkSpecComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFirstLinkOnParsing(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;

    move-result-object p0

    const/16 v0, 0x1f

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->addLinks(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/LinkActionHelper;->pruneOverlapsSpanList(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    invoke-direct {p0, v0, v0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;-><init>(III)V

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    return-object p0
.end method

.method public static getLastHypertextType()Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/LinkActionHelper;->mLastContextMenuHyperTextCustomLinkSpec:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    return-object v0
.end method

.method private static getSpanListByLinkSpec(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    new-instance v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;

    iget v3, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->start:I

    add-int/2addr v3, p1

    iget v4, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->end:I

    add-int/2addr v4, p1

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;-><init>(III)V

    iget v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->type:I

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->setHyperTextType(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static parseHyperText(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    const/16 p3, 0x3f

    goto :goto_0

    :cond_0
    const/16 p3, 0x1f

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->addLinks(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/LinkActionHelper;->pruneOverlapsSpanList(Ljava/util/ArrayList;)V

    invoke-static {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/LinkActionHelper;->getSpanListByLinkSpec(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static parseHyperTextForCalculator(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkify;->addLinks(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/LinkActionHelper;->getSpanListByLinkSpec(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method private static pruneOverlapsSpanList(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/LinkActionHelper;->mCustomLinkSpecComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getStart()I

    move-result v5

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getStart()I

    move-result v6

    if-gt v5, v6, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getEnd()I

    move-result v5

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getStart()I

    move-result v6

    if-le v5, v6, :cond_4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getEnd()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getEnd()I

    move-result v6

    const/4 v7, -0x1

    if-gt v5, v6, :cond_1

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getEnd()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getStart()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getEnd()I

    move-result v6

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getStart()I

    move-result v8

    sub-int/2addr v6, v8

    if-le v5, v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getEnd()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getStart()I

    move-result v2

    sub-int/2addr v5, v2

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getEnd()I

    move-result v2

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;->getStart()I

    move-result v4

    sub-int/2addr v2, v4

    if-ge v5, v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v7

    :goto_2
    if-eq v2, v7, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public static setLastHypertextType(Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/LinkActionHelper;->mLastContextMenuHyperTextCustomLinkSpec:Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/CustomLinkSpec;

    return-void
.end method
