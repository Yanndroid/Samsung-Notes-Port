.class Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged() checkedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRadioListLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;)Landroid/widget/RadioGroup$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;)Landroid/widget/RadioGroup$OnCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;I)V

    return-void
.end method
