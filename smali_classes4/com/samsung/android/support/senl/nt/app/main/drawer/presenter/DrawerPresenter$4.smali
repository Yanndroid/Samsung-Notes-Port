.class Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$4;
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
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$4;->onChanged(Ljava/util/Map;)V

    return-void
.end method

.method public onChanged(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->isRunningAnimator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->h(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->setPostNotifyDataSetChanged()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocumentCount LiveData onChanged# countEntryMap : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawerPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->updateAllDocumentCountMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->updateDocumentCountMap(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->updateNoteViewByDrawerObserver()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->updateDrawerBar()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
