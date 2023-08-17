.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->cancel()V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->i()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->h()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->show(Landroid/view/View;)V

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->TAG:Ljava/lang/String;

    const-string v1, "IntroVI done"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
