.class Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlignFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBrushMoveAlign(I)Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlign;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlignNull;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlignNull;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlignTop;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlignTop;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlignStart;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlignStart;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlignEnd;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveAlignEnd;-><init>()V

    return-object p0
.end method
