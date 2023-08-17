.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$4;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->setWebChromeClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->A()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->n(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$State;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$State;->LOAD_WEB:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$State;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->n(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:(function() {try {  var parent = document.getElementsByTagName(\'head\')[0];  var style = document.createElement(\'style\');  style.type = \'text/css\';  style.innerHTML = \'body {min-height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5dc

    goto :goto_0

    :cond_0
    const/16 v1, 0x44c

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "px;}\';  style.innerHTML += \'@page {       margin-top: 0px;       margin-bottom: -1px;       padding: 0px;  }\';  parent.appendChild(style);} catch(e) {}try {  var images = document.getElementsByTagName(\'img\');  if (images != null && images.length > 0) {  for (var i = 0; i < images.length; i++){  images[i].setAttribute(\'loading\', \'eager\');}}} catch( e) {}})()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->loadFinish()V

    :cond_1
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->u(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
