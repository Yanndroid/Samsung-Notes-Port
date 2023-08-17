.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;-><init>(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    const-string v2, "penInsert"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "isBoot"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_PEN_INSERT :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_2

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/SpenInsertDetector;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
