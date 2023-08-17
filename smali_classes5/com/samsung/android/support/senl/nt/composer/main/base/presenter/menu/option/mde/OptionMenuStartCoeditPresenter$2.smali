.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;->addToSharedNotebook(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;

.field public final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/mde/OptionMenuStartCoeditPresenter;Landroid/app/Activity;)V

    return-void
.end method
