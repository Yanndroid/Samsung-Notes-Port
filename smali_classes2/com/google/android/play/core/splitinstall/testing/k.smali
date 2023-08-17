.class public final Lcom/google/android/play/core/splitinstall/testing/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/cn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/cn<",
        "Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cn<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/play/core/internal/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cn<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/play/core/internal/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/splitinstall/p;",
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
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/play/core/internal/cn<",
            "Ljava/io/File;",
            ">;",
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/splitinstall/p;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/k;->a:Lcom/google/android/play/core/internal/cn;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/testing/k;->b:Lcom/google/android/play/core/internal/cn;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/testing/k;->c:Lcom/google/android/play/core/internal/cn;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/k;->a:Lcom/google/android/play/core/internal/cn;

    check-cast v0, Lcom/google/android/play/core/splitinstall/z;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/z;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/k;->b:Lcom/google/android/play/core/internal/cn;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/cn;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/testing/k;->c:Lcom/google/android/play/core/internal/cn;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/cn;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/splitinstall/p;

    new-instance v3, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/google/android/play/core/splitinstall/p;)V

    return-object v3
.end method
