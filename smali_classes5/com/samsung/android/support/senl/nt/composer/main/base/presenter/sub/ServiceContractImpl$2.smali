.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->onChangedDoc(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

.field public final synthetic val$docChanged:Z

.field public final synthetic val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

.field public final synthetic val$stateChanged:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;ZLcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->val$docChanged:Z

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->val$stateChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->val$docChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$Contract;->setUuidToHandoffSender()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getLastPenInfoOnlyOnce()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->val$stateChanged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;)Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedDoc, newNoteWorkingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;)Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSaveModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;)Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->setDocServiceWorkingState(Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$Contract;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$Contract;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->changeDocState(Landroidx/lifecycle/LifecycleOwner;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChangedDoc# same docState"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->val$docChanged:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChangedDoc# same doc"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->clearStateForChangeDoc(ZZ)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$Contract;->getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;->showComposerCover()V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->clearChangingInfo()V

    return-void
.end method
