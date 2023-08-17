.class public Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;
.super Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;,
        Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$Contract;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_SPACE_ID:Ljava/lang/String; = "space_id"

.field private static final KEY_SPACE_NAME:Ljava/lang/String; = "space_name"

.field private static final LOADER_ID:I = 0x64

.field public static final TAG:Ljava/lang/String; = "GcsGroupFragment"


# instance fields
.field private mAdapter:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;

.field private mContract:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$Contract;

.field private final mDeleteSpaceResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;

.field private final mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

.field private final mEditMenuDialogContract:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$IGroupEditMenuDialog;

.field private final mHolderContract:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder$GcsGroupHolderContract;

.field private mMenu:Landroid/view/Menu;

.field private mSelectedSpaceId:Ljava/lang/String;

.field private mSelectedSpaceName:Ljava/lang/String;

.field private final mShareContentObserver:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesReadResolverBase$a;

.field private mSharedNotebookRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

.field private final sharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mDeleteSpaceResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mEditMenuDialogContract:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$IGroupEditMenuDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mHolderContract:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder$GcsGroupHolderContract;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mShareContentObserver:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesReadResolverBase$a;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$6;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->sharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mContract:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$Contract;

    return-object p0
.end method

.method private addSharedNotebooks()V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;-><init>()V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_add_shared_notebook:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchorViewId(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setEditDialogResultListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "folder_name_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$IGroupEditMenuDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mEditMenuDialogContract:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$IGroupEditMenuDialog;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder$GcsGroupHolderContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mHolderContract:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder$GcsGroupHolderContract;

    return-object p0
.end method

.method private checkInvalidSpace()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private createSharedNotebooks(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "GcsGroupFragment"

    if-eqz v0, :cond_0

    const-string p1, "createSharedNotebooks(). groupId is null or empty."

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "createSharedNotebooks(). space name is null or empty."

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "createSharedNotebooks()"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->Create:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->checkNetworkConnection(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceWithUriRequest;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceName:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceWithUriRequest;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$9;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$9;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V

    invoke-static {p1, v0, v2}, Lu/h;->k(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceRequest;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS1-2] createSharedNotebooks() Exception : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mMenu:Landroid/view/Menu;

    return-object p0
.end method

.method private deleteLocalSharedSdoc(Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$14;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$b;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private deleteSharedNotebooks(Z)V
    .locals 12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->checkInvalidSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "GcsGroupFragment"

    const-string v0, "deleteSharedNotebooks(). error : no item selected."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_dialog_delete_title:I

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_dialog_delete_message:I

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_delete:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_dialog_leave_title:I

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_dialog_leave_message:I

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_edit_menu_dialog_action_leave:I

    :goto_0
    move v3, p1

    move v4, v0

    move v5, v1

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;-><init>(IIIIIIZIZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mDeleteSpaceResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "delete_confirm_dialog"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->createSharedNotebooks(Ljava/lang/String;)V

    return-void
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "GcsGroupFragment"

    const-string v1, "initLayout"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->collapsing_toolbar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->shared_notebooks:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->seslSetSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->shared_notebooks:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->shared_notebook_recyclerview:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSharedNotebookRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/a;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSharedNotebookRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSharedNotebookRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->deleteLocalSharedSdoc(Lcom/samsung/android/app/notes/sync/contentsharing/deletecore/DeleteLocalSharedSdocTask$DeleteType;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->deleteSharedNotebooks(Z)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->launchSocialPicker(Ljava/lang/String;)V

    return-void
.end method

.method private launchSocialPicker(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GcsGroupFragment"

    const-string v1, "launchSocialPicker()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isWiFiSyncOnlyAndNotWiFiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->showGoToSettingsDialog(Ljava/lang/ref/WeakReference;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-static {p1}, Lv/e;->f(Z)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x68

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->renameSharedNotebooks()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->requestSpaceDelete(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->requestSpaceLeave(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->showDisplayMessageToast(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->updateGroupMemberList(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->updateSharedNotebooks(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerSesDbObserver()V
    .locals 2

    const-string v0, "GcsGroupFragment"

    const-string v1, "registerSesDbObserver()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mShareContentObserver:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesReadResolverBase$a;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesReadResolverBase;->addContentObserver(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesReadResolverBase$a;)V

    return-void
.end method

.method private releaseBlockView()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->main_view_block:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "GcsGroupFragment"

    const-string v2, "blockView - gone"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private renameSharedNotebooks()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->checkInvalidSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GcsGroupFragment"

    const-string v1, "renameSharedNotebooks(). error : no item selected."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setEditDialogResultListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "folder_name_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private requestGroupCreation(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "GcsGroupFragment"

    const-string v1, "requestGroupCreation()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->Create:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->checkNetworkConnection(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceName:Ljava/lang/String;

    const-string v3, "UNM1"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;

    const-string v3, ""

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$15;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$15;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V

    invoke-static {v1, v2, p1}, Lu/g;->d(Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/mobileservice/common/exception/NotConnectedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/mobileservice/common/exception/NotSupportedApiException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/mobileservice/common/exception/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requestGroupCreation(). Exception : "

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requestGroupCreation(). NotAuthorizedException : "

    goto :goto_0

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requestGroupCreation(). NotSupportedApiException : "

    goto :goto_0

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requestGroupCreation(). NotConnectedException : "

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method

.method private requestSpaceDelete(Ljava/lang/String;)V
    .locals 4

    const-string v0, "GcsGroupFragment"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "requestSpaceDelete()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->Delete:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->checkNetworkConnection(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->getGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupBaseReadResolver;->isLocalGroupType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$11;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$11;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lu/g;->e(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$12;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$12;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lu/h;->l(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceDeletionResultCallback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS1-2] requestSpaceDelete(). Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p1, "requestSpaceDelete(). spaceId is null or empty."

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestSpaceLeave(Ljava/lang/String;)V
    .locals 4

    const-string v0, "GcsGroupFragment"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "requestSpaceLeave()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->Leave:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->checkNetworkConnection(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$13;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$13;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lu/g;->l(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSpaceLeave(). Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "requestSpaceLeave(). groupId is null or empty."

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->updateSpaceList()V

    return-void
.end method

.method private setLoader()V
    .locals 5

    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lu/b;->g()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->getLoader(I)Landroidx/loader/content/Loader;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "GcsGroupFragment"

    if-nez v2, :cond_1

    const-string v2, "setLoader call initLoader"

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    goto :goto_1

    :cond_1
    const-string v2, "setLoader call restartLoader"

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :goto_1
    return-void
.end method

.method private setNoNoteInVisible(Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->nonote:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNoNoteInVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GcsGroupFragment"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mContract:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$Contract;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$Contract;->setNoNoteLayoutVisible(Landroid/view/View;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showDisplayMessageToast(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$16;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$16;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private unRegisterSesDbObserver()V
    .locals 2

    const-string v0, "GcsGroupFragment"

    const-string v1, "unRegisterSesDbObserver()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mShareContentObserver:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesReadResolverBase$a;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesReadResolverBase;->removeContentObserver(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesReadResolverBase$a;)V

    return-void
.end method

.method private updateGroupMemberList(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lu/g;->k(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupMemberResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSpaceList() Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GcsGroupFragment"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateSharedNotebooks(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "GcsGroupFragment"

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "updateSharedNotebooks()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->Rename:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->checkNetworkConnection(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isWiFiSyncOnlyAndNotWiFiConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->showGoToSettingsDialog(Ljava/lang/ref/WeakReference;)V

    return-void

    :cond_1
    const-string v1, ""

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$10;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V

    invoke-static {p1, p2, v1, v2}, Lu/h;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceResultCallback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS1-2] updateSharedNotebooks(). Exception "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p1, "updateSharedNotebooks(). invalid spaceName."

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateSpaceList()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$8;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V

    invoke-static {v0}, Lu/h;->m(Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceListResultCallback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS1-2] updateSpaceList() Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GcsGroupFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult# requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GcsGroupFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v2, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x68

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_6

    if-eqz p3, :cond_6

    const-string p1, "jsonResult"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lv/e;->i(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string p2, "type"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "guid"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string p3, "number"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    const-string p3, "account"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 v2, 0x3

    :goto_0
    const-string p2, "ids"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    const-string p3, "optIds"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, v2, p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->requestGroupCreation(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_4
    const-string p3, "group"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p2, "groupId"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->createSharedNotebooks(Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult# REQUEST_CODE_LAUNCH_SOCIAL_PICKER - Unknown type : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    if-ne p2, v2, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mContract:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$Contract;

    const-string p2, "REQUEST_INTENT_INVITATION_LIST error"

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$Contract;->finish(Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSharedNotebookRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->updateRecyclerViewPaddingBottom(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->releaseBlockView()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->registerSesDbObserver()V

    const-string v0, "SharedInvitation"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->sharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    if-eqz p1, :cond_0

    const-string v0, "space_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceId:Ljava/lang/String;

    const-string v0, "space_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Landroidx/loader/content/CursorLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getSharedContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "createTime DESC"

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string v0, "GcsGroupFragment"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$menu;->gcs_grouplist_select:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->action_coedit_list:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mMenu:Landroid/view/Menu;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->action_add_shared_notebook:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->notes_toolbar_action_menu_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->action_invitation_list:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_invitation_list_menu_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_invitations:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$7;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Landroid/view/MenuItem;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/GcsInvitationMenuBadgeUpdater;->updateBadge(Landroid/content/Context;Landroid/view/MenuItem;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$layout;->gcs_group_list_fragment_for_mode:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->unRegisterSesDbObserver()V

    const-string v0, "SharedInvitation"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->sharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .param p1    # Landroidx/loader/content/Loader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->setNoNoteInVisible(Z)V

    return-void

    :cond_2
    :goto_1
    const-string p1, "GcsGroupFragment"

    const-string p2, "onLoadFinished# cursor is null or already closed"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroidx/loader/content/Loader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .param p1    # Landroidx/loader/content/Loader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mAdapter:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->SharedNoteBooks:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOptionsItemSelected# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GcsGroupFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_add_shared_notebook:I

    const-string v1, "662"

    if-ne p1, v0, :cond_1

    const-string p1, "6603"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->addSharedNotebooks()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_invitation_list:I

    if-ne p1, v0, :cond_2

    const-string p1, "6604"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/support/senl/nt/app/main/invitation/GcsInvitationActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return v2
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "662"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSharedNotebookRecyclerView:Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->updateRecyclerViewPaddingBottom(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceId:Ljava/lang/String;

    const-string v1, "space_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mSelectedSpaceName:Ljava/lang/String;

    const-string v1, "space_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->initLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "folder_name_dialog"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupNameDialogFragment;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setEditDialogResultListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "delete_confirm_dialog"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mDeleteSpaceResultListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/DeleteDialogFragment;->setContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IDeleteDialog;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->setLoader()V

    return-void
.end method

.method public restartLoader()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    const-string v1, "GcsGroupFragment"

    if-eqz v0, :cond_0

    const-string v0, "restartLoader# Can\'t access ViewModels from detached fragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/16 v2, 0x64

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2, v3, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restartLoader# Can\'t access ViewModels from detached fragment on restartLoader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->mContract:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$Contract;

    return-void
.end method
