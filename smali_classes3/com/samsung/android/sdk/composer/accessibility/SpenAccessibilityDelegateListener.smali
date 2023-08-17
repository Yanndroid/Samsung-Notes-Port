.class public interface abstract Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityDelegateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCursorPos(IIZI)[I
.end method

.method public abstract getNodeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/composer/accessibility/SpenAccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getObjectByNativeId(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method public abstract isNodeInfoFocused(I)Z
.end method

.method public abstract onAccessibilityStateChanged(Z)V
.end method

.method public abstract onClick(I)V
.end method

.method public abstract onMove(F)V
.end method

.method public abstract onPerformContextMenuAction(I)Z
.end method

.method public abstract onScroll(FF)V
.end method
