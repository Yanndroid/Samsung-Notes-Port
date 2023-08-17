.class Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->callHandoff(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

.field public final synthetic val$arg:Ljava/lang/String;

.field public final synthetic val$callBack:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;

.field public final synthetic val$extras:Landroid/os/Bundle;

.field public final synthetic val$method:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$3;->this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$3;->val$method:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$3;->val$arg:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$3;->val$extras:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$3;->val$callBack:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.samsung.android.mcfds.HandoffProvider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$3;->val$method:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$3;->val$arg:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$3;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$3;->val$callBack:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;->onResult(Landroid/os/Bundle;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_1
    :try_start_1
    const-string v2, "HandoffUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callHandoff#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$3;->val$method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$3;->val$callBack:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :goto_2
    return-void

    :goto_3
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$3;->val$callBack:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;->onResult(Landroid/os/Bundle;)V

    :cond_1
    throw v1
.end method
