.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->build()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachAddFolderItem()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->g(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getModeIndex()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isNeedAddFolder(I)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->g(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getModeIndex()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->attachAddFolderItem(ZZ)V

    return-void
.end method

.method public getDataUpdateType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)I

    move-result v0

    return v0
.end method

.method public isCheckedItem(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->isCheckedItem(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSkippedDataSetChanged()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->isNeedDataChange()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FolderPresenter"

    const-string v1, "isSkippedDataSetChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->e(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Landroidx/lifecycle/Observer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->f(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->e(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Landroidx/lifecycle/Observer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reattach Observe : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->isNeedDataChange()Z

    move-result v0

    return v0
.end method

.method public setDataUpdateType(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->j(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;I)V

    return-void
.end method

.method public setExpandedStatus(ZLjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->setExpandedStatus(ZLjava/lang/String;I)V

    return-void
.end method

.method public setSelectedUuid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->setSelectedUuid(Ljava/lang/String;)V

    return-void
.end method

.method public setToScrollUuid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->addAnimateItem(Ljava/lang/String;)V

    return-void
.end method
