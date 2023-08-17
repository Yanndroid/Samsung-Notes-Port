.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperMultiple;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperMultiple;->getPdfUriList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;Ljava/util/List;)V

    return-void
.end method
