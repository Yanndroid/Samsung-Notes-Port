.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/RestoreNote$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->restoreNote(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

.field public final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$Contract;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ServiceContractImpl$Contract;->openDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
