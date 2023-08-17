.class Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;->f(Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;

.field public final synthetic val$execute:Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$b;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$9;->this$0:Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$9;->val$execute:Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "CoeditShareOldServiceController"

    const-string v0, "onServiceConnected()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$9;->val$execute:Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$b;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService$LocalBinder;

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService$LocalBinder;->getService()Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$9;->val$execute:Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$b;

    invoke-interface {v0, p2}, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$b;->a(Lcom/samsung/android/app/notes/sync/coedit/service/CoeditShareOldService;)V

    const-string/jumbo p2, "unbindService"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController$9;->this$0:Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;->e(Lcom/samsung/android/app/notes/sync/coedit/controllers/CoeditShareOldServiceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "CoeditShareOldServiceController"

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
