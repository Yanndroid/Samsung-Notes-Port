.class final Lcom/google/android/play/core/internal/am;
.super Lcom/google/android/play/core/internal/ag;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/os/IBinder;

.field public final synthetic b:Lcom/google/android/play/core/internal/ao;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/ao;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/am;->b:Lcom/google/android/play/core/internal/ao;

    iput-object p2, p0, Lcom/google/android/play/core/internal/am;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/internal/am;->b:Lcom/google/android/play/core/internal/ao;

    iget-object v0, v0, Lcom/google/android/play/core/internal/ao;->a:Lcom/google/android/play/core/internal/ap;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ap;->e(Lcom/google/android/play/core/internal/ap;)Lcom/google/android/play/core/internal/al;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/internal/am;->a:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/internal/al;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/ap;->a(Lcom/google/android/play/core/internal/ap;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/am;->b:Lcom/google/android/play/core/internal/ao;

    iget-object v0, v0, Lcom/google/android/play/core/internal/ao;->a:Lcom/google/android/play/core/internal/ap;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ap;->f(Lcom/google/android/play/core/internal/ap;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/am;->b:Lcom/google/android/play/core/internal/ao;

    iget-object v0, v0, Lcom/google/android/play/core/internal/ao;->a:Lcom/google/android/play/core/internal/ap;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ap;->j(Lcom/google/android/play/core/internal/ap;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/am;->b:Lcom/google/android/play/core/internal/ao;

    iget-object v0, v0, Lcom/google/android/play/core/internal/ao;->a:Lcom/google/android/play/core/internal/ap;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ap;->g(Lcom/google/android/play/core/internal/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/am;->b:Lcom/google/android/play/core/internal/ao;

    iget-object v0, v0, Lcom/google/android/play/core/internal/ao;->a:Lcom/google/android/play/core/internal/ap;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ap;->g(Lcom/google/android/play/core/internal/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
