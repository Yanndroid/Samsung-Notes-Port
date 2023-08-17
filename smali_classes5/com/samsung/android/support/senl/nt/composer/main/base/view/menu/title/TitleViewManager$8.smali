.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->getTitleViewShowHideAnimator()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewShowHideAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Landroidx/appcompat/app/AppCompatActivity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    return-object v0
.end method

.method public getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    return-object v0
.end method

.method public onHide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$State;->HIDDEN:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$State;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$State;)V

    return-void
.end method

.method public onShow()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$State;->SHOWN:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$State;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$State;)V

    return-void
.end method
