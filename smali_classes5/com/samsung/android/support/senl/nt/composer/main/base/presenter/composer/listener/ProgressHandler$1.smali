.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;->onProgressStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ProgressHandler;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object v0

    const/16 v1, 0xfa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->showProgress(II)V

    return-void
.end method
