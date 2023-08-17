.class Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->d(Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setDisplayNameColor(I)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->mModel:Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mColorConfirmDialogResult# : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrawerPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
