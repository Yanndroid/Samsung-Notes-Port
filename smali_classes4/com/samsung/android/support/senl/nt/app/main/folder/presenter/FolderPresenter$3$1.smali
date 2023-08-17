.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->build()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModeIndex()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->g(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getModeIndex()I

    move-result v0

    return v0
.end method

.method public initializeDragAndDrop(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderMoveMap:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->clearDimStatusItems()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->getModeIndex()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    const-string v2, "addFolder:///"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->addDimStatusItem(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->onReplaceCheckedItems()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getCheckedRootItemUuidList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->addDimStatusItem(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isCheckedItem(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->isCheckedItem(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDimItem(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->isDimItem(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setExpandedStatus(ZLjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->setExpandedStatus(ZLjava/lang/String;I)V

    return-void
.end method

.method public setMode(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->g(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->setMode(I)Z

    move-result p1

    return p1
.end method

.method public showBottomNavigation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->g(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getMode()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;->showBottomNavigation()V

    return-void
.end method

.method public showMoveFolderConfirmDialog(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getSelectedItemCount()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->showMoveFolderConfirmDialog(Ljava/lang/String;II)V

    return-void
.end method

.method public toggleCheckBox(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->m(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;Ljava/lang/String;Z)V

    return-void
.end method
