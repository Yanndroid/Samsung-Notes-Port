.class public interface abstract Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub;,
        Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Default;
    }
.end annotation


# virtual methods
.method public abstract internalCommand(Landroid/os/Message;)I
.end method

.method public abstract internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I
.end method
