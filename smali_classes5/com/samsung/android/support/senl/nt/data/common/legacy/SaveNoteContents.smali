.class public Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;,
        Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TextDisplayContentCreator;,
        Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$ImageDisplayContentCreator;,
        Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDisplayTextCreator(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;ZZ)Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;-><init>(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;ZZ)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$ImageDisplayContentCreator;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$ImageDisplayContentCreator;-><init>(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;ZZ)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TextDisplayContentCreator;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TextDisplayContentCreator;-><init>(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;ZZ)V

    return-object v0
.end method

.method public static getContentsType(Ljava/util/ArrayList;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents;->isEmptyContentText(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents;->getFirstContentType(I)I

    move-result v2

    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents;->getSecondContentType(I)I

    move-result v3

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getDisplayText(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;Z)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TaskInfo;->isSameTaskGroup(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents;->createDisplayTextCreator(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;ZZ)Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->create()Landroid/text/Editable;

    move-result-object p0

    return-object p0
.end method

.method private static getFirstContentType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    return p0
.end method

.method private static getSecondContentType(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 p0, 0x0

    :cond_0
    return p0

    :cond_1
    return v0
.end method

.method private static isEmptyContentText(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z
    .locals 1

    instance-of v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskStyle()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeStrippedContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "\n*\ufffc\n*|\n+"

    const-string v2, "\n"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u00a0"

    const-string v2, " "

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[\u2b1b\u2b1c\t]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
