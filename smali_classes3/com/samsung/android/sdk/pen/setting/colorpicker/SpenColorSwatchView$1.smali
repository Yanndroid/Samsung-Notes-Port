.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;

    invoke-static {p1, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorSwatchView;I)V

    :cond_0
    return-void
.end method
