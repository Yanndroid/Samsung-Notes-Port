.class final Lcom/google/android/play/core/internal/ai;
.super Lcom/google/android/play/core/internal/ag;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/internal/ag;

.field public final synthetic b:Lcom/google/android/play/core/internal/ap;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/ap;Lcom/google/android/play/core/tasks/i;Lcom/google/android/play/core/internal/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/ai;->b:Lcom/google/android/play/core/internal/ap;

    iput-object p3, p0, Lcom/google/android/play/core/internal/ai;->a:Lcom/google/android/play/core/internal/ag;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/ag;-><init>(Lcom/google/android/play/core/tasks/i;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/internal/ai;->b:Lcom/google/android/play/core/internal/ap;

    iget-object v1, p0, Lcom/google/android/play/core/internal/ai;->a:Lcom/google/android/play/core/internal/ag;

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/ap;->a(Lcom/google/android/play/core/internal/ap;Lcom/google/android/play/core/internal/ag;)V

    return-void
.end method
