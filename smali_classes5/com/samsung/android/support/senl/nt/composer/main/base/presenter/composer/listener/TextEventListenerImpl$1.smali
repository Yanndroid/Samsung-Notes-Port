.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;->onExceedTextLimit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;

.field public final synthetic val$length:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl$1;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/common/util/CommonUtils;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_maximum_input:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl$1;->val$length:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/TextEventListenerImpl;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
