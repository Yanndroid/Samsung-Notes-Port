.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field private mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private final mPastePosition:Landroid/graphics/PointF;

.field private final mRestoreFilePath:Ljava/lang/String;

.field private mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private final mTargetPageIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskPaste#PasteObject"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;ILandroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mRestoreFilePath:Ljava/lang/String;

    iput p8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mTargetPageIndex:I

    iput-object p9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mPastePosition:Landroid/graphics/PointF;

    return-void
.end method

.method private handlePasteNextObject(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_PASTE_NEXT_OBJECT# index - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mObjectList:Ljava/util/List;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;->release()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mTargetPageIndex:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mPastePosition:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->addObjects(ILjava/util/List;Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mConstruct:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic$Construct;->release()V

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->handlePasteNextObject(Landroid/os/Message;)V

    return-void
.end method

.method public readyContents()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mRestoreFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->restoreObjectList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mObjectList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/CoeditRestriction;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/CoeditRestriction;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mObjectList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mRestoreFilePath:Ljava/lang/String;

    const-string v3, "clipdata_bodytext"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/CoeditRestriction;->applyCoeditRestrictionToObjects(Ljava/util/List;Z)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->setErrorCode(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/16 v0, 0x80

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mObjectList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pasteObj:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mObjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->addFileLog(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mIsReleased:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mObjectList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mObjectList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mRestoreFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->TAG:Ljava/lang/String;

    const-string v2, "release# removeCache"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mRestoreFilePath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->removeClosedCache(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->TAG:Ljava/lang/String;

    const-string v2, "release# fail to remove cache."

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteObject;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/AbsPasteLogic;->mContext:Landroid/content/Context;

    return-void
.end method
