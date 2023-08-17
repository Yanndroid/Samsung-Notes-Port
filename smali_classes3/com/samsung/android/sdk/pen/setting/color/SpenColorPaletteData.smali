.class public Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TABLE_SIZE:I = 0x8


# instance fields
.field public index:I

.field public nameId:I

.field public names:[Ljava/lang/String;

.field public themeValues:[I

.field public valueId:I

.field public values:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->themeValues:[I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;-><init>()V

    iget v0, p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->index:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->index:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->valueId:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->valueId:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->nameId:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->nameId:I

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->themeValues:[I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->themeValues:[I

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
