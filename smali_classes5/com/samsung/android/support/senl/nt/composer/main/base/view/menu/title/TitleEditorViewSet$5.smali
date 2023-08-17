.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->attachNaviUpButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$Contract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$Contract;->hide()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$Contract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "401"

    const-string v0, "3416"

    const-string v1, "0"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
