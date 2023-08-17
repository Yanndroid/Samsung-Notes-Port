.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "DragAndDropHelper"

    const-string v1, "DragAndDropRunnable run"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->k(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getDragAndDropUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getDragAndDropUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->startDragAndDrop(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;->isLongPressMoved()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$IPresenter;->endPressed()V

    :cond_1
    :goto_0
    return-void
.end method
