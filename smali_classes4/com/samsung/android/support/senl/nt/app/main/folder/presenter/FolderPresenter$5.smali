.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;
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
        "Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->f(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v3, v2, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->mFolderModel:Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogContract;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;)V

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogContract;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$IPresenter;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$5;->build()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;

    move-result-object v0

    return-object v0
.end method
