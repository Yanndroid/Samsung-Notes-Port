.class Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;)Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$OnSingleTapUpListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView;)Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$OnSingleTapUpListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/CustomWebView$OnSingleTapUpListener;->onSingleTapUp()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
