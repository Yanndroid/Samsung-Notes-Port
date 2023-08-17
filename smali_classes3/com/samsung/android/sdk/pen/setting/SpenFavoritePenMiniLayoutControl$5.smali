.class Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideAnimationEnd()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->setObjectVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->setAnimationEndListener(Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)I

    move-result v0

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    move-result-object v0

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Landroid/widget/ImageView;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->registerViewForAni([Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$700(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->getHeaderDivider()Landroid/view/View;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$800(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Landroid/widget/ImageView;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Landroid/widget/RelativeLayout;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->registerViewForAni([Landroid/view/View;)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->setObjectVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$5;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->showAnimation()V

    return-void
.end method

.method public onShowAnimationEnd()V
    .locals 0

    return-void
.end method
