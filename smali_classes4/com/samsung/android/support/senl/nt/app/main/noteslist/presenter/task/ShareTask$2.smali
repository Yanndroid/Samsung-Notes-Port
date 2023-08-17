.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->onCancelled(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public count:I

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;

.field public final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$2;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancelled# sleep count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$2;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$2;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$2;->count:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$2;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->close()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;)V

    :goto_0
    return-void
.end method
