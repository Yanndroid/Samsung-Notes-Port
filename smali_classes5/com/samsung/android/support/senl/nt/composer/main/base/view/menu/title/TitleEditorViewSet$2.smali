.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;-><init>(Landroidx/fragment/app/Fragment;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$Contract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

.field public final synthetic val$contract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$Contract;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$2;->val$contract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$Contract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Landroidx/appcompat/app/AppCompatActivity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$2;->val$contract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$Contract;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    return-object v0
.end method

.method public getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$2;->val$contract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    return-object v0
.end method
