.class Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->initView(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ZI)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnButtonClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnButtonClickListener;->onCloseButtonClick()V

    :cond_0
    return-void
.end method
