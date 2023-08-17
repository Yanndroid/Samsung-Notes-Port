.class Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->initLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

.field public final synthetic val$frameLayout:[Landroid/widget/FrameLayout;

.field public final synthetic val$selectedView:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;[Landroid/widget/ImageView;[Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->val$selectedView:[Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->val$frameLayout:[Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->val$selectedView:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->d(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)I

    move-result v1

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->val$frameLayout:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->d(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->a(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->d(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->e(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->val$selectedView:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->d(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->val$frameLayout:[Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->d(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)I

    move-result v1

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->b(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->selectall_voice_ass_selected:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->a(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->d(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->b(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->c(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$OnColorChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->c(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$OnColorChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->getSelectedColor()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$OnColorChangeListener;->onColorChanged(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->val$selectedView:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;->d(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette;)I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->callOnClick()Z

    return-void
.end method
