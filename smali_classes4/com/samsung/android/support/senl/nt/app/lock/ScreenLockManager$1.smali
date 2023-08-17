.class Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;->onActivityStopped(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;->a(Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$State;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$State;->a(Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;->b(Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$State;->c(Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$State;Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityStopped, activity went to background"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/ScreenLockUtil;->coverWindow(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method
