.class Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$3;
.super Lcom/samsung/android/sdk/composer/accessibility/AccessibilityContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$3;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl$3;->this$0:Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;->access$200(Lcom/samsung/android/sdk/composer/accessibility/AccessibilityDelegateImpl;)V

    return-void
.end method
