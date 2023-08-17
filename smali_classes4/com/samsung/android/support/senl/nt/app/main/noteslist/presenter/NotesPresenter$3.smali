.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->initPresenter(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastOpenedSDocXDataChanged()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getLastOpenedSDocXDataChanged()Z

    move-result v0

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public isUnlockConverting(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUnlockConverting(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onItemLongPressed(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->getViewMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mRecyclerViewHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->setLastCheckedItemView(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->onItemLongPressed(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDragAndDropHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x3e8

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1f4

    :goto_0
    invoke-virtual {v1, p1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->postStartDragAndDrop(Ljava/lang/String;J)V

    return-void
.end method

.method public onTipCardBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->onTipCardBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    return-void
.end method

.method public searchNotesData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mSearchHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->searchNotesData(Ljava/lang/String;)V

    return-void
.end method

.method public searchTagNotesData(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mSearchHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->searchTagNotesData(Ljava/util/Set;)V

    return-void
.end method

.method public setCheckedDimNotes()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setCheckedDimNotes(Landroid/os/Bundle;)V

    return-void
.end method

.method public setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDragAndDropHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    return-void
.end method

.method public setIsScrolling(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->setIsScrolling(Z)Z

    return-void
.end method

.method public setLastOpenedSDocXDataChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->setLastOpenedSDocXDataChanged(Z)V

    return-void
.end method

.method public setPostNotifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mNotesModel:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->postNotifyDataSetChanged()V

    return-void
.end method

.method public showSortTypeDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->showSortTypeDialog()V

    return-void
.end method
