.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->isShowing()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/ITitleEditorLayout;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/ITitleEditorLayout;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/ITitleEditorLayout;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/ITitleEditorLayout;->hideAfterToolbarSetTitle()V

    :cond_1
    :goto_0
    return v0
.end method
