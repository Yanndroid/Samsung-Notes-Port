.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->getStartIntroRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->isInvalidState()Z

    move-result p0

    return p0
.end method

.method private isInvalidState()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$Contract;->isReleased()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInvalidState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->isInvalidState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->cancel()V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->TAG:Ljava/lang/String;

    const-string v1, "IntroVI Running"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$Contract;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$Contract;->doDockingByDirection(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$1;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
