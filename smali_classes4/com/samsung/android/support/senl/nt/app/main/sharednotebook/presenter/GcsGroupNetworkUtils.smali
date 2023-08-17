.class public Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCoeditNetworkConnection(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;Z)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isWiFiSyncOnlyAndNotWiFiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "GcsGroupNetworkUtils"

    const-string v0, "checkCoeditNetworkConnection# return - wifi only"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->None:Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;

    if-eq p1, p2, :cond_0

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->showGoToSettingsDialog(Ljava/lang/ref/WeakReference;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->checkNetworkConnection(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;Z)Z

    move-result p0

    return p0
.end method

.method public static checkCoeditSessionConnection(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;Z)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->checkCoeditNetworkConnection(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->showUnknownFailToast(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;Z)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static checkNetworkConnection(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;Z)Z
    .locals 1

    invoke-static {p0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p2, :cond_1

    iget p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->standaloneNetworkFail:I

    goto :goto_0

    :cond_1
    iget p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->spaceNetworkFail:I

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->showDisplayMessageToast(Landroid/content/Context;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static showDisplayMessageToast(Landroid/content/Context;I)V
    .locals 0

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->showDisplayMessageToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showDisplayMessageToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static showGoToSettingsDialog(Ljava/lang/ref/WeakReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils$2;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils$2;-><init>(Landroid/app/Activity;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_connect_to_wifi_or_allow_mobile_data:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_go_to_settings:I

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils$3;

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils$3;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showUnknownFailToast(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->standaloneServerFail:I

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants$RequestType;->spaceServerFail:I

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/presenter/GcsGroupNetworkUtils;->showDisplayMessageToast(Landroid/content/Context;I)V

    return-void
.end method
