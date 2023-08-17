.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->updateConvertToTextRunning(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;

.field public final synthetic val$isRunning:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$2;->val$isRunning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$2;->val$isRunning:Z

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->onConvertToTextRunning(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl$2;->val$isRunning:Z

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenConvertToTextListenerImpl;Z)V

    return-void
.end method
