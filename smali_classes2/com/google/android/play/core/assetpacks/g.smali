.class final synthetic Lcom/google/android/play/core/assetpacks/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/bb;


# direct methods
.method private constructor <init>(Lcom/google/android/play/core/assetpacks/bb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/g;->a:Lcom/google/android/play/core/assetpacks/bb;

    return-void
.end method

.method public static a(Lcom/google/android/play/core/assetpacks/bb;)Lcom/google/android/play/core/tasks/OnSuccessListener;
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/g;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/assetpacks/g;-><init>(Lcom/google/android/play/core/assetpacks/bb;)V

    return-object v0
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g;->a:Lcom/google/android/play/core/assetpacks/bb;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/bb;->a(Ljava/util/List;)V

    return-void
.end method
