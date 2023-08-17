.class public Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$IPresenter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogManager"


# instance fields
.field private final mColorConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;

.field private final mConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

.field private final mDialogCreator:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogContract;

.field private final mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

.field private final mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

.field private final mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

.field private final mMoveConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

.field private final mPickerDialogListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$IPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogContract;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$IPresenter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mPickerDialogListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mMoveConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mColorConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mDialogCreator:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogContract;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$IPresenter;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$IPresenter;

    return-object p0
.end method


# virtual methods
.method public restoreInstanceState()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "folder_name_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setEditDialogResultListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;)V

    :cond_0
    const-string v1, "delete_confirm_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->setConfirmDialogResultListener(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;)V

    :cond_1
    const-string v1, "folder_picker_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mPickerDialogListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;->setPickerDialogListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;)V

    :cond_2
    const-string v1, "move_confirm_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/MoveConfirmDialogFragment;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mMoveConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->setConfirmDialogResultListener(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;)V

    :cond_3
    const-string v1, "change_color_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mColorConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->setColorConfirmDialogResultListener(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;)V

    :cond_4
    return-void
.end method

.method public showAddFolderDialog(Ljava/lang/String;II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAddFolderDialog #parentUuid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getDepth()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$string;->add_subfolder_max_toast:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "addFolder:///"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    const/4 v0, 0x3

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFoldersDisplayName(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;

    invoke-direct {v2, p1, v0, v1, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;-><init>(Ljava/lang/String;ILjava/util/List;I)V

    invoke-virtual {v2, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchorViewId(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setEditDialogResultListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "folder_name_dialog"

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showChangeColorDialog(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "DialogManager"

    const-string v1, "showChangeColorDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result v0

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;-><init>(Ljava/util/ArrayList;I)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;

    const/4 v0, -0x1

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;-><init>(Ljava/util/ArrayList;I)V

    :goto_0
    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchorViewId(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mColorConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ChangeColorDialogFragment;->setColorConfirmDialogResultListener(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "change_color_dialog"

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showDeleteFolderDialog(II)V
    .locals 9

    const-string v0, "DialogManager"

    const-string v1, "showDeleteFolderDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_move_to_trash_n_folder_dialog_msg:I

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->move_to_trash_btn:I

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$string;->cancel_btn:I

    const/4 v3, 0x0

    const/4 v8, 0x1

    move-object v2, v0

    move v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;-><init>(IIIIIZ)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchorViewId(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->setConfirmDialogResultListener(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "delete_confirm_dialog"

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showDeleteFolderDialog(Ljava/lang/String;I)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDeleteFolderDialog #folderUuid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_move_to_trash_n_folder_dialog_msg:I

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->move_to_trash_btn:I

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$string;->cancel_btn:I

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;-><init>(IIIIIZ)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchorViewId(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->setSelectedUuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->setConfirmDialogResultListener(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "delete_confirm_dialog"

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showFolderMoveDialog(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "DialogManager"

    const-string v1, "showFolderMoveDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mDialogCreator:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogContract;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mPickerDialogListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogContract;->createFolderPickerDialog(Ljava/util/Map;ZLcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->action_move:I

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;->setAnchorViewId(I)V

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;->setPickerDialogData(Ljava/util/ArrayList;II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "folder_picker_dialog"

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showMoveFolderConfirmDialog(Ljava/lang/String;II)V
    .locals 7

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMemoryForNewMemo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialogFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showMoveFolderConfirmDialog #folderUuid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "move_confirm_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/MoveConfirmDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_my_folders:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_folders_moved:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/MoveConfirmDialogFragment;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->action_move:I

    invoke-direct {v0, p2, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/MoveConfirmDialogFragment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchorViewId(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->setSelectedUuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mMoveConfirmResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ConfirmDialogFragment;->setConfirmDialogResultListener(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/MoveConfirmDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showRenameFolderDialog(Ljava/lang/String;I)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showRenameFolderDialog #folderUuid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getParent()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFoldersDisplayName(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v10

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result v11

    move-object v5, v2

    move-object v7, p1

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)V

    invoke-virtual {v2, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->setAnchorViewId(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mEditDialogResultListener:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setEditDialogResultListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->mFragment:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "folder_name_dialog"

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
