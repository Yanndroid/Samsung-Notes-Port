.class final synthetic Lcom/google/android/play/core/assetpacks/cw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/cz;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/cz;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cw;->a:Lcom/google/android/play/core/assetpacks/cz;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/cw;->b:I

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/cw;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/cw;->a:Lcom/google/android/play/core/assetpacks/cz;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/cw;->b:I

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/cw;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/cz;->b(ILjava/lang/String;)V

    return-void
.end method
