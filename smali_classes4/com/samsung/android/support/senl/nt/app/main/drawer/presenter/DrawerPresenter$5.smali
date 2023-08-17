.class Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$5;
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
        "Ljava/util/List<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$5;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->isRunningAnimator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->h(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->setPostNotifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$RecycleBin;->UUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->indexOfDrawerDisplayData(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateTagDocumentCountMap(I[I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HashTag LiveData onChanged# tagNoteCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tagIndex : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    aget v4, v1, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DrawerPresenter"

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;

    move-result-object v0

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    :cond_2
    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;

    move-result-object v0

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;

    move-result-object v0

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
