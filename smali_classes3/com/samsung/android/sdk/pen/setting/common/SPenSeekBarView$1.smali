.class Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$400(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_slider:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)I

    move-result v5

    const/4 v6, -0x1

    const-string v7, ","

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)I

    move-result v5

    const/4 v6, -0x3

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)I

    move-result v5

    if-ne v5, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)I

    move-result v5

    if-nez v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v5, v5, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_transparency:I

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v5, v5, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_thickness:I

    :goto_1
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$500(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$600(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$700(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p3, v3}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$702(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Z)Z

    :cond_5
    :goto_2
    move p3, v0

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$800(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$900(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;->onProgressChanged(Landroid/widget/SeekBar;IZI)V

    if-eqz p3, :cond_8

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$800(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$900(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object p3, p3, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    invoke-interface {p1, v0, p3}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;->onUpdate(ZI)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object p3, p3, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    invoke-interface {p1, v3, p3}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;->onUpdate(ZI)V

    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    int-to-float p2, p2

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p2, p3

    const/high16 p3, 0x42c60000    # 99.0f

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$1002(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;I)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$1000(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    const/high16 p2, -0x1000000

    and-int/2addr p1, p2

    const p2, 0xf46a4e

    or-int/2addr p1, p2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$1100(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)I

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->setColor(I)V

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$1200(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;->onStartTrackingTouch(Landroid/widget/SeekBar;I)V

    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;->onStopTrackingTouch(Landroid/widget/SeekBar;I)V

    :cond_2
    return-void
.end method
