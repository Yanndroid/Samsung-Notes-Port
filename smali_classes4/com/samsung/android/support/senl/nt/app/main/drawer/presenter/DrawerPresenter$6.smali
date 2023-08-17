.class Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->isRunningAnimator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->h(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->setPostNotifyDataSetChanged()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drawer LiveData onChanged# childCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DataUpdateType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->b(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawerPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateDrawerData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->c(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->e(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDrawerDisplayDataList()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_6

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->b(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$RecycleBin;->UUID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->indexOfDrawerDisplayData(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->f(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChanged# delete position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", itemCount : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChanged# rename position : "

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v4

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->setExpandedStatus(Ljava/lang/String;I)V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChanged# add position : "

    goto :goto_0

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->updateNoteViewByDrawerObserver()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->updateDrawerBar()V

    return-void

    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->updateNoteViewByDrawerObserver()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->updateDrawerBar()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$6;->onChanged(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;)V

    return-void
.end method
