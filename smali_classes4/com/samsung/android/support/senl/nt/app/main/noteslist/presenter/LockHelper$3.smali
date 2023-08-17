.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->startConvert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

.field public final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic val$isLockAfterConvert:Z

.field public final synthetic val$isSDocConvert:Z

.field public final synthetic val$uuid:Ljava/lang/String;

.field public final synthetic val$wrappedLockFileController:Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;Ljava/lang/String;ZZLandroidx/fragment/app/FragmentActivity;Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->val$uuid:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->val$isSDocConvert:Z

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->val$isLockAfterConvert:Z

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->val$wrappedLockFileController:Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private releaseWrappedLockFileController()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->val$wrappedLockFileController:Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/convert/WrappedLockFileController;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreated()V
    .locals 3

    const-string v0, "LockHelper"

    const-string v1, "ConvertTask# onCreated"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->val$uuid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 3

    const-string p1, "LockHelper"

    const-string v0, "ConvertTask## onFailed"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->val$uuid:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;Ljava/lang/String;ZZ)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->disconnect()V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getState()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialogFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->releaseWrappedLockFileController()V

    return-void
.end method

.method public onPreFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;)V
    .locals 3

    const-string p1, "LockHelper"

    const-string v0, "ConvertTask# onPreFailed"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->val$uuid:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;Ljava/lang/String;ZZ)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->disconnect()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->releaseWrappedLockFileController()V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 10

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getDstType()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    const-string p1, "LockHelper"

    const-string v0, "ConvertTask# onSuccess"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->val$uuid:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isLockedNotes([Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {p1, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;Ljava/lang/String;ZZ)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->disconnect()V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->val$isSDocConvert:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->val$isLockAfterConvert:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;->getUuid()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdoc()Z

    move-result p2

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->val$activity:Landroidx/fragment/app/FragmentActivity;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;-><init>(Landroid/app/Activity;ZZZLjava/lang/Runnable;)V

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory;->SINGLE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/util/ArrayList;

    aput-object v0, v1, v3

    invoke-virtual {p1, p2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->releaseWrappedLockFileController()V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$3;->releaseWrappedLockFileController()V

    :cond_3
    :goto_2
    return-void
.end method
