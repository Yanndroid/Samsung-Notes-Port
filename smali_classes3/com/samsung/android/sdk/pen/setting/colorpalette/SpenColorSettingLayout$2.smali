.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->initList(Landroid/content/Context;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItemChanged(IZ)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$IEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->getSelectedList(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemChangeSelected() size="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SpenColorSettingLayout"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$IEventListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$IEventListener;->onChangeSelected(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSelectItemUnchanged(ILcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->notifyItemUnchanged(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$ToastTextNotifyListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$ToastTextNotifyListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->getItemUnchangedMessage(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$ToastTextNotifyListener;->onNotifyToastText(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
