.class Lcom/samsung/android/sdk/pen/setting/SpenColorControl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->initColorSpoid(Z)Z
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$700(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$800(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$802(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;Z)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenColorControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenColorControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->access$900(Lcom/samsung/android/sdk/pen/setting/SpenColorControl;)[F

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Lcom/samsung/android/sdk/pen/setting/SpenColorControl;->showEyedropper([FZZ)Z

    :cond_0
    return-void
.end method
