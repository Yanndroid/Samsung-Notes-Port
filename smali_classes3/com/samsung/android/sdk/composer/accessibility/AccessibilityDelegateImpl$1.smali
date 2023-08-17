.class Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$1;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$1;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$000(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$1;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$000(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;->onAccessibilityStateChanged(Z)V

    :cond_0
    return-void
.end method
