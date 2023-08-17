.class final synthetic Lcom/google/android/play/core/assetpacks/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/aw;

.field private final b:Lcom/google/android/play/core/assetpacks/AssetPackState;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/aw;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/at;->a:Lcom/google/android/play/core/assetpacks/aw;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/at;->b:Lcom/google/android/play/core/assetpacks/AssetPackState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/at;->a:Lcom/google/android/play/core/assetpacks/aw;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/at;->b:Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/listener/b;->a(Ljava/lang/Object;)V

    return-void
.end method
