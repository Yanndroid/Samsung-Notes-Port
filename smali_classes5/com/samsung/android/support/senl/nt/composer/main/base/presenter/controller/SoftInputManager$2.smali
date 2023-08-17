.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->forceToShow(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

.field public final synthetic val$finalView:Landroid/view/View;

.field public final synthetic val$timeout:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;Landroid/view/View;J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager$2;->val$finalView:Landroid/view/View;

    iput-wide p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager$2;->val$timeout:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceToShow# delay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager$2;->val$finalView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->showSoftInput(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager$2;->val$timeout:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager$2;->val$finalView:Landroid/view/View;

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "forceToShow# mActivity is null or destoried"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
