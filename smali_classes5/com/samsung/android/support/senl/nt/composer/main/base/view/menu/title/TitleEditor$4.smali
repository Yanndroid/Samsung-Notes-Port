.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/ITitleEditorLayout;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/ITitleEditorLayout;->isAnimating()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    sub-int/2addr p8, p6

    sub-int/2addr p4, p2

    if-eq p8, p4, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;

    iget-object p3, p3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_title_text_end_margin:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p3, p1

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->onLayoutChanged(I)V

    :cond_1
    return-void
.end method
