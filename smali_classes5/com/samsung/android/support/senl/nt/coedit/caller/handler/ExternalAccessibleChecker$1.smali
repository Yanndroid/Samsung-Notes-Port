.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker$1;
.super Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker;->requestExternalAccessibleNotes(Landroid/content/Context;Ljava/util/ArrayList;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalAccessCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalAccessCallback;

.field public final synthetic val$future:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic val$notesUuids:Ljava/util/ArrayList;

.field public final synthetic val$userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalAccessCallback;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker$1;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker$1;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker$1;->val$notesUuids:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker$1;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalAccessCallback;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ExternalAccessibleChecker"

    const-string v0, "requestExternalAccessibleNotes, onNullBinding()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "ExternalAccessibleChecker"

    if-eqz p2, :cond_3

    const-string v0, "requestExternalAccessibleNotes, onServiceConnected()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$LocalBinder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$LocalBinder;->getService()Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker$1;->val$userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->subscribe(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker$1;->val$notesUuids:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditRunning(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker$1;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalAccessCallback;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalAccessCallback;->filtered(Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    const-string p2, "requestExternalAccessibleNotes, onServiceConnected() CoeditService is unavailable"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/ExternalAccessibleChecker$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ExternalAccessibleChecker"

    const-string v0, "requestExternalAccessibleNotes, onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/CoeditServiceConnection;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    return-void
.end method
