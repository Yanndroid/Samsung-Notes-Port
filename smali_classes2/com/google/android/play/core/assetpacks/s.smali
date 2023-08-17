.class public final Lcom/google/android/play/core/assetpacks/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/cn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/cn<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/n;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/s;->a:Lcom/google/android/play/core/assetpacks/n;

    return-void
.end method

.method public static a(Lcom/google/android/play/core/assetpacks/n;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/n;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/play/core/internal/bq;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/s;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/s;->a:Lcom/google/android/play/core/assetpacks/n;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/s;->a(Lcom/google/android/play/core/assetpacks/n;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
