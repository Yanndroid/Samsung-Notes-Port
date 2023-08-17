.class Lcom/google/android/play/core/appupdate/m;
.super Lcom/google/android/play/core/internal/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/play/core/internal/o;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/play/core/internal/af;

.field public final b:Lcom/google/android/play/core/tasks/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/google/android/play/core/appupdate/p;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/p;Lcom/google/android/play/core/internal/af;Lcom/google/android/play/core/tasks/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/af;",
            "Lcom/google/android/play/core/tasks/i<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/m;->c:Lcom/google/android/play/core/appupdate/p;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/o;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/m;->a:Lcom/google/android/play/core/internal/af;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/m;->b:Lcom/google/android/play/core/tasks/i;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/m;->c:Lcom/google/android/play/core/appupdate/p;

    iget-object p1, p1, Lcom/google/android/play/core/appupdate/p;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {p1}, Lcom/google/android/play/core/internal/ap;->a()V

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/m;->a:Lcom/google/android/play/core/internal/af;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onRequestInfo"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/m;->c:Lcom/google/android/play/core/appupdate/p;

    iget-object p1, p1, Lcom/google/android/play/core/appupdate/p;->a:Lcom/google/android/play/core/internal/ap;

    invoke-virtual {p1}, Lcom/google/android/play/core/internal/ap;->a()V

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/m;->a:Lcom/google/android/play/core/internal/af;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onCompleteUpdate"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
