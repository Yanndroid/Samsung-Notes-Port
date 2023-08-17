.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->goToInvitedNote(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

.field public final synthetic val$caller:Ljava/lang/String;

.field public final synthetic val$groupId:Ljava/lang/String;

.field public final synthetic val$isForceDownload:Z

.field public final synthetic val$isStandalone:Z

.field public final synthetic val$spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$isStandalone:Z

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$groupId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$spaceId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$caller:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$isForceDownload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$isStandalone:Z

    const-string v1, ", spaceId : "

    const-string v2, "CoeditMode"

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getSyncNoteDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$groupId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getUuidByGroupIdStandAlone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goToInvitedNote#onStandaloneSelected groupId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$groupId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$spaceId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->removeProgressCircle()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$caller:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->o(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteEventManager;->getEventBus()Lcom/samsung/android/support/senl/nt/coedit/caller/EventBus;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$groupId:Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;)V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister$Callback;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/caller/EventBus;->register(Lcom/samsung/android/support/senl/nt/coedit/caller/Listenable;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$isForceDownload:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$spaceId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditBaseMode;->requestDownloadByPush(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goToInvitedNote#onSpaceSelected groupId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$groupId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->removeProgressCircle()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$groupId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->onSpaceSelected(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
