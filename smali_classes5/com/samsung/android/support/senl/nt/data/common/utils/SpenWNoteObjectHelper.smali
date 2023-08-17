.class public Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SpenObject:",
        "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SpenWNoteObjectHelper"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static existOnlyStrokeObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 4
    .param p0    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->isEmptyBodyText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->TAG:Ljava/lang/String;

    const-string v0, "existOnlyStrokeObject, body text exists"

    :goto_0
    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->hasObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x7

    invoke-virtual {v0, p0, v3}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->hasObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v0, p0, v3}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->hasObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    sget-object p0, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "existOnlyStrokeObject, find stroke object : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private findFirstPageObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 4
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "I)TSpenObject;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList(I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    return-object p1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getFirstPageObjectCount(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectCount(Z)I

    move-result v0

    const v1, 0x1ffff

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyObjectList(I)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public static getWeightAllObjectForSync(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageObjectCount(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageObjectCount()I

    move-result p0

    sub-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x4

    add-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1
.end method

.method public static hasPdfObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result p0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEmptyBodyText(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "\ufffc"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\\s*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public findFirstBodyObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "I)TSpenObject;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyObjectList(I)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public findFirstObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;II)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "II)TSpenObject;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->hasObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->TAG:Ljava/lang/String;

    const-string p2, "findFirstObject, object not exist"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->findFirstBodyObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p2

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->findFirstPageObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float p3, p3, v0

    if-gez p3, :cond_3

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    :cond_3
    move-object p2, p1

    :cond_4
    :goto_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "findFirstObject, first : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public getObjectList(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Ljava/util/List;
    .locals 5
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "I)",
            "Ljava/util/List<",
            "TSpenObject;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList(I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyObjectList(I)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public getSortedObjectList(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Ljava/util/List;
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "I)",
            "Ljava/util/List<",
            "TSpenObject;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->getObjectList(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper$1;-><init>(Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public hasObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Z
    .locals 1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->hasObject(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->hasBodyObject(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
