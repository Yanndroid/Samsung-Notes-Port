.class public Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/FormulaTitleCreator;
.super Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator<",
        "Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "FormulaTitleCreator"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/FormulaTitleCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;-><init>()V

    return-void
.end method

.method private existOnlyFollowers(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 7
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_3

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v4

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectCount(IZ)I

    move-result v6

    add-int/2addr v2, v6

    const/16 v6, 0x400

    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    check-cast v6, Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectShapeBase;->getFollowers()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v3, v6

    if-le v2, v3, :cond_0

    :cond_1
    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/FormulaTitleCreator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "existOnlyFollowers, strokeCount : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", followerCount : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v2, :cond_4

    move v0, v5

    :cond_4
    return v0
.end method


# virtual methods
.method public apply(Landroid/content/res/Resources;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/FormulaTitleCreator;->needToCreateTitle(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;->MATH:Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public needToCreateTitle(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 4
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xb

    const/16 v1, 0x400

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;->findFirstObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;II)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/FormulaTitleCreator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apply, find object (needToCreateTitle) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getTitle()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->isEmptyBodyText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/FormulaTitleCreator;->existOnlyFollowers(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
