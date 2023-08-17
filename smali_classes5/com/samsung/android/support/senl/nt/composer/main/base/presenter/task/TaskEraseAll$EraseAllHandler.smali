.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EraseAllHandler"
.end annotation


# static fields
.field public static final MESSAGE_ERASEALL_NEXT:I = 0x1

.field public static final MESSAGE_ERASEALL_START:I


# instance fields
.field public mBeginHistory:Z

.field private mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$ResultValues;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;

.field private mIsCanceled:Z

.field private mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mTargetPages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mBeginHistory:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mIsCanceled:Z

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;->ALL:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mDeleteType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;-><init>()V

    return-void
.end method

.method private removeAllObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->removeObjects(I)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mIsCanceled:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EraseAllHandler#handleMessage, what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_ERASEALL_NEXT# index - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsCanceled - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mIsCanceled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mIsCanceled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->removeAllObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mDeleteType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;->ALL:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;

    if-ne v0, v2, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;->SPECIFIC:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mTargetPages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mBeginHistory:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->release()V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result p1

    if-gtz p1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->release()V

    return-void

    :cond_6
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EraseAll: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mDeleteType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {p1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->addFileLog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result p1

    if-nez p1, :cond_7

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mBeginHistory:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->beginHistoryGroup()Z

    :cond_7
    const/4 p1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mDeleteType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;->SPECIFIC:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mTargetPages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mTargetPages:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->cancel()V

    :cond_9
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3
    return-void
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$ResultValues;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mDeleteType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;->SPECIFIC:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$DeleteType;

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$InputValues;)Ljava/util/Queue;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mTargetPages:Ljava/util/Queue;

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$EraseAllHandler;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$ResultValues;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskEraseAll$ResultValues;-><init>()V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
