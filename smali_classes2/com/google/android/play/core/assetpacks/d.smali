.class final synthetic Lcom/google/android/play/core/assetpacks/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/j;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/play/core/tasks/i;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/j;Ljava/lang/String;Lcom/google/android/play/core/tasks/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/d;->a:Lcom/google/android/play/core/assetpacks/j;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/d;->c:Lcom/google/android/play/core/tasks/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/d;->a:Lcom/google/android/play/core/assetpacks/j;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/d;->c:Lcom/google/android/play/core/tasks/i;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/j;->a(Ljava/lang/String;Lcom/google/android/play/core/tasks/i;)V

    return-void
.end method
