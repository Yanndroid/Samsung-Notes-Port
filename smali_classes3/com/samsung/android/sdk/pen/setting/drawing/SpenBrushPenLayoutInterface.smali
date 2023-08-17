.class public interface abstract Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getPenCount()I
.end method

.method public abstract getSelectedPenPosition()I
.end method

.method public abstract setActionListener(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;)V
.end method

.method public abstract setPenInfo(Ljava/lang/String;I)Z
.end method

.method public abstract setPenLayoutRatio(FF)V
.end method

.method public abstract setPenList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPenList(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRoundedBackground(IIII)V
.end method

.method public abstract setUnselectedPen()V
.end method
