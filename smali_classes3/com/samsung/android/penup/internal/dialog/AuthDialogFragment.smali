.class public Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;
.super Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:Ljava/lang/String; = "#8bc9dc"

.field private static final GOOGLE_PLAY_APP_URI:Ljava/lang/String; = "market://details?id=com.sec.penup"

.field private static final GOOGLE_PLAY_WEB_URL:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=com.sec.penup"

.field private static final QUERY_KEY_CLIENT_ID:Ljava/lang/String; = "client_id"

.field private static final QUERY_KEY_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field private static final QUERY_KEY_RESPONSE_TYPE:Ljava/lang/String; = "response_type"

.field private static final QUERY_KEY_SCOPE:Ljava/lang/String; = "scope"

.field private static final QUERY_KEY_STATE:Ljava/lang/String; = "state"

.field private static final QUERY_VALUE_TOKEN:Ljava/lang/String; = "token"

.field private static final REQUEST_CODE_PICK_IMAGE:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "AuthDialogFragment"


# instance fields
.field private final OAUTH_ERROR_URL:Ljava/lang/String;

.field private final OAUTH_LOGIN_URL:Ljava/lang/String;

.field private final OAUTH_REDIRECT_URI:Ljava/lang/String;

.field private final OAUTH_URL:Ljava/lang/String;

.field private mAuthRequestUrl:Ljava/lang/StringBuilder;

.field private mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

.field private mCurrentPageUrl:Ljava/lang/String;

.field private mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialogCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mState:Ljava/lang/String;

.field private mViewContainer:Landroid/widget/RelativeLayout;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/penup/internal/Url;->BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->OAUTH_URL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/penup/internal/Url;->BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->OAUTH_LOGIN_URL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/penup/internal/Url;->BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->OAUTH_ERROR_URL:Ljava/lang/String;

    const-string v0, "penup://success"

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->OAUTH_REDIRECT_URI:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mProgressDialogCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->onBackKeyPressed()V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mViewContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Landroid/webkit/ValueCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mCurrentPageUrl:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->OAUTH_LOGIN_URL:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mProgressDialogCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->OAUTH_ERROR_URL:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Lcom/samsung/android/penup/PenupClient$ConnectionCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mState:Ljava/lang/String;

    return-object p0
.end method

.method private createOAuthRequestUrl()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->OAUTH_URL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mAuthRequestUrl:Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mAuthRequestUrl:Ljava/lang/StringBuilder;

    const-string v1, "response_type"

    const-string/jumbo v2, "token"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->addQueryString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mAuthRequestUrl:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    invoke-virtual {v1}, Lcom/samsung/android/penup/PenupClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->addQueryString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mAuthRequestUrl:Ljava/lang/StringBuilder;

    const-string v1, "redirect_uri"

    const-string v2, "penup://success"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->addQueryString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mAuthRequestUrl:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    invoke-virtual {v1}, Lcom/samsung/android/penup/PenupClient;->getScopeList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->createScopeList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->addQueryString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->createState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mState:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mAuthRequestUrl:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->addQueryString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mAuthRequestUrl:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private initDialog()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mWebView:Landroid/webkit/WebView;

    const-string v2, "#8bc9dc"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;

    invoke-direct {v2, p0}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$AuthWebViewClient;-><init>(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$2;-><init>(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mAuthRequestUrl:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mCurrentPageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mViewContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$3;-><init>(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public static newInstance(Lcom/samsung/android/penup/PenupClient;Lcom/samsung/android/penup/PenupClient$ConnectionCallback;)Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->init(Lcom/samsung/android/penup/PenupClient;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->setCallback(Lcom/samsung/android/penup/PenupClient$ConnectionCallback;)V

    return-object v0
.end method

.method private onBackKeyPressed()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mViewContainer:Landroid/widget/RelativeLayout;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mCurrentPageUrl:Ljava/lang/String;

    const-string v1, "The authentication is canceled."

    const/16 v2, 0xbba

    if-eqz v0, :cond_1

    sget-object v3, Lcom/samsung/android/penup/internal/Url;->BASE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/penup/internal/sso/AuthUtil;->sendErrorResult(Lcom/samsung/android/penup/PenupClient$ConnectionCallback;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->dismissAllowingStateLoss()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_0

    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mFilePathCallback:Landroid/webkit/ValueCallback;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->createOAuthRequestUrl()V

    invoke-direct {p0}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->initDialog()V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    new-instance v0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment$1;-><init>(Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->setProgressDialogListener(Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;)V

    return-void
.end method

.method public removeCookie()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public setCallback(Lcom/samsung/android/penup/PenupClient$ConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->mProgressDialogCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
