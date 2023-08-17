.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditDialogDismiss()V
    .locals 0

    return-void
.end method

.method public onEditDialogResult(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEditDialogResult# folderName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dialogType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    move-object v0, p2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFoldersDisplayName(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v8, 0x1

    move-object v5, p3

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->isExistFolderName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->folder_already_in_use:I

    invoke-static {p1, p2, v4}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void

    :cond_2
    const/4 v9, 0x2

    if-ne p1, v2, :cond_3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEditDialogResult# add - folderName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", parentUuid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, p2

    move-object v6, v0

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->insertFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-ne p1, v9, :cond_4

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object p4

    invoke-virtual {p4, p2, v4}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntry(Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEditDialogResult# rename folderName - "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setDisplayName(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)V
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mEditDialogResultListener# : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-ne p1, v9, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager$IPresenter;->onTaskFinished()V

    :cond_5
    return-void
.end method
