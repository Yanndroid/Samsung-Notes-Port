.class public Lcom/google/android/play/core/splitinstall/SplitInstallManagerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/k;->a(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/m;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/play/core/splitinstall/m;->a()Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object p0

    return-object p0
.end method
