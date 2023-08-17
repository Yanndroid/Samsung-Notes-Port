.class final Lcom/google/android/play/core/internal/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/google/android/play/core/splitinstall/d;

.field public final synthetic c:Lcom/google/android/play/core/internal/as;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/as;Ljava/util/List;Lcom/google/android/play/core/splitinstall/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/ar;->c:Lcom/google/android/play/core/internal/as;

    iput-object p2, p0, Lcom/google/android/play/core/internal/ar;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/internal/ar;->b:Lcom/google/android/play/core/splitinstall/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/ar;->c:Lcom/google/android/play/core/internal/as;

    invoke-static {v0}, Lcom/google/android/play/core/internal/as;->a(Lcom/google/android/play/core/internal/as;)Lcom/google/android/play/core/internal/at;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/internal/ar;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/at;->a(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/internal/ar;->c:Lcom/google/android/play/core/internal/as;

    iget-object v1, p0, Lcom/google/android/play/core/internal/ar;->b:Lcom/google/android/play/core/splitinstall/d;

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/as;->a(Lcom/google/android/play/core/internal/as;Lcom/google/android/play/core/splitinstall/d;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/ar;->c:Lcom/google/android/play/core/internal/as;

    iget-object v1, p0, Lcom/google/android/play/core/internal/ar;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/internal/ar;->b:Lcom/google/android/play/core/splitinstall/d;

    invoke-static {v0, v1, v2}, Lcom/google/android/play/core/internal/as;->a(Lcom/google/android/play/core/internal/as;Ljava/util/List;Lcom/google/android/play/core/splitinstall/d;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SplitCompat"

    const-string v2, "Error checking verified files."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/play/core/internal/ar;->b:Lcom/google/android/play/core/splitinstall/d;

    const/16 v1, -0xb

    invoke-interface {v0, v1}, Lcom/google/android/play/core/splitinstall/d;->a(I)V

    return-void
.end method
