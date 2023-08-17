.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;->checkPermission(Landroid/app/Activity;Landroidx/fragment/app/Fragment;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;

.field public final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field public final synthetic val$requestCode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;Landroidx/fragment/app/Fragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$5;->val$fragment:Landroidx/fragment/app/Fragment;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$5;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$5;->val$fragment:Landroidx/fragment/app/Fragment;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$5;->val$requestCode:I

    const-string v2, "android.permission.READ_PHONE_STATE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    return-void
.end method
