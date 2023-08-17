.class Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpenAccessibilityHandler"
.end annotation


# static fields
.field public static final INVALIDATE_ROOT:I = 0x1

.field public static final SET_FOCUS_INTERVAL:I = 0x2


# instance fields
.field private mFocusId:I

.field private mIsPending:Z

.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->mFocusId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->mIsPending:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->reset()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    iget v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->mFocusId:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$400(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    iget v1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->mFocusId:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$500(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;I)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->reset()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$300(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public invalidateRoot(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setFocusAtInterval(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->mFocusId:I

    iget-boolean p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->mIsPending:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$SpenAccessibilityHandler;->mIsPending:Z

    :cond_0
    return-void
.end method
