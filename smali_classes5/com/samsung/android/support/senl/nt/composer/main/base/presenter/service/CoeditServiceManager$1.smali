.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->connect(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->disconnect(Landroid/app/Activity;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceConnection, onServiceConnected()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceConnection, onServiceConnected() CoeditService is unavailable"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;

    check-cast p2, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$LocalBinder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$LocalBinder;->getService()Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;)Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->subscribe(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;->onConnected()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceConnection, onServiceConnected() ConnectionCallback is invalid"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceConnection, onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;)V

    return-void
.end method
