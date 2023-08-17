.class final Lcom/google/android/play/core/appupdate/o;
.super Lcom/google/android/play/core/appupdate/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/play/core/appupdate/m<",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/android/play/core/appupdate/p;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/p;Lcom/google/android/play/core/tasks/i;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/i<",
            "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/o;->d:Lcom/google/android/play/core/appupdate/p;

    new-instance v0, Lcom/google/android/play/core/internal/af;

    const-string v1, "OnRequestInstallCallback"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/af;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/play/core/appupdate/m;-><init>(Lcom/google/android/play/core/appupdate/p;Lcom/google/android/play/core/internal/af;Lcom/google/android/play/core/tasks/i;)V

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/o;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/play/core/appupdate/m;->a(Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/google/android/play/core/appupdate/p;->a(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/m;->b:Lcom/google/android/play/core/tasks/i;

    new-instance v1, Lcom/google/android/play/core/install/InstallException;

    invoke-static {p1}, Lcom/google/android/play/core/appupdate/p;->a(Landroid/os/Bundle;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/i;->b(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/m;->b:Lcom/google/android/play/core/tasks/i;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/o;->d:Lcom/google/android/play/core/appupdate/p;

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/o;->e:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/google/android/play/core/appupdate/p;->a(Lcom/google/android/play/core/appupdate/p;Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/i;->b(Ljava/lang/Object;)V

    return-void
.end method
