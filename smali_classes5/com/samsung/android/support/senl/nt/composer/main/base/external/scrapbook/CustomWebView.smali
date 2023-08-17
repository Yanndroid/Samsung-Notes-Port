.class public Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$OnSingleTapUpListener;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field public mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnSingleTapUpListener:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$OnSingleTapUpListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;)Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$OnSingleTapUpListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;->mOnSingleTapUpListener:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$OnSingleTapUpListener;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->removeAllViews()V

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnSingleTapUpListener(Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$OnSingleTapUpListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;->mOnSingleTapUpListener:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$OnSingleTapUpListener;

    return-void
.end method
