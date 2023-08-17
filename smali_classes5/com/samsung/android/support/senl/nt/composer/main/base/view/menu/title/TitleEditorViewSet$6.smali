.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->setThemeActionMenuView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

.field public final synthetic val$reversalColor:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$6;->val$reversalColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet$6;->val$reversalColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
