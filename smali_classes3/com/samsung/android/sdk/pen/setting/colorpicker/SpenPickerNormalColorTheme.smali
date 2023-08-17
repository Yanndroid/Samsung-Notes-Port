.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerNormalColorTheme;
.super Lcom/samsung/android/sdk/pen/util/color/SpenNormalColorTheme;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenIPickerColorTheme;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/util/color/SpenNormalColorTheme;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentColor([F[F)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p1

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
