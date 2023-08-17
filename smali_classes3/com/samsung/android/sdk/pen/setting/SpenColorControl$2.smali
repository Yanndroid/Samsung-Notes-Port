.class Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const-string v0, "SpenColorControl"

    const-string v1, "++++++++++++++++++++= checked !!! onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    move-result-object v1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$202(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->PICKER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    const-string v1, "CURRENT is picker."

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$302(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingPopup;

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->SETTING:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    const-string v1, "CURRENT is setting."

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->NONE:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$102(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;)Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Z

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnSubViewStateChangeListener;->onVisibilityChanged(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;->PICKER:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$SubView;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnActionListener;->onColorPickerClose(Z)V

    :cond_2
    return-void

    :cond_3
    const-string p1, "CURRENT is unknown."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
