.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->showSoftInput(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->blockToHide(Z)V

    return-void
.end method
