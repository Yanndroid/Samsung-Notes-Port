.class final Lcom/google/android/play/core/appupdate/c;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/tasks/i;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/play/core/tasks/i;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/c;->a:Lcom/google/android/play/core/tasks/i;

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/c;->a:Lcom/google/android/play/core/tasks/i;

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/i;->b(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/c;->a:Lcom/google/android/play/core/tasks/i;

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/c;->a:Lcom/google/android/play/core/tasks/i;

    const/4 p2, -0x1

    goto :goto_0
.end method
