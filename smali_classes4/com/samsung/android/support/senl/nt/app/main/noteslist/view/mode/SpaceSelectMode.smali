.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$ShareSyncResultCallback;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$SpaceResultCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpaceSelectMode"


# instance fields
.field private mBlockView:Landroid/view/ViewGroup;

.field private mGcsSpaceDeleteProgressListener:Lr/a;

.field private mGcsSpaceImportProgressListener:Lr/a;

.field public mIsEditMode:Z

.field private mShareSyncResultCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$ShareSyncResultCallback;

.field public final mSpaceDeleteReceivedReceiver:Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceDeleteReceivedReceiver;

.field public final mSpaceMemberUpdateRecivedReceiver:Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceMemberUpdateReceivedReceiver;

.field private mSpaceResultCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$SpaceResultCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mIsEditMode:Z

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mSpaceDeleteReceivedReceiver:Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceDeleteReceivedReceiver;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mSpaceMemberUpdateRecivedReceiver:Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceMemberUpdateReceivedReceiver;

    return-void
.end method

.method private dismissMDEDeleteDialog()V
    .locals 2

    const-string v0, "SpaceSelectMode"

    const-string v1, "replaceDeleteBtnToProgress - tag: delete_mde_note_dialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "delete_mde_note_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogFragment;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private editGroupMember(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SpaceSelectMode"

    if-eqz v0, :cond_0

    const-string p1, "editGroupMember(). groupId is null or empty"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupBaseReadResolver;->isLocalGroupType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lv/e;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lv/e;->d(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "editGroupMember(). ActivityNotFoundException "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private enableVisibleHolder()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->getVisibleNoteInfoObject()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setEnable(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getVisibleNoteInfoObject()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->getHolderType()I

    move-result v4

    const/16 v5, 0x40

    if-lt v4, v5, :cond_1

    goto :goto_1

    :cond_1
    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->getNotesHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->dismissMDEDeleteDialog()V

    return-void
.end method

.method private hasOwnership(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lv/f;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->removeProgress()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->replaceDeleteBtnToProgress()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->requestSesShareSync()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->showProgress()V

    return-void
.end method

.method private launchSpacePickerActivity(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNotePickerClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "spaceId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "mode"

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "action_pick_notes_from_space"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->updateSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method private onOptionsItemSelectedSALogging(I)V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_edit:I

    const-string v1, "666"

    if-ne p1, v0, :cond_0

    const-string p1, "6608"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_group_member_list:I

    if-ne p1, v0, :cond_1

    const-string p1, "6601"

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_import_notes:I

    if-ne p1, v0, :cond_2

    const-string p1, "6624"

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private removeProgress()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeProgress mBlockView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mBlockView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpaceSelectMode"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mBlockView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mBlockView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private replaceDeleteBtnToProgress()V
    .locals 2

    const-string v0, "SpaceSelectMode"

    const-string v1, "replaceDeleteBtnToProgress - tag: delete_mde_note_dialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "delete_mde_note_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogFragment;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDialogFragment;->replaceBtnToProgress()V

    return-void
.end method

.method private requestSesShareSync()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mShareSyncResultCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$ShareSyncResultCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$ShareSyncResultCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$ShareSyncResultCallback;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/b;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mShareSyncResultCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$ShareSyncResultCallback;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mShareSyncResultCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$ShareSyncResultCallback;

    invoke-static {v0}, Lu/h;->o(Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareSyncResultCallback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS1-2] Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpaceSelectMode"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setGcsSpaceDeleteProgressListener()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mGcsSpaceDeleteProgressListener:Lr/a;

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mGcsSpaceDeleteProgressListener:Lr/a;

    invoke-virtual {v0, v1}, Lp/a;->a(Lr/a;)V

    return-void
.end method

.method private setGcsSpaceImportProgressListener()V
    .locals 2

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v0

    invoke-virtual {v0}, Lp/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->showProgress()V

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mGcsSpaceImportProgressListener:Lr/a;

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mGcsSpaceImportProgressListener:Lr/a;

    invoke-virtual {v0, v1}, Lp/a;->b(Lr/a;)V

    return-void
.end method

.method private setSpaceListLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->getSpaceTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarTitle(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->updateSubTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setDisplayHomeAsUpEnabled(ZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->initExtendedToolbar()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->showBottomNavigation(Z)V

    return-void
.end method

.method private setTipCard(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTipCard# caller : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->getTipCardHelper()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->clearTipCard(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->getModeIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->loadSyncTipCard(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->setSyncTipCardProgressListener()V

    :goto_0
    return-void
.end method

.method private showProgress()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProgress mBlockView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mBlockView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpaceSelectMode"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mBlockView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_progress_circle:I

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mBlockView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mBlockView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mBlockView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private updateSubTitle(Ljava/lang/String;)V
    .locals 13

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupBaseReadResolver;->getGroupCount(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_shared_with_n_members:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->isSpaceOwner(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_gcs_space_sub_title_owner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u200f"

    goto :goto_0

    :cond_0
    const-string v0, "\u200e"

    :goto_0
    invoke-interface {p1, v6, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->gcs_space_sub_title_crown_padding_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v10, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->gcs_group_list_item_count_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v11, v1

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/support/senl/nt/app/main/common/view/CustomImageMarginSpan;-><init>(ILandroid/graphics/drawable/Drawable;IIZ)V

    const/16 v1, 0x21

    invoke-interface {p1, v0, v6, v3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setToolbarSubTitle(Landroid/text/Editable;)V

    return-void
.end method


# virtual methods
.method public getIntentForNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x3

    invoke-static {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/IntentFactory;->makeIntent(ILandroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mde_space_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mde_group_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method public getModeIndex()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SpaceSelectMode"

    return-object v0
.end method

.method public onBackKeyDown()Z
    .locals 3

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v0

    invoke-virtual {v0}, Lp/a;->d()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SpaceSelectMode"

    if-eqz v0, :cond_0

    const-string v0, "onBackKeyDown# isMdeDeleting"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v0

    invoke-virtual {v0}, Lp/a;->s()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v0

    invoke-virtual {v0}, Lp/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onBackKeyDown# isMdeImporting"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v0

    invoke-virtual {v0}, Lp/a;->t()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onBackKeyDown()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    const/16 v2, 0x17

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->setMode(I)Z

    :goto_0
    return v1
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->hasOwnership(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Z

    move-result p3

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDirty()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstOpendAt()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-nez p2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1, p3, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setGcsExtraVisible(ZZZ)V

    return-void
.end method

.method public onContextClick(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContextClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpaceSelectMode"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getTouchPos()[F

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getRootCardView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    aget v5, v3, v2

    const/4 v6, 0x1

    aget v3, v3, v6

    invoke-static {v4, p1, v5, v3}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getAnchorView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object p1

    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x800003

    invoke-direct {v3, v4, p1, v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$menu;->gcs_spacelist_edit:I

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    new-array v4, v6, [Z

    aput-boolean v2, v4, v2

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v2

    invoke-virtual {v2}, Lv/b;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeOwnerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_delete:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    :cond_1
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_save_to_new_coedit:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$6;

    invoke-direct {p1, p0, v4, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$6;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;[ZLjava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$7;

    invoke-direct {p1, p0, v4, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$7;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;[ZLjava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    return v6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$menu;->gcs_spacelist_select:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->action_group_member_list:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->notes_toolbar_action_menu_color:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public onCustomKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    const/16 p2, 0x1000

    and-int/2addr p1, p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->UUID:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->onNewNote(Ljava/lang/String;I)V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onCustomKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onDataChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onDataChanged(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->hasCreatePostLogic()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->setTipCard(I)V

    :cond_0
    return-void
.end method

.method public onItemLongPressed(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "666"

    const-string v1, "6623"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->setEditMode(Z)Z

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onItemLongPressed(Ljava/lang/String;)Z

    return v0
.end method

.method public onLayout()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->onLayout()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->setSpaceListLayout()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->enableVisibleHolder()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->setTipCard(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->mActivity:Landroidx/fragment/app/FragmentActivity;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->main_view_block:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mBlockView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v1

    const-string v2, "mde_space_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->setSpaceId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v1

    const-string v2, "mde_group_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->setGroupId(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->getGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SpaceSelectMode"

    const-string v1, "onLayout() finish - groupId is null."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->onBackKeyDown()Z

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->setGcsSpaceDeleteProgressListener()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->setGcsSpaceImportProgressListener()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mSpaceDeleteReceivedReceiver:Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceDeleteReceivedReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceDeleteReceivedReceiver;->registerReceiver(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceDeleteReceivedReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mSpaceMemberUpdateRecivedReceiver:Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceMemberUpdateReceivedReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceMemberUpdateReceivedReceiver;->registerReceiver(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceMemberUpdateReceivedReceiver;)V

    return-void
.end method

.method public onModeEnd()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->onModeEnd()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mShareSyncResultCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$ShareSyncResultCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mShareSyncResultCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$ShareSyncResultCallback;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mSpaceResultCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$SpaceResultCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$SpaceResultCallback;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mSpaceResultCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$SpaceResultCallback;

    :cond_1
    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mGcsSpaceDeleteProgressListener:Lr/a;

    invoke-virtual {v0, v1}, Lp/a;->f(Lr/a;)V

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mGcsSpaceImportProgressListener:Lr/a;

    invoke-virtual {v0, v1}, Lp/a;->g(Lr/a;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mSpaceDeleteReceivedReceiver:Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceDeleteReceivedReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceDeleteReceivedReceiver;->unregisterReceiver(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceDeleteReceivedReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mSpaceMemberUpdateRecivedReceiver:Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceMemberUpdateReceivedReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceMemberUpdateReceivedReceiver;->unregisterReceiver(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/sync/receiver/GcsSpaceMemberUpdateReceivedReceiver;)V

    return-void
.end method

.method public onNewNote(Ljava/lang/String;I)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/support/senl/nt/app/nativecomposer/ComposerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.samsung.android.app.notes.ACTION_NEW_MEMO"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mde_space_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mde_group_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v0

    invoke-virtual {v0}, Lv/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mde_owner_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "writer_name"

    const-string v1, "test"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "account_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "tool_type"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "Settings"

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p2

    const-string v0, "settings_preferred_note_style"

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "page_type"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->UUID:Ljava/lang/String;

    const-string v0, "category_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const/4 v0, 0x7

    invoke-virtual {p2, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isFreeFormWindow(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->mActivity:Landroidx/fragment/app/FragmentActivity;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$anim;->new_activity_from_bottom_to_top:I

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$anim;->prev_activity_exit_with_dim:I

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 2

    const-string v0, "666"

    const-string v1, "6622"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->MemoList:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsItemSelected# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "SpaceSelectMode"

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->onOptionsItemSelectedSALogging(I)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_edit:I

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->setEditMode(Z)Z

    goto :goto_0

    :cond_1
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_group_member_list:I

    if-ne v2, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->getSpaceTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->editGroupMember(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_import_notes:I

    if-ne v2, p1, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->launchSpacePickerActivity(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_upload_now:I

    if-ne v2, p1, :cond_4

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v1, v0, v2}, Lp/a;->p(Ljava/lang/String;ZLandroid/app/Activity;)V

    :goto_0
    return v0

    :cond_4
    return v3
.end method

.method public onPostResume()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onPostResume()V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mIsEditMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->setTipCard(I)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getSyncNoteDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-result-object v3

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v4

    invoke-virtual {v4}, Lv/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getGcsOwnerNoteCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v1, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_edit:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :goto_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_upload_now:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getSyncNoteDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getCountIsDirty(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_edit:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getDocumentMap()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getAllNoteCount(IZ)I

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_import_notes:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_3
    return-void
.end method

.method public onSesSessionConnected()Z
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->onSesSessionConnected()Z

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mSpaceResultCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$SpaceResultCallback;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$SpaceResultCallback;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$SpaceResultCallback;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mSpaceResultCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$SpaceResultCallback;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->mSpaceResultCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$SpaceResultCallback;

    invoke-static {v1, v2}, Lu/h;->i(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS1-2] onSesSessionConnected# requestSpace e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpaceSelectMode"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v2, v3}, Lp/a;->l(Ljava/lang/String;Landroid/app/Activity;)V

    return v0
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;->enableVisibleHolder()V

    return-void
.end method

.method public setEditMode(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->setEditMode(Z)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/ModeContract$IView;->setMode(I)Z

    move-result p1

    return p1
.end method
