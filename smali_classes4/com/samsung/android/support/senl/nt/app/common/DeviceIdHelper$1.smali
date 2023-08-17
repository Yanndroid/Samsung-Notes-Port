.class Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "StubManager$DeviceIdHelper"

    const-string v0, "bindDeviceIdService onServiceConnected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->d(Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;Z)V

    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/deviceidservice/IDeviceIdService;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/deviceidservice/IDeviceIdService;->getOAID()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected: oaid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->e(Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->a(Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;)Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$OnDeviceIdListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->a(Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;)Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$OnDeviceIdListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$OnDeviceIdListener;->success()V

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->c(Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->b(Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected: error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;->d(Lcom/samsung/android/support/senl/nt/app/common/DeviceIdHelper;Z)V

    return-void
.end method
