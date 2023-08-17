.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->initView(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SpenPenOpacityLayout"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;)I

    move-result v0

    invoke-static {p2, v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;II)I

    move-result v0

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->access$300(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface$OnDataChangedListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface$OnDataChangedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface$OnDataChangedListener;->onAlphaChanged(I)V

    :cond_0
    return-void
.end method
