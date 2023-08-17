.class Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder$DragDropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->setAllowReorderOutside(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDropped()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->getFloatingView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->removeContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;Z)V

    return-void
.end method

.method public onStartDrag()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->setOrientation(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniOutsideReorder;->getFloatingView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/spen/R$dimen;->mini_favorite_pen_view_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;Z)V

    return-void
.end method
