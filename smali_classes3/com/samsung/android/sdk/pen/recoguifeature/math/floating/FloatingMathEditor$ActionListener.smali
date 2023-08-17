.class public interface abstract Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor$ActionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/recoguifeature/math/floating/FloatingMathEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionListener"
.end annotation


# virtual methods
.method public abstract onClose()V
.end method

.method public abstract onConvert(Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCopy(Ljava/lang/String;)V
.end method

.method public abstract onSetting()V
.end method
