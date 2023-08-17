.class Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->getLockType(I)I

    move-result p0

    return p0
.end method

.method private getLockType(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :cond_1
    :goto_0
    return v1
.end method

.method private onPostFailed()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMemoryForNewMemo()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->unable_to_open_note:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->unable_to_create_note:I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    const-string v2, "onPostFailed"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->j(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;ILjava/lang/String;)V

    return-void
.end method

.method private onPostSuccess(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->hasMultipleUuids()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->s(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getUuid()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->p(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;->SPEN_SDOCX:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->t(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreated()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->m(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V

    :cond_0
    return-void
.end method

.method public onEnd(ZLcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConvertTaskCallback, onEnd#, success : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocOpenTriggerActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->onPostSuccess(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->onPostFailed()V

    :goto_0
    return-void
.end method

.method public onFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 0

    instance-of p1, p2, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->onPostFailed()V

    :cond_0
    return-void
.end method

.method public onPreFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;->getStatus()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConvertTaskCallback, onPreFailed#, status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DocOpenTriggerActivity"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x7

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    const-string v0, "onPreFailed#, unsupported file type"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9$2;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9$1;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->s(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 1

    instance-of p1, p2, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getDstType()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->onPostSuccess(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V

    :cond_0
    return-void
.end method
