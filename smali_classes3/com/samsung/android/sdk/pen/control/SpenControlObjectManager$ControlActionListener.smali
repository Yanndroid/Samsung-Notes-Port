.class public interface abstract Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$ControlActionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ControlActionListener"
.end annotation


# virtual methods
.method public abstract isFloatingViewShown()Z
.end method

.method public abstract onRequestCoordinateInfo(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager$CoordinateInfo;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
.end method

.method public abstract onRequestMoveIntoScreen(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
.end method

.method public abstract onRequestSelectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
.end method
