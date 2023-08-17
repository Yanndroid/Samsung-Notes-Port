.class public final Lcom/google/android/play/core/assetpacks/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/cn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/cn<",
        "Lcom/google/android/play/core/assetpacks/dj;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/internal/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/assetpacks/bb;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/play/core/internal/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/play/core/internal/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/assetpacks/cp;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/play/core/internal/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cn<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/play/core/internal/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/assetpacks/bz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/cn;Lcom/google/android/play/core/internal/cn;Lcom/google/android/play/core/internal/cn;Lcom/google/android/play/core/internal/cn;Lcom/google/android/play/core/internal/cn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/assetpacks/bb;",
            ">;",
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/assetpacks/w;",
            ">;",
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/assetpacks/cp;",
            ">;",
            "Lcom/google/android/play/core/internal/cn<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/play/core/internal/cn<",
            "Lcom/google/android/play/core/assetpacks/bz;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/dk;->a:Lcom/google/android/play/core/internal/cn;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/dk;->b:Lcom/google/android/play/core/internal/cn;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/dk;->c:Lcom/google/android/play/core/internal/cn;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/dk;->d:Lcom/google/android/play/core/internal/cn;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/dk;->e:Lcom/google/android/play/core/internal/cn;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/dk;->a:Lcom/google/android/play/core/internal/cn;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/cn;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/dk;->b:Lcom/google/android/play/core/internal/cn;

    invoke-static {v1}, Lcom/google/android/play/core/internal/cl;->b(Lcom/google/android/play/core/internal/cn;)Lcom/google/android/play/core/internal/cj;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/dk;->c:Lcom/google/android/play/core/internal/cn;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/cn;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/dk;->d:Lcom/google/android/play/core/internal/cn;

    invoke-static {v2}, Lcom/google/android/play/core/internal/cl;->b(Lcom/google/android/play/core/internal/cn;)Lcom/google/android/play/core/internal/cj;

    move-result-object v6

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/dk;->e:Lcom/google/android/play/core/internal/cn;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/cn;->a()Ljava/lang/Object;

    move-result-object v2

    new-instance v8, Lcom/google/android/play/core/assetpacks/dj;

    move-object v3, v0

    check-cast v3, Lcom/google/android/play/core/assetpacks/bb;

    move-object v5, v1

    check-cast v5, Lcom/google/android/play/core/assetpacks/cp;

    move-object v7, v2

    check-cast v7, Lcom/google/android/play/core/assetpacks/bz;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/play/core/assetpacks/dj;-><init>(Lcom/google/android/play/core/assetpacks/bb;Lcom/google/android/play/core/internal/cj;Lcom/google/android/play/core/assetpacks/cp;Lcom/google/android/play/core/internal/cj;Lcom/google/android/play/core/assetpacks/bz;)V

    return-object v8
.end method
