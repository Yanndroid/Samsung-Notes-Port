.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2;->build()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderDeleteVerifySuccess()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->j(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->l(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->k(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;Ljava/util/ArrayList;)V

    return-void
.end method
