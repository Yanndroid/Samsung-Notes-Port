.class public final Lcom/google/android/play/core/splitinstall/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/cn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/cn<",
        "Lcom/google/android/play/core/splitinstall/p;",
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


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/cn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/cn<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/q;->a:Lcom/google/android/play/core/internal/cn;

    return-void
.end method

.method public static a(Lcom/google/android/play/core/internal/cn;)Lcom/google/android/play/core/splitinstall/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/cn<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/google/android/play/core/splitinstall/q;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/splitinstall/q;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/splitinstall/q;-><init>(Lcom/google/android/play/core/internal/cn;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/q;->a:Lcom/google/android/play/core/internal/cn;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/cn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/google/android/play/core/splitinstall/p;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/splitinstall/p;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
