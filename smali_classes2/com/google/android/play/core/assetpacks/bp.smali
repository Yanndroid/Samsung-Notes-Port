.class public final Lcom/google/android/play/core/assetpacks/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/cn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/cn<",
        "Lcom/google/android/play/core/assetpacks/bn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/android/play/core/assetpacks/bn;
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/bn;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/bn;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/play/core/assetpacks/bp;->b()Lcom/google/android/play/core/assetpacks/bn;

    move-result-object v0

    return-object v0
.end method
