.class public Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSwitch;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenVoiceAssistantAsSwitch"


# instance fields
.field private mCheckable:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/widget/Checkable;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSwitch;->mCheckable:Landroid/widget/Checkable;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSwitch;->mCheckable:Landroid/widget/Checkable;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsSwitch;->mCheckable:Landroid/widget/Checkable;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method
