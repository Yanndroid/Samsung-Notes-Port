.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->doInBackground([Ljava/util/ArrayList;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->mSharableNoteList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)I

    move-result v1

    const/4 v3, 0x1

    invoke-interface {v0, v2, v1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;->executeExportTask(Ljava/util/ArrayList;IZ)V

    return-void
.end method
