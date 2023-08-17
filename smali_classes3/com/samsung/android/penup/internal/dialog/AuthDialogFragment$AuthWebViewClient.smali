.class public Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthWebViewClient"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$400(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient$2;-><init>(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    invoke-virtual {p1}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->dismissProgressDialog()V

    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$302(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->showProgressDialog(Z)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$400(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$500(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$700(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    move-result-object p1

    const/16 p2, 0xbb9

    const-string p3, "The authentication error occurred."

    invoke-static {p1, p2, p3}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->sendErrorResult(Lcom/samsung/android/penup/PenupClient$ConnectionCallback;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$600(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->parseErrorUrl(Ljava/lang/String;)Lcom/samsung/android/penup/ResponseResult;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$700(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/penup/ResponseResult;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/penup/ResponseResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->sendErrorResult(Lcom/samsung/android/penup/PenupClient$ConnectionCallback;ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_1

    :cond_1
    const-string v1, "penup://success"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$800(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    invoke-static {p2, p1, v0}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->parseRedirectUrl(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/penup/PenupClient;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient$1;-><init>(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->access$700(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    move-result-object p1

    const/16 p2, 0xbb9

    const-string v0, "The authentication error occurred."

    invoke-static {p1, p2, v0}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->sendErrorResult(Lcom/samsung/android/penup/PenupClient$ConnectionCallback;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "https://play.google.com/store/apps/details?id=com.sec.penup"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "market://details?id=com.sec.penup"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p2, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;->this$0:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    iget-object p2, p2, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    return v2
.end method
