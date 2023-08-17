.class public Lcom/samsung/android/sdk/smp/Smp;
.super Lcom/samsung/android/sdk/smp/SmpFeature;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/SmpFeature;-><init>()V

    return-void
.end method

.method public static appUpdated(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->appUpdated(Landroid/content/Context;)V

    return-void
.end method

.method public static bootCompleted(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->bootCompleted(Landroid/content/Context;)V

    return-void
.end method

.method public static clearData(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x3c

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->clearData(Landroid/content/Context;I)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    return-object p0
.end method

.method public static clearData(Landroid/content/Context;I)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->clearData(Landroid/content/Context;I)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    return-object p0
.end method

.method public static feedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "mid"

    invoke-direct {v1, v2, p1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "event"

    invoke-direct {v1, v2, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->feedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getOptIn(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 1

    const/16 v0, 0x3c

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/Smp;->getOptIn(Landroid/content/Context;I)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    return-object p0
.end method

.method public static getOptIn(Landroid/content/Context;I)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->getOptIn(Landroid/content/Context;I)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    return-object p0
.end method

.method public static getPushToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->getPushToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPushToken(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->getPushToken(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V

    return-void
.end method

.method public static getPushType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->getPushType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPushType(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->getPushType(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V

    return-void
.end method

.method public static getSDKVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getSmpSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSmpId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->getSmpID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSmpId(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->getSmpId(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V

    return-void
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserId(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->getUserId(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V

    return-void
.end method

.method public static removeSmpInitResultListener()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity()V

    invoke-static {}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->removeSmpInitResultListener()V

    return-void
.end method

.method public static removeSmpPushResultListener()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity()V

    invoke-static {}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->removeSmpPushResultListener()V

    return-void
.end method

.method public static setOptIn(Landroid/content/Context;ZIZ)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->setOptIn(Landroid/content/Context;ZIZ)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    return-object p0
.end method

.method public static setOptIn(Landroid/content/Context;ZZ)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 1

    const/16 v0, 0x3c

    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/sdk/smp/Smp;->setOptIn(Landroid/content/Context;ZIZ)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    return-object p0
.end method

.method public static setSmpInitResultListener(Lcom/samsung/android/sdk/smp/SmpListeners$SmpInitResultListener;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "SmpInitResultListener"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->setSmpInitResultListener(Lcom/samsung/android/sdk/smp/SmpListeners$SmpInitResultListener;)V

    return-void
.end method

.method public static setSmpPushResultListener(Lcom/samsung/android/sdk/smp/SmpListeners$SmpPushResultListener;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "SmpPushResultListener"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->setSmpPushResultListener(Lcom/samsung/android/sdk/smp/SmpListeners$SmpPushResultListener;)V

    return-void
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/smp/SmpCallback$Success<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/Pair;

    new-instance v1, Landroidx/core/util/Pair;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/ApiValidationCheckUtil;->checkSmpApiValidity([Landroidx/core/util/Pair;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->setUserId(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpCallback$Success;)V

    return-void
.end method
