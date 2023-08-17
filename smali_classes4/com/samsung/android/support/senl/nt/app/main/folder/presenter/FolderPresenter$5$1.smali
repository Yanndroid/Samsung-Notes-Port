.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->build()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackKeyDown()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->g(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getMode()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;->onBackKeyDown()Z

    return-void
.end method

.method public onColorConfirm(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->j(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->changeColorData(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public onDeleteConfirm(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->j(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->setToBeDeletedUuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->l(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getNoteLockRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->find(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->h(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->f(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;->verifyForDelete(Landroid/app/Activity;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->k(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onEditDialogResult(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEditDialogResult# folderName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dialogType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", markColor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v2, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getParentUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p2

    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFoldersDisplayName(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v5, v4, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->f(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p3, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->isExistFolderName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->f(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->folder_already_in_use:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->j(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v2, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->setSelectedUuid(Ljava/lang/String;)V

    if-eq p1, v1, :cond_4

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->renameFolderData(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->f(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->addFolderData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->setNewUuid(Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->g(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getMode()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;->onBackKeyDown()Z

    return-void
.end method

.method public onMoveConfirm(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->setSelectedUuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->j(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getCheckedRootItemUuidList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->moveFolderData(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->f(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->f(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->add_subfolder_max_toast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onPickConfirm(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->setSelectedUuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->j(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;I)V

    return-void
.end method
