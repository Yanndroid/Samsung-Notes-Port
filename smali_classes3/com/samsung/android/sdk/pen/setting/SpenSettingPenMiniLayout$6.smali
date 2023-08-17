.class Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnViewModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewModeChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewModeChanged() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnViewModeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnViewModeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnViewModeChangedListener;->onViewModeChanged(I)V

    :cond_0
    return-void
.end method
