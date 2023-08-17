.class public interface abstract Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;
    }
.end annotation


# virtual methods
.method public abstract getPenCount()I
.end method

.method public abstract getPenView(I)Landroid/view/View;
.end method

.method public abstract getSelectPenIndex()I
.end method

.method public abstract selectPen(I)V
.end method

.method public abstract setOnItemClickListener(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;)V
.end method

.method public abstract setPenList(II)V
.end method

.method public abstract unSelectPen(I)V
.end method
