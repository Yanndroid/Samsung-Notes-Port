.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

.field private mRemovedObjectIdList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ActionLinkModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->mRemovedObjectIdList:Ljava/util/HashSet;

    return-object p0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->TAG:Ljava/lang/String;

    const-string v0, "onSaveInstanceState#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->deregisterObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy#, error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->mRemovedObjectIdList:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->mRemovedObjectIdList:Ljava/util/HashSet;

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->TAG:Ljava/lang/String;

    const-string v0, "restoreState#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->TAG:Ljava/lang/String;

    const-string v1, "setDoc#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->registerObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->mRemovedObjectIdList:Ljava/util/HashSet;

    return-void
.end method

.method public updateActionLinkData()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->isChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getStrokeRecognitionData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;

    iget-object v6, v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData;->actionLinkData:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$StrokeRecognitionData$LinkData;->repObjectUuid:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->mRemovedObjectIdList:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setStrokeRecognitionData(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->mRemovedObjectIdList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateActionLinkData# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateActionLinkData#, error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
