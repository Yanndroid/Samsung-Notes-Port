.class Lcom/samsung/android/support/senl/nt/app/sync/cloudsettings/callee/NotesSyncRpcProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/sync/cloudsettings/callee/NotesSyncRpcProvider;->requestSync(Landroid/os/Bundle;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/sync/cloudsettings/callee/NotesSyncRpcProvider;

.field public final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/sync/cloudsettings/callee/NotesSyncRpcProvider;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/cloudsettings/callee/NotesSyncRpcProvider$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/cloudsettings/callee/NotesSyncRpcProvider;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/cloudsettings/callee/NotesSyncRpcProvider$1;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/cloudsettings/callee/NotesSyncRpcProvider$1;->val$extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "force"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/cloudsettings/callee/NotesSyncRpcProvider$1;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0}, Ln2/a;->p()V

    goto :goto_1

    :cond_1
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    const-string v1, "requestSync() : requested by the cloud setting!"

    invoke-virtual {v0, v1}, Ln2/a;->o(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "NotesSyncRpcProvider"

    const-string v1, "requestSync() : fail to requestSync due to the impossible autosync!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
