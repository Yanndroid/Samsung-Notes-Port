.class Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSizeChanged() size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " type="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->getCurrentType()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SpenRemoverBodyLayout"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->setCurrentSize(F)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->isSupportStrokeEraseSize()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->getCurrentType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;->onSizeChanged(F)V

    :cond_1
    :goto_0
    return-void
.end method
