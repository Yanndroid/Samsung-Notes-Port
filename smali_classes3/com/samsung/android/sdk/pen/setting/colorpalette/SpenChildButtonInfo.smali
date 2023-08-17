.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;
    }
.end annotation


# instance fields
.field private mColorInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

.field private mIsSelected:Z

.field private mResourceInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mIsSelected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mColorInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mResourceInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mResourceInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->setRes(II)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->setColorInfo(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->setResInfo(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;)V

    return-void
.end method

.method public constructor <init>([FLjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mColorInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

    const/16 v1, 0xff

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->setColor([FILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColorInfo()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mColorInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

    return-object v0
.end method

.method public getResInfo()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mResourceInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;

    return-object v0
.end method

.method public getType()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mColorInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;->COLOR:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mResourceInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;->RES:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;

    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;->NONE:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo$ButtonType;

    return-object v0
.end method

.method public isColorButton()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mColorInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResButton()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mResourceInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mIsSelected:Z

    return v0
.end method

.method public setColorInfo(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mResourceInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mColorInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mColorInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->getColor()[F

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->getOpacity()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->getColorName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->setColor([FILjava/lang/String;)V

    return-void
.end method

.method public setResInfo(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;)V
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mColorInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mResourceInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mResourceInfo:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->getResourceId()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->getHoverStringId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->setRes(II)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenChildButtonInfo;->mIsSelected:Z

    return-void
.end method
