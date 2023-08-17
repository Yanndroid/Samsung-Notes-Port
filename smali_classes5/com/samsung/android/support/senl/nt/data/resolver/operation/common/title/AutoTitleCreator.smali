.class public abstract Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator$CreationPriority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mObjectHelper:Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper<",
            "TObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;->mObjectHelper:Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;

    return-void
.end method


# virtual methods
.method public abstract apply(Landroid/content/res/Resources;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Ljava/lang/String;
.end method

.method public findFirstBodyObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "I)TObjectType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;->getObjectHelper()Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->findFirstBodyObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public findFirstObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;II)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;",
            "II)TObjectType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;->getObjectHelper()Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->findFirstObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;II)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    return-object p1
.end method

.method public getObjectHelper()Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper<",
            "TObjectType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;->mObjectHelper:Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;

    return-object v0
.end method

.method public hasObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Z
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;->getObjectHelper()Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->hasObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Z

    move-result p1

    return p1
.end method

.method public needToCreateTitle(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 4
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getTitle()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;->getObjectHelper()Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->hasObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/common/title/AutoTitleCreator;->needToCreateTitle(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public needToCreateTitle(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/common/utils/SpenWNoteObjectHelper;->isEmptyBodyText(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
