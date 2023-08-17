.class public final Lcom/google/android/play/core/splitinstall/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/cn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/cn<",
        "Lcom/google/android/play/core/splitinstall/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/splitinstall/w;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/play/core/internal/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/play/core/internal/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cn<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/cn;Lcom/google/android/play/core/internal/cn;Lcom/google/android/play/core/internal/cn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/splitinstall/w;",
            ">;",
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;",
            ">;",
            "Lcom/google/android/play/core/internal/cn<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/j;->a:Lcom/google/android/play/core/internal/cn;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/j;->b:Lcom/google/android/play/core/internal/cn;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/j;->c:Lcom/google/android/play/core/internal/cn;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/j;->a:Lcom/google/android/play/core/internal/cn;

    invoke-static {v0}, Lcom/google/android/play/core/internal/cl;->b(Lcom/google/android/play/core/internal/cn;)Lcom/google/android/play/core/internal/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/j;->b:Lcom/google/android/play/core/internal/cn;

    invoke-static {v1}, Lcom/google/android/play/core/internal/cl;->b(Lcom/google/android/play/core/internal/cn;)Lcom/google/android/play/core/internal/cj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/j;->c:Lcom/google/android/play/core/internal/cn;

    invoke-static {v2}, Lcom/google/android/play/core/internal/cl;->b(Lcom/google/android/play/core/internal/cn;)Lcom/google/android/play/core/internal/cj;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/splitinstall/i;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/play/core/splitinstall/i;-><init>(Lcom/google/android/play/core/internal/cj;Lcom/google/android/play/core/internal/cj;Lcom/google/android/play/core/internal/cj;)V

    return-object v3
.end method
