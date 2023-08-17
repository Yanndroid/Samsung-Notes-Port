.class public interface abstract Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getSelectedPenPosition()I
.end method

.method public abstract setActionListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;)V
.end method

.method public abstract setPenInfo(Ljava/lang/String;IIFZ)Z
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

.method public abstract setUnselectedPen()V
.end method
