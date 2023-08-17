.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ShareToast;
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
    .locals 3

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lc1/b;->a()I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/16 v1, 0x10

    if-eq p2, v1, :cond_1

    const/16 v1, 0x1000

    if-eq p2, v1, :cond_1

    const-string p2, "Unknown error code!"

    aput-object p2, v0, v2

    goto :goto_0

    :cond_0
    const-string p2, "Can\'t upload shared notes. Clear some space in Samsung Cloud, then try again"

    aput-object p2, v0, v2

    :cond_1
    :goto_0
    aget-object p2, v0, v2

    invoke-static {p2}, Lorg/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ShareToast$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ShareToast$1;-><init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ShareToast;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public showInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lorg/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ShareToast$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ShareToast$2;-><init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ShareToast;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
