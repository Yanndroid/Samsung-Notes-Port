.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/SyncToast;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/IModelToast;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showError(Landroid/content/Context;Lc1/a;)V
    .locals 2

    invoke-virtual {p2}, Lc1/b;->a()I

    move-result p2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string p2, "Unknown error code!"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_cannot_sync_in_wifi_only:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/SyncToast$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/SyncToast$1;-><init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/SyncToast;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/SyncToast$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/SyncToast$2;-><init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/SyncToast;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
