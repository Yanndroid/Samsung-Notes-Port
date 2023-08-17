.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectFindUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectFindUtil$Finder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;IILjava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectFindUtil$Finder;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectFindUtil;->getObjectFromObjectList(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;ILjava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectFindUtil$Finder;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-static {p0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectFindUtil;->getObjectFromObjectSpan(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;ILjava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectFindUtil$Finder;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p0

    return-object p0
.end method

.method private static getObjectFromObjectList(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;ILjava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectFindUtil$Finder;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-interface {p3, p2, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectFindUtil$Finder;->find(Ljava/lang/String;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_4
    return-object v1
.end method

.method private static getObjectFromObjectSpan(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;ILjava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectFindUtil$Finder;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getObjectSpan()Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-interface {p3, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectFindUtil$Finder;->find(Ljava/lang/String;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    return-object v0
.end method
