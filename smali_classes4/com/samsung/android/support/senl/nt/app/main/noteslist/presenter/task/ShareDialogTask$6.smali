.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->taskFinished()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;->removeProgressCircle()V

    :goto_0
    return-void
.end method
