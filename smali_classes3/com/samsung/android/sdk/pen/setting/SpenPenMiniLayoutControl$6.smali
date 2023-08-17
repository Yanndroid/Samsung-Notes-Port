.class Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$6;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$6;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$8;->$SwitchMap$com$samsung$android$sdk$pen$setting$SpenMiniCloseButton$Type:[I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$6;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->getButtonType()Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$6;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnButtonClickListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$6;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnButtonClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnButtonClickListener;->onCloseButtonClicked()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$6;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;I)V

    :cond_3
    :goto_0
    return-void
.end method
