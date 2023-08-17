.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private requestImport(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedNotesUUID()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;->requestImportToSpace(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPickMode(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreatePasswordFail(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCreatePasswordSuccess(ILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public varargs onLockFail(II[Ljava/lang/String;)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLockFail# requestCode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failCode "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "LockHelper"

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object p1

    const/16 p2, 0x7d

    const-string p3, "android.permission.GET_ACCOUNTS"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p1, 0xa

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "tried to lock deleted notes"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;->onTaskFinished()V

    return-void
.end method

.method public varargs onLockSuccess(I[Ljava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUnlockSuccess# requestCode : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LockHelper"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x6d

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;->onTaskFinished()V

    :cond_0
    return-void
.end method

.method public varargs onUnlockFail(II[Ljava/lang/String;)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUnlockFail# requestCode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failCode "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "LockHelper"

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object p1

    const/16 p2, 0x7d

    const-string p3, "android.permission.GET_ACCOUNTS"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;->onTaskFinished()V

    return-void
.end method

.method public varargs onUnlockSuccess(ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUnlockSuccess# requestCode : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LockHelper"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x69

    if-eq p1, p3, :cond_2

    const/16 p3, 0x6a

    if-eq p1, p3, :cond_1

    const/16 p3, 0x6c

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;-><init>()V

    const-string p3, "sdoc_uuid"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    const-string p3, "category_id"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setFolderUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    const-string p3, "doc_path"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    const-string p3, "lock_account_guid"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setGuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->build()Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;->onNoteSelectedWidget(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;->moveToSecureFolder(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;->onTaskFinished()V

    :goto_0
    return-void
.end method

.method public varargs onVerifyFail(II[Ljava/lang/String;)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVerifyFail# requestCode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " failCode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LockHelper"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x8

    if-ne p2, p3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object p1

    const/16 p2, 0x7d

    const-string p3, "android.permission.GET_ACCOUNTS"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p2, 0x6b

    if-eq p1, p2, :cond_2

    const/16 p2, 0x70

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;->dismissDeleteDialog()V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;->onTaskFinished()V

    return-void
.end method

.method public varargs onVerifySuccess(ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVerifySuccess# requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x6b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x385

    const/4 v2, -0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v3, 0x0

    const-string v4, "spaceId"

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->requestImport(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->requestImport(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;->onFolderDeleteVerifySuccess()V

    goto/16 :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;->addConvertNoteTipCard(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :pswitch_4
    const-string p1, "sdoc_uuid"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p3

    if-nez p3, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onVerifySuccess# noteData : null, noteUuid : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "extra_key_legacy_password"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "extra_key_legacy_lock_after_convert"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {v0, p3, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;Z)V

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    const-string v1, "key_save_list"

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    const-string v1, "key_share_list"

    :goto_0
    invoke-static {v0, p2, v1, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;Landroid/content/Intent;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-class p3, Lcom/samsung/android/support/senl/nt/app/nativecomposer/ComposerActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p3, "CONFIRM_RESULT"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p3, 0x10008000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_3
    :goto_1
    :pswitch_8
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;

    move-result-object p3

    invoke-interface {p3, p1, v2, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;->onActivityResultAfterVerify(IILandroid/content/Intent;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$IPresenter;->deleteItems()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
