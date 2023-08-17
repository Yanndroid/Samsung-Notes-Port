.class interface abstract Lcom/samsung/android/sdk/pen/setting/SpenBrushMoveStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALIGN_END:I = 0x1

.field public static final ALIGN_START:I = 0x2

.field public static final ALIGN_TOP:I = 0x3

.field public static final FLIP_DIR_LEFT_RIGHT:I = -0x1

.field public static final FLIP_DIR_NONE:I = 0x0

.field public static final FLIP_DIR_UP_DOWN:I = 0x1

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1


# virtual methods
.method public abstract getColorFlip(II)I
.end method

.method public abstract getColorFlipDegree()I
.end method

.method public abstract getColorFlipDir()I
.end method

.method public abstract getPenDegree(III)F
.end method

.method public abstract getRotateDegree()I
.end method

.method public abstract getSelectorDegree(III)F
.end method

.method public abstract getSelectorFlipDegree()I
.end method

.method public abstract getSelectorFlipDir()I
.end method

.method public abstract moveView(Landroid/view/View;Landroid/view/View;II)I
.end method

.method public abstract setColorInfo(III)V
.end method

.method public abstract setRotateDegree(I)V
.end method
