.class Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getNoteLockRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->find(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->f(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mView:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;->verifyForDelete()V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->g(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;)V

    :goto_1
    return-void
.end method
