.class Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$LoadHandoffDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;

.field public final synthetic val$lastModifiedHandoffAction:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;

    iput-wide p2, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$1;->val$lastModifiedHandoffAction:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "HandoffContentObserver"

    if-eqz p1, :cond_1

    const-string v1, "handoffData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->a(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;)Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->a(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;)Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;->receive(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$1;->val$lastModifiedHandoffAction:J

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->b(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;J)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->disableHandoff()V

    goto :goto_0

    :cond_0
    const-string p1, "onChange# handoffData == null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "onChange# result == null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
