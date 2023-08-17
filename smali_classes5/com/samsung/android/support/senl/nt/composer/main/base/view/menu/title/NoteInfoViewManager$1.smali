.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;->updateCreator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager$Contract;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->getCreatorText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
