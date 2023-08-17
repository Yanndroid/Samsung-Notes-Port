.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->showLeaveConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickLeave()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
