.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->addPostLaunchLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->releaseInflatedView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->registerNoteListListener()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/FabMenuView;->inflateFab()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->k(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/SwipeRefreshView;->initView()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->importDemoSamples()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IFragment;->getAddonsHandler()Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->checkAddonsUpdate()V

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    const-string v2, "CONVERT"

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->collectReadyState(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->noticeAppPermissionIfNeededs(Landroid/app/Activity;)Z

    return-void
.end method
