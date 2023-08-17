.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->moveAndReorder(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;

.field public final synthetic val$desEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

.field public final synthetic val$desUuid:Ljava/lang/String;

.field public final synthetic val$srcEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

.field public final synthetic val$srcUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->val$srcUuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->val$desUuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->val$srcEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->val$desEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "ReorderItemController"

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->val$srcUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->val$desUuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->move(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->val$srcEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->val$desEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->val$desUuid:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->val$srcUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->val$desUuid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->val$desEntry:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->reorder(Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_1
    .catch Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runInTransaction reorder# : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runInTransaction move# : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->val$srcUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$2;->val$desUuid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
