.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$3;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->setWebViewClient(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result p1

    const/16 p2, 0x64

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->r(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->loadFinish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$3;->val$url:Ljava/lang/String;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->A()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedError: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->q(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)I

    move-result p3

    or-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->p(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$3;->val$context:Landroid/content/Context;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$string;->webclip_connect_error:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->A()Ljava/lang/String;

    move-result-object p1

    const-string p2, "System killed the WebView rendering process to reclaim memory. Recreating..."

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->clear()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->q(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;Z)V

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->A()Ljava/lang/String;

    move-result-object p1

    const-string p2, "The WebView rendering process crashed!"

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
