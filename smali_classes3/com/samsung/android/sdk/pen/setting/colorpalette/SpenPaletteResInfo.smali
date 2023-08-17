.class public Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHoverStringId:I

.field private mResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->setRes(II)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->getResourceId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->getHoverStringId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->setRes(II)V

    return-void
.end method


# virtual methods
.method public getHoverStringId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->mHoverStringId:I

    return v0
.end method

.method public getResourceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->mResId:I

    return v0
.end method

.method public setRes(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->mResId:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteResInfo;->mHoverStringId:I

    return-void
.end method
