.class Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALIGN_BOTTOM:I = 0x0

.field public static final ALIGN_END:I = 0x1

.field public static final ALIGN_START:I = 0x2

.field public static final ALIGN_TOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SpenBrushGuideControl"


# instance fields
.field private mColorGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

.field private mContext:Landroid/content/Context;

.field private mGuideBgColor:I

.field private mGuideBgRadius:I

.field private mMarginGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

.field private mOrientation:I

.field private mPenGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

.field public mViewParent:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mGuideBgColor:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mGuideBgRadius:I

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    sget-object p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory$ConfigType;->MARGIN:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory$ConfigType;

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory;->createBrushGuideConfig(Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory$ConfigType;IF)Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mMarginGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    sget-object p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory$ConfigType;->PEN:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory$ConfigType;

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory;->createBrushGuideConfig(Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory$ConfigType;IF)Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mPenGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    sget-object p2, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory$ConfigType;->COLOR:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory$ConfigType;

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory;->createBrushGuideConfig(Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfigFactory$ConfigType;IF)Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mColorGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    return-void
.end method


# virtual methods
.method public adjustGuide(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGuideLayout() penAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "colorAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushGuideControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mPenGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->setGuideVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mColorGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->setGuideVisibility(I)V

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mMarginGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mMarginGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mPenGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mPenGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mColorGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mColorGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getAlign(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mPenGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->getAlignment(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mColorGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->getAlignment(I)I

    move-result p1

    return p1
.end method

.method public getColorGuideView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mColorGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->getGuideView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mOrientation:I

    return v0
.end method

.method public getPenGuideView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mPenGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->getGuideView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public makeGuide(Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeGuide() orientation ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushGuideControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mViewParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mMarginGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->makeGuide(Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mPenGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mViewParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mOrientation:I

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->makeGuide(Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mColorGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mViewParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mOrientation:I

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->makeGuide(Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    return-void
.end method

.method public setAllChildBgVisibility(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAllChildBgVisibility() isShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushGuideControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mPenGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->hideGuideBackground()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mColorGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->hideGuideBackground()V

    return-void

    :cond_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mGuideBgColor:I

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mPenGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mGuideBgRadius:I

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->showGuideBackground(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mColorGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mGuideBgRadius:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mGuideBgColor:I

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->showGuideBackground(II)V

    return-void
.end method

.method public setColorViewParam(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mColorGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->updateParam(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;II)V

    return-void
.end method

.method public setGuideRoundedBackground(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGuideRoundBackground() radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bgColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushGuideControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mGuideBgRadius:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mGuideBgColor:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOrientation() orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushGuideControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mOrientation:I

    if-ne v0, p1, :cond_0

    const-string p1, "== Same Orientation"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mMarginGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->updateGuideRatio(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mPenGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->updateGuideRatio(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mColorGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->updateGuideRatio(I)V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mOrientation:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPenViewParam(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mPenGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->updateParam(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;II)V

    return-void
.end method

.method public setTag()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mPenGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->setTag()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mColorGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->setTag()V

    return-void
.end method

.method public setViewInfo(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mPenGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->setSize(FF)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mColorGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->setSize(FF)V

    return-void
.end method

.method public updateColorViewRatio(Landroid/view/View;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateColorViewRatio() orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushGuideControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mColorGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->updateViewRatio(Landroid/view/View;II)V

    return-void
.end method

.method public updatePenViewRatio(Landroid/view/View;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePenViewRatio() orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushGuideControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->mPenGuideConfig:Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideConfig;->updateViewRatio(Landroid/view/View;II)V

    return-void
.end method
