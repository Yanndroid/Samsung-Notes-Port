.class public interface abstract Lcom/samsung/android/sdk/pen/engine/SpenShapeChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTROL_STATE_NOT_CHANGED:I = 0x2

.field public static final CONTROL_STATE_SELECTED:I = 0x0

.field public static final CONTROL_STATE_UNSELECTED:I = 0x1


# virtual methods
.method public abstract onChanged(Lcom/samsung/android/sdk/pen/SpenSettingShapeInfo;)V
.end method

.method public abstract onTextChanged(Lcom/samsung/android/sdk/pen/SpenSettingTextInfo;I)V
.end method

.method public abstract onTextFocusChanged(Z)V
.end method

.method public abstract onTextMoreButtonDown(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
.end method

.method public abstract onTextSelectionChanged(II)Z
.end method
