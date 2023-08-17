.class final Lcom/google/android/play/core/splitinstall/ak;
.super Lcom/google/android/play/core/internal/ag;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/tasks/i;

.field public final synthetic b:Lcom/google/android/play/core/splitinstall/av;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/av;Lcom/google/android/play/core/tasks/i;Lcom/google/android/play/core/tasks/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/ak;->b:Lcom/google/android/play/core/splitinstall/av;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/ak;->a:Lcom/google/android/play/core/tasks/i;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/ag;-><init>(Lcom/google/android/play/core/tasks/i;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/ak;->b:Lcom/google/android/play/core/splitinstall/av;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/av;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/ap;->b()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/bu;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/ak;->b:Lcom/google/android/play/core/splitinstall/av;

    invoke-static {v1}, Lcom/google/android/play/core/splitinstall/av;->a(Lcom/google/android/play/core/splitinstall/av;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/play/core/splitinstall/as;

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/ak;->b:Lcom/google/android/play/core/splitinstall/av;

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/ak;->a:Lcom/google/android/play/core/tasks/i;

    invoke-direct {v2, v3, v4}, Lcom/google/android/play/core/splitinstall/as;-><init>(Lcom/google/android/play/core/splitinstall/av;Lcom/google/android/play/core/tasks/i;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/play/core/internal/bu;->a(Ljava/lang/String;Lcom/google/android/play/core/internal/bw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/splitinstall/av;->c()Lcom/google/android/play/core/internal/af;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getSessionStates"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/af;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/ak;->a:Lcom/google/android/play/core/tasks/i;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/i;->b(Ljava/lang/Exception;)V

    return-void
.end method
