.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->setProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;

.field public final synthetic val$progress:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$2;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress#post# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$2;->val$progress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar$2;->val$progress:I

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/progress/ComposerProgressBar;I)V

    return-void
.end method
