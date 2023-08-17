.class Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$2;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$2;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$000(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$2;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$000(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    move-result-object p1

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$2;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p3}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$100(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)F

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;->onScroll(FF)V

    :cond_0
    return-void
.end method
