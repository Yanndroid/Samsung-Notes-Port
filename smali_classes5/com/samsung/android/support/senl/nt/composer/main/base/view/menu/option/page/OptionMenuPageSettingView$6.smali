.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView;->initViewType(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "401"

    const-string v0, "3807"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView$Presenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView$Presenter;->setTwoPage()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuPageSettingView;)V

    return-void
.end method
