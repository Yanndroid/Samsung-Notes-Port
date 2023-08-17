.class final synthetic Lcom/google/android/play/core/assetpacks/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/aw;

.field private final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/aw;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/av;->a:Lcom/google/android/play/core/assetpacks/aw;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/av;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/av;->a:Lcom/google/android/play/core/assetpacks/aw;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/av;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/aw;->a(Landroid/os/Bundle;)V

    return-void
.end method
