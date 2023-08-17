.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;Landroid/widget/PopupWindow;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSetting;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPageSettingPresenter;->showKeyboard()V

    return-void
.end method
