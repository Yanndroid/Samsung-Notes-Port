.class Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->d(Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncStateUpdateCheck#, hasConverting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConvertTaskManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->b(Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->b(Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->c(Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;Z)V

    :cond_1
    :goto_0
    return-void
.end method
