.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;
.super Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder<",
        "Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;
    .locals 7

    new-instance v6, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->i(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->f(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderAdapter:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;)V

    return-object v6
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$4;->build()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    move-result-object v0

    return-object v0
.end method
