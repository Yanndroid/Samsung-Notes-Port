.class Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester$1;
.super Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;->copyToSdcard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester$1;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester$1;->onComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester$1;->val$context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success to copy to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester$1;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;->a(Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;)Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester$1;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;->a(Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;)Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester$1;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;->b(Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;)V

    :cond_1
    return-void
.end method
