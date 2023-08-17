.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler$Construct;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager$IComposerPresenter;)V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;->isDisabled()Z

    move-result v0

    return v0
.end method
