.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->initProgressBarDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog onKey# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->isCancelKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$OnCancelListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
