.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mColors:[I

.field private mIndex:I

.field private mIsUsed:Z

.field private mNames:[Ljava/lang/String;

.field private mVisibleColors:[I


# direct methods
.method public constructor <init>(I[I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->mIndex:I

    array-length p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->mColors:[I

    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->mVisibleColors:[I

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p3, :cond_0

    array-length p1, p3

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->mNames:[Ljava/lang/String;

    array-length p2, p3

    invoke-static {p3, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->mVisibleColors:[I

    array-length p2, p4

    invoke-static {p4, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->mIsUsed:Z

    return-void
.end method


# virtual methods
.method public getColors()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->mColors:[I

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->mIndex:I

    return v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->mNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleColors()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->mVisibleColors:[I

    return-object v0
.end method

.method public isUsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->mIsUsed:Z

    return v0
.end method

.method public setUsed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->mIsUsed:Z

    return-void
.end method

.method public toggle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->mIsUsed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingItem;->mIsUsed:Z

    return v0
.end method
