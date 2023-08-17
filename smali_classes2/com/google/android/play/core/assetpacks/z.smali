.class final synthetic Lcom/google/android/play/core/assetpacks/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/ar;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/ar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/z;->a:Lcom/google/android/play/core/assetpacks/ar;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/z;->a:Lcom/google/android/play/core/assetpacks/ar;

    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackStates;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/ar;->a()V

    return-void
.end method
