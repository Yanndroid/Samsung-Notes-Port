.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;->updatePendingStateFromHandoff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;->updateStateFromHandoff()V

    return-void
.end method
