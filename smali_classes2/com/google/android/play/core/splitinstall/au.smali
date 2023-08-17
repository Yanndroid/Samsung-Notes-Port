.class Lcom/google/android/play/core/splitinstall/au;
.super Lcom/google/android/play/core/internal/bv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/play/core/internal/bv;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/play/core/tasks/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/google/android/play/core/splitinstall/av;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/av;Lcom/google/android/play/core/tasks/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/i<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/au;->b:Lcom/google/android/play/core/splitinstall/av;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/bv;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/au;->a:Lcom/google/android/play/core/tasks/i;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/au;->b:Lcom/google/android/play/core/splitinstall/av;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/av;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/ap;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/av;->c()Lcom/google/android/play/core/internal/af;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onCompleteInstallForAppUpdate"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/au;->b:Lcom/google/android/play/core/splitinstall/av;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/av;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/ap;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/av;->c()Lcom/google/android/play/core/internal/af;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onCompleteInstall(%d)"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 2

    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/au;->b:Lcom/google/android/play/core/splitinstall/av;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/av;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {p2}, Lcom/google/android/play/core/internal/ap;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/av;->c()Lcom/google/android/play/core/internal/af;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onCancelInstall(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/au;->b:Lcom/google/android/play/core/splitinstall/av;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/av;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {p1}, Lcom/google/android/play/core/internal/ap;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/av;->c()Lcom/google/android/play/core/internal/af;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredInstall"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/au;->b:Lcom/google/android/play/core/splitinstall/av;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/av;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {p1}, Lcom/google/android/play/core/internal/ap;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/av;->c()Lcom/google/android/play/core/internal/af;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetSessionStates"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/au;->b:Lcom/google/android/play/core/splitinstall/av;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/av;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/ap;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/av;->c()Lcom/google/android/play/core/internal/af;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onGetSplitsForAppUpdate"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(ILandroid/os/Bundle;)V
    .locals 2

    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/au;->b:Lcom/google/android/play/core/splitinstall/av;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/av;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {p2}, Lcom/google/android/play/core/internal/ap;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/av;->c()Lcom/google/android/play/core/internal/af;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onGetSession(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/au;->b:Lcom/google/android/play/core/splitinstall/av;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/av;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {p1}, Lcom/google/android/play/core/internal/ap;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/av;->c()Lcom/google/android/play/core/internal/af;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredLanguageInstall"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(ILandroid/os/Bundle;)V
    .locals 2

    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/au;->b:Lcom/google/android/play/core/splitinstall/av;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/av;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {p2}, Lcom/google/android/play/core/internal/ap;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/av;->c()Lcom/google/android/play/core/internal/af;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onStartInstall(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/au;->b:Lcom/google/android/play/core/splitinstall/av;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/av;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {p1}, Lcom/google/android/play/core/internal/ap;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/av;->c()Lcom/google/android/play/core/internal/af;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredLanguageUninstall"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/au;->b:Lcom/google/android/play/core/splitinstall/av;

    iget-object p1, p1, Lcom/google/android/play/core/splitinstall/av;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {p1}, Lcom/google/android/play/core/internal/ap;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/av;->c()Lcom/google/android/play/core/internal/af;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDeferredUninstall"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/au;->b:Lcom/google/android/play/core/splitinstall/av;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/av;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/ap;->a()V

    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/google/android/play/core/splitinstall/av;->c()Lcom/google/android/play/core/internal/af;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onError(%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/au;->a:Lcom/google/android/play/core/tasks/i;

    new-instance v1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    invoke-direct {v1, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/i;->b(Ljava/lang/Exception;)V

    return-void
.end method
