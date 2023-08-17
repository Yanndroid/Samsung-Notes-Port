.class final synthetic Lcom/google/android/play/core/assetpacks/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/cp;

.field private final b:Lcom/google/android/play/core/assetpacks/cm;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/cp;Lcom/google/android/play/core/assetpacks/cm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cj;->a:Lcom/google/android/play/core/assetpacks/cp;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/cj;->b:Lcom/google/android/play/core/assetpacks/cm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cj;->a:Lcom/google/android/play/core/assetpacks/cp;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/cj;->b:Lcom/google/android/play/core/assetpacks/cm;

    iget v1, v1, Lcom/google/android/play/core/assetpacks/cm;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/cp;->a(I)V

    return-void
.end method
