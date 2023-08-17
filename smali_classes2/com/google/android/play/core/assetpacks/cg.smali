.class final synthetic Lcom/google/android/play/core/assetpacks/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/co;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/cp;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/cp;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cg;->a:Lcom/google/android/play/core/assetpacks/cp;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/cg;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cg;->a:Lcom/google/android/play/core/assetpacks/cp;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/cg;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/cp;->b(I)V

    const/4 v0, 0x0

    return-object v0
.end method
