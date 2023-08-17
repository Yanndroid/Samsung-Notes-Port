.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IColorConfirmDialogResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Ljava/util/ArrayList;I)V
    .locals 3
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setDisplayNameColor(I)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mColorConfirmResultListener# : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$IPresenter;->onTaskFinished()V

    return-void
.end method
