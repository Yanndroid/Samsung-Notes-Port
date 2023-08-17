.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->getColorType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-class p1, Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenBaseColorView;Z)V

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method
