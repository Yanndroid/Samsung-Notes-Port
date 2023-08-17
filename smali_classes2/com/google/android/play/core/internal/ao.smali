.class final Lcom/google/android/play/core/internal/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/internal/ap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/internal/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/ao;->a:Lcom/google/android/play/core/internal/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/internal/ao;->a:Lcom/google/android/play/core/internal/ap;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ap;->b(Lcom/google/android/play/core/internal/ap;)Lcom/google/android/play/core/internal/af;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/play/core/internal/ao;->a:Lcom/google/android/play/core/internal/ap;

    new-instance v0, Lcom/google/android/play/core/internal/am;

    invoke-direct {v0, p0, p2}, Lcom/google/android/play/core/internal/am;-><init>(Lcom/google/android/play/core/internal/ao;Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/google/android/play/core/internal/ap;->b(Lcom/google/android/play/core/internal/ap;Lcom/google/android/play/core/internal/ag;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/internal/ao;->a:Lcom/google/android/play/core/internal/ap;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ap;->b(Lcom/google/android/play/core/internal/ap;)Lcom/google/android/play/core/internal/af;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/play/core/internal/ao;->a:Lcom/google/android/play/core/internal/ap;

    new-instance v0, Lcom/google/android/play/core/internal/an;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/internal/an;-><init>(Lcom/google/android/play/core/internal/ao;)V

    invoke-static {p1, v0}, Lcom/google/android/play/core/internal/ap;->b(Lcom/google/android/play/core/internal/ap;Lcom/google/android/play/core/internal/ag;)V

    return-void
.end method
