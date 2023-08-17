.class public final Lcom/google/android/play/core/splitinstall/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/cn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/cn<",
        "Lcom/google/android/play/core/splitinstall/t;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/y;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/ab;->a:Lcom/google/android/play/core/splitinstall/y;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/ab;->a:Lcom/google/android/play/core/splitinstall/y;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/y;->a()Lcom/google/android/play/core/splitinstall/t;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/internal/bq;->b(Ljava/lang/Object;)V

    return-object v0
.end method
