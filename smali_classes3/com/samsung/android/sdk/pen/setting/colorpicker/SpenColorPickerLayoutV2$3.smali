.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$ActionButtonListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$3;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$ActionButtonListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerLayoutV2$ActionButtonListener;->onDoneButtonClick()V

    :cond_0
    return-void
.end method
