.class Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->updateTitleButtons(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->access$700(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->scrollContentToPosition(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;->access$700(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenLayout;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
