.class public final Lcom/google/android/play/core/splitinstall/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/cn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/cn<",
        "Lcom/google/android/play/core/splitinstall/w;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/splitinstall/av;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/play/core/internal/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/splitinstall/t;",
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

.field private final d:Lcom/google/android/play/core/internal/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/splitinstall/ax;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/cn;Lcom/google/android/play/core/internal/cn;Lcom/google/android/play/core/internal/cn;Lcom/google/android/play/core/internal/cn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/splitinstall/av;",
            ">;",
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/splitinstall/t;",
            ">;",
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/splitinstall/p;",
            ">;",
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/splitinstall/ax;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/x;->a:Lcom/google/android/play/core/internal/cn;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/x;->b:Lcom/google/android/play/core/internal/cn;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/x;->c:Lcom/google/android/play/core/internal/cn;

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/x;->d:Lcom/google/android/play/core/internal/cn;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/x;->a:Lcom/google/android/play/core/internal/cn;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/cn;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/x;->b:Lcom/google/android/play/core/internal/cn;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/cn;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/splitinstall/t;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/x;->c:Lcom/google/android/play/core/internal/cn;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/cn;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/splitinstall/p;

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/x;->d:Lcom/google/android/play/core/internal/cn;

    invoke-interface {v3}, Lcom/google/android/play/core/internal/cn;->a()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/splitinstall/w;

    check-cast v0, Lcom/google/android/play/core/splitinstall/av;

    check-cast v3, Lcom/google/android/play/core/splitinstall/ax;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/play/core/splitinstall/w;-><init>(Lcom/google/android/play/core/splitinstall/av;Lcom/google/android/play/core/splitinstall/t;Lcom/google/android/play/core/splitinstall/p;Lcom/google/android/play/core/splitinstall/ax;)V

    return-object v4
.end method
