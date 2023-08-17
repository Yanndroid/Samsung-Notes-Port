.class public Ll2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Ll2/c;I)V
    .locals 0

    invoke-virtual {p0, p1}, Ll2/c;->c(I)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isNationalDisasterNet()Z

    move-result v0

    const-string v1, "SyncServerNoteInfoHelper"

    if-eqz v0, :cond_0

    const-string v0, "checkValidRequestState() : National disaster net!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1000

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "checkValidRequestState() : Not available data network!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Ll2/c;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;->onFailed(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleErrorResult() : fail to call , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncServerNoteInfoHelper"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;)V
    .locals 2

    const-string v0, "SyncServerNoteInfoHelper"

    const-string v1, "start requestNoteInfo()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ll2/c;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ll2/c;->c(I)V

    return-void

    :cond_0
    iput-object p2, p0, Ll2/c;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    new-instance v1, Ll2/c$a;

    invoke-direct {v1, p0, p2, p1}, Ll2/c$a;-><init>(Ll2/c;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lf/a;->w(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V

    return-void
.end method
