.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$OnActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$OnActionListener;->onCancel()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$OnActionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$2;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;->access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$OnActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayoutV2$OnActionListener;->OnDone(I)V

    :cond_2
    :goto_0
    return-void
.end method
