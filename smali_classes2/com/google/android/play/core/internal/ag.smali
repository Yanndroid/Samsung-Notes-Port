.class public abstract Lcom/google/android/play/core/internal/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/tasks/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/i<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/internal/ag;->a:Lcom/google/android/play/core/tasks/i;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/tasks/i;)V
    .locals 0
    .param p1    # Lcom/google/android/play/core/tasks/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/i<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/ag;->a:Lcom/google/android/play/core/tasks/i;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()Lcom/google/android/play/core/tasks/i;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/i<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/internal/ag;->a:Lcom/google/android/play/core/tasks/i;

    return-object v0
.end method

.method public final run()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/ag;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/play/core/internal/ag;->a:Lcom/google/android/play/core/tasks/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/play/core/tasks/i;->b(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
