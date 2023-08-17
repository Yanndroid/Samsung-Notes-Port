.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->initPopupWindow(Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$ColorPopupViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$ColorPopupViewListener;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/richtext/setting/RtColorPopup$ColorPopupViewListener;->onVisibilityChanged(I)V

    :cond_0
    return-void
.end method
