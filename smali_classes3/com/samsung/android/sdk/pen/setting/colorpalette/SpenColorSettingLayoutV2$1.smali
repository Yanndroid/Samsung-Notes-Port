.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItemChanged(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;->onSelectItemChanged(IZ)V

    :cond_0
    return-void
.end method

.method public onSelectItemUnchanged(ILcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;->onSelectItemUnchanged(ILcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingListControl;->notifyItemUnchanged(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener$UnchangedReason;)V

    return-void
.end method
