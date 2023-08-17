.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/SaveAsRenameFileDialogPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SaveAsRenameFileDialogPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/SaveAsRenameFileDialogPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;)V

    return-void
.end method


# virtual methods
.method public getExportStorageDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;->mExportStorageDir:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/SaveAsRenameFileDialogPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onAttachView(Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onAttachView(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/SaveAsRenameFileDialogPresenter;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public onDetachView()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onDetachView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/SaveAsRenameFileDialogPresenter;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter$OnClickListener;)V
    .locals 1

    const-string v0, "mShareData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;->mShareData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    const-string v0, "mExportStorageDir"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;->mExportStorageDir:Ljava/lang/String;

    const-string v0, "mExtension"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;->mExtension:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;->mOnClickListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter$OnClickListener;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;->mShareData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    const-string v1, "mShareData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;->mExportStorageDir:Ljava/lang/String;

    const-string v1, "mExportStorageDir"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;->mExtension:Ljava/lang/String;

    const-string v1, "mExtension"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showRenameDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/SaveAsRenameFileDialogPresenter;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;->mShareData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;->mExportStorageDir:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;->mExtension:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter;->mOnClickListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SaveAsRenameDialogPresenter$OnClickListener;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/SaveAsRenameFileDialogFragment;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/SaveAsRenameFileDialogFragment;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/SaveAsRenameFileDialogPresenter;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/SaveAsRenameFileDialogPresenter;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/SaveAsRenameFileDialogPresenter;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/SaveAsRenameFileDialogPresenter;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showRenameDialog# fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/SaveAsRenameFileDialogPresenter;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
