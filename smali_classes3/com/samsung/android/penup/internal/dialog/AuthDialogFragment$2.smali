.class Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    new-instance p1, Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    iget-object p2, p2, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    new-instance p2, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2$1;-><init>(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p2, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$100(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$100(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->requestLayout()V

    iget-object p2, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Landroid/webkit/WebView$WebViewTransport;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return p3
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$200(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Landroid/webkit/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$200(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {p1, p3}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$202(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$202(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.PICK"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "image/jpg"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    const/16 p3, 0x3e8

    invoke-virtual {p2, p1, p3}, Landroid/app/DialogFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method
