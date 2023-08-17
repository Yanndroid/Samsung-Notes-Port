.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressBarCancelListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$OnCancelListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notifyCancel#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$OnCancelListener;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$ProgressBarCancelListenerImpl;Landroid/content/DialogInterface;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController$OnCancelListener;->onCancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V

    return-void
.end method
