.class Lcom/samsung/android/sdk/pen/setting/SpenColorControl$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenColorControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$9;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItemChanged(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$9;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$1800(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$9;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$1800(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;->onSelectItemChanged(IZ)V

    :cond_0
    return-void
.end method

.method public onSelectItemUnchanged(ILcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$9;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$1800(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$9;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$1800(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;->onSelectItemUnchanged(ILcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$9;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$1900(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;->MAX_VALUE_LIMIT:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$9;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$2000(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;->getMaxSelectCount()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$9;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$1900(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$9;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$1900(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$plurals;->plurals_count_show_colors:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;->MIN_VALUE_LIMIT:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$9;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$1900(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$9;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$1900(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_setting_select_at_least_one:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
