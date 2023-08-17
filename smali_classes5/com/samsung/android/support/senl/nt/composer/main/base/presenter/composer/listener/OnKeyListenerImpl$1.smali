.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    if-nez p3, :cond_0

    return p1

    :cond_0
    const/16 v0, 0x71

    if-eq p2, v0, :cond_2

    const/16 v0, 0x72

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p3

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnKeyListenerImpl;Z)V

    :goto_1
    return p1
.end method
