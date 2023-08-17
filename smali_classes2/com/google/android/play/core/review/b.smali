.class final Lcom/google/android/play/core/review/b;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/tasks/i;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/play/core/tasks/i;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/play/core/review/b;->a:Lcom/google/android/play/core/tasks/i;

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/play/core/review/b;->a:Lcom/google/android/play/core/tasks/i;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/i;->b(Ljava/lang/Object;)V

    return-void
.end method
