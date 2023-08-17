.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/print/PdfPrint$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->convertWebToPdf(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$countCall:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->val$countCall:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutCancelled()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->A()Ljava/lang/String;

    move-result-object v0

    const-string v1, "convertWebToPdf Cancelled"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->q(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)I

    move-result v1

    or-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->p(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->val$context:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->webclip_connect_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method

.method public onLayoutFailed(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->A()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertWebToPdf Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->val$countCall:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->A()Ljava/lang/String;

    move-result-object p1

    const-string v1, "convertWebToPdf try to convert again"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->val$countCall:I

    add-int/2addr v2, v0

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->z(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->q(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->p(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->val$context:Landroid/content/Context;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->webclip_connect_error:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method

.method public onWriteFinished(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->n(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->s(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->o(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->v(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->val$context:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->dark_mode_not_applied_has_pdf_toast_msg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->A()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertWebToPdf end: time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms | path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
