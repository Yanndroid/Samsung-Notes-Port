.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->initListView(Landroid/content/Context;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onItemClick!!!! position="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Items="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "Item is null."

    goto :goto_0

    :cond_0
    const-string p2, "NOT NULL"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenColorSettingListControl"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->isUsed()Z

    move-result p4

    sget-object p5, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;->UNKNOWN:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;)I

    move-result v3

    if-ne v2, v3, :cond_2

    sget-object p5, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;->MAX_VALUE_LIMIT:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;)I

    move-result v2

    if-ne v2, v1, :cond_3

    sget-object p5, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;->MIN_VALUE_LIMIT:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;

    goto :goto_2

    :cond_3
    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-static {p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->toggle()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    :goto_1
    add-int/2addr v0, v2

    invoke-static {p4, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->access$202(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;I)I

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-static {p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->access$400(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListAdapter;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->isUsed()Z

    move-result p4

    move v0, v1

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectedCount="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->access$500(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->access$500(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    move-result-object p1

    if-eqz v0, :cond_6

    invoke-interface {p1, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;->onSelectItemChanged(IZ)V

    goto :goto_3

    :cond_6
    invoke-interface {p1, p3, p5}, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;->onSelectItemUnchanged(ILcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;)V

    :goto_3
    return-void
.end method
