.class final synthetic Lcom/google/android/play/core/assetpacks/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/j;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/f;->a:Lcom/google/android/play/core/assetpacks/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/f;->a:Lcom/google/android/play/core/assetpacks/j;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/j;->a()V

    return-void
.end method
