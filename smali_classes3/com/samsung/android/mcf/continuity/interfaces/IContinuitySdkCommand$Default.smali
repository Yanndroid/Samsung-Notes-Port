.class public Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public internalCommand(Landroid/os/Message;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
