.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;
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
        "Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->i(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$3;->build()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    move-result-object v0

    return-object v0
.end method
