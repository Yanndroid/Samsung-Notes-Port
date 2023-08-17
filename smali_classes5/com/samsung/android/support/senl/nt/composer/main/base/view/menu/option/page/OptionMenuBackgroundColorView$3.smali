.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->setUntouchableTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p2, v0, :cond_0

    const/16 v0, 0xa0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3e

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;I)V

    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
