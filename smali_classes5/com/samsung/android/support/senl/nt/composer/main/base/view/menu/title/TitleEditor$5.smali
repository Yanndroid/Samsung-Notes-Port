.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isEditable()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isOverlapping()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->show()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "401"

    const-string v0, "3416"

    const-string v1, "1"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isTitleTextEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "a"

    goto :goto_0

    :cond_1
    const-string p1, "b"

    :goto_0
    const-string v0, "301"

    const-string v1, "3400"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isCoeditNote()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "683"

    goto :goto_2

    :cond_2
    const-string p1, "682"

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isStandAlone()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "7572"

    goto :goto_3

    :cond_3
    const-string v0, "7571"

    :goto_3
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
