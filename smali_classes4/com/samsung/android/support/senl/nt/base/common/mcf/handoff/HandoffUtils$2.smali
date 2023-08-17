.class Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->loadHandoffData(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$LoadHandoffDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

.field public final synthetic val$loadDataCallback:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$LoadHandoffDataCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$LoadHandoffDataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$2;->val$loadDataCallback:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$LoadHandoffDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils$2;->val$loadDataCallback:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$LoadHandoffDataCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$LoadHandoffDataCallback;->onResult(Landroid/os/Bundle;)V

    return-void
.end method
