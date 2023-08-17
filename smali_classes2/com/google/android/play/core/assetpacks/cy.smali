.class final synthetic Lcom/google/android/play/core/assetpacks/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/cz;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/cz;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cy;->a:Lcom/google/android/play/core/assetpacks/cz;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/cy;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cy;->a:Lcom/google/android/play/core/assetpacks/cz;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cy;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/cz;->a(Landroid/content/Intent;)V

    return-void
.end method
