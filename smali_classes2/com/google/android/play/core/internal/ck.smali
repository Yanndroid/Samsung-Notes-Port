.class public final Lcom/google/android/play/core/internal/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/cn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/cn<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/play/core/internal/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/cn<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/play/core/internal/cn;Lcom/google/android/play/core/internal/cn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/internal/cn<",
            "TT;>;",
            "Lcom/google/android/play/core/internal/cn<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/play/core/internal/bq;->a(Ljava/lang/Object;)V

    check-cast p0, Lcom/google/android/play/core/internal/ck;

    iget-object v0, p0, Lcom/google/android/play/core/internal/ck;->a:Lcom/google/android/play/core/internal/cn;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/play/core/internal/ck;->a:Lcom/google/android/play/core/internal/cn;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/internal/ck;->a:Lcom/google/android/play/core/internal/cn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/play/core/internal/cn;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
