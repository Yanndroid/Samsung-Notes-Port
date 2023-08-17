.class Lcom/samsung/android/support/senl/nt/base/common/SViewManager$1;
.super Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->enableScoverManager(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/SViewManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/SViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverSwitchStateChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;->onCoverSwitchStateChanged(Z)V

    const-string v0, "SViewManager"

    if-eqz p1, :cond_0

    const-string p1, "enableScoverManager] cover open"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;->OPENED:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->a(Lcom/samsung/android/support/senl/nt/base/common/SViewManager;Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "enableScoverManager] cover close"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;->CLOSED:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->a(Lcom/samsung/android/support/senl/nt/base/common/SViewManager;Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->b(Lcom/samsung/android/support/senl/nt/base/common/SViewManager;Z)V

    return-void
.end method
