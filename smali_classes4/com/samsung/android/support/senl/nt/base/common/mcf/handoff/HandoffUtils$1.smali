.class Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->updateHandoffInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    const-string v1, "deviceType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->b(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->a(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "Invalid"

    goto :goto_0

    :cond_0
    const-string v0, "Tablet"

    goto :goto_0

    :cond_1
    const-string v0, "Mobile"

    :goto_0
    const-string v1, "lastModificationTime"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->c(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;J)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handoff from ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "Handoff from (no device)"

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHandoffInfo# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HandoffUtils"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
