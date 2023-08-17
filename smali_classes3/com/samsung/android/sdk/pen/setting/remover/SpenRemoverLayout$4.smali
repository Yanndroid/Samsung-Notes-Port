.class Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mRadioBtnListener OnCheckedChangeListener checkedId ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mDataChangeListener="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NUL"

    goto :goto_0

    :cond_0
    const-string v0, "NOT NULL"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenRemoverBodyLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/samsung/android/spen/R$id;->remover_radio_button_2:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->setCurrentType(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;->onTypeChanged(I)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->access$300(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;Z)V

    return-void
.end method
